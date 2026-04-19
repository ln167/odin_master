#!/usr/bin/env bash
# odin_master Linux/WSL/macOS bootstrap.
#
#   bash tools/install/install.sh             # full install
#   bash tools/install/install.sh --lite      # skip Ollama models + codelldb
#
# Idempotent: each step probes for the tool and skips if present.

set -euo pipefail

LITE=0
[[ "${1:-}" == "--lite" ]] && LITE=1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
ODIN_VERSION="$(tr -d '[:space:]' < "$REPO_ROOT/.odin-version")"
ODIN_HOME="${ODIN_HOME:-$HOME/odin/dist}"
SRC_HOME="${SRC_HOME:-$HOME/src}"
OLS_PIN="ad1d935"

case "$(uname -s)" in
  Linux*)   PLATFORM="linux-amd64";   PKG="";;
  Darwin*)  PLATFORM="macos-amd64";   PKG="";;
  *) echo "unsupported OS $(uname -s)"; exit 1;;
esac

have() { command -v "$1" >/dev/null 2>&1; }
step() { echo; echo "== $1 =="; }

# 1. system packages -----------------------------------------------------------
step "system packages (ripgrep, fd, git, python3, curl, just)"
if have apt-get; then
  sudo apt-get update -qq
  sudo apt-get install -y -qq ripgrep fd-find git python3 python3-venv curl just || true
elif have dnf; then
  sudo dnf install -y -q ripgrep fd-find git python3 curl just || true
elif have pacman; then
  sudo pacman -S --noconfirm --needed ripgrep fd git python curl just || true
elif have brew; then
  brew install ripgrep fd git python curl just || true
fi

# 2. Rust ----------------------------------------------------------------------
step "Rust stable"
if ! have cargo; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
  source "$HOME/.cargo/env"
fi

# 3. Odin ----------------------------------------------------------------------
step "Odin $ODIN_VERSION"
if [[ ! -x "$ODIN_HOME/odin" ]]; then
  url="https://github.com/odin-lang/Odin/releases/download/$ODIN_VERSION/odin-$PLATFORM-$ODIN_VERSION.tar.gz"
  tmp="$(mktemp -d)"
  curl -fL --retry 3 -o "$tmp/odin.tar.gz" "$url"
  mkdir -p "$(dirname "$ODIN_HOME")"
  tar -xzf "$tmp/odin.tar.gz" -C "$(dirname "$ODIN_HOME")"
fi
export ODIN_ROOT="$ODIN_HOME"
export PATH="$ODIN_HOME:$PATH"

# 4. OLS + odinfmt -------------------------------------------------------------
step "OLS + odinfmt (pinned $OLS_PIN)"
mkdir -p "$SRC_HOME"
if [[ ! -d "$SRC_HOME/ols" ]]; then
  git clone https://github.com/DanielGavin/ols.git "$SRC_HOME/ols"
fi
(
  cd "$SRC_HOME/ols"
  git fetch --depth 200 origin master >/dev/null
  git checkout "$OLS_PIN" >/dev/null
  [[ -x ols      ]] || ./build.sh
  [[ -x odinfmt  ]] || odin build tools/odinfmt/main.odin -file -collection:src=src -out:odinfmt -o:speed
  cp -f ols odinfmt "$ODIN_HOME/"
)

# 5. codelldb ------------------------------------------------------------------
if [[ "$LITE" -eq 0 && ! -x "$ODIN_HOME/codelldb" ]]; then
  step "codelldb"
  rel="$(curl -fsSL https://api.github.com/repos/vadimcn/codelldb/releases/latest | grep '"tag_name":' | head -1 | cut -d'"' -f4)"
  case "$(uname -s)" in
    Linux*)  asset="codelldb-linux-x64.vsix";;
    Darwin*) asset="codelldb-darwin-x64.vsix";;
  esac
  tmp="$(mktemp -d)"
  curl -fL --retry 3 -o "$tmp/codelldb.vsix" "https://github.com/vadimcn/codelldb/releases/download/$rel/$asset"
  unzip -q "$tmp/codelldb.vsix" -d "$tmp/ext"
  cp -rf "$tmp/ext/extension/adapter/." "$ODIN_HOME/"
fi

# 6. Python venv + deps --------------------------------------------------------
step "Python venv + deps"
cd "$REPO_ROOT"
[[ -d .venv ]] || python3 -m venv .venv
./.venv/bin/python -m pip install --upgrade pip >/dev/null
./.venv/bin/python -m pip install -e ".[dev]" -e "tools/indexer[test]"

# 7. Ollama --------------------------------------------------------------------
if [[ "$LITE" -eq 0 ]]; then
  step "Ollama + models"
  if ! have ollama; then
    curl -fsSL https://ollama.com/install.sh | sh
  fi
  (ollama serve >/tmp/ollama.log 2>&1 &) || true
  sleep 3
  ollama pull qwen3-embedding:4b
  ollama pull llama3.2
fi

# 8. Doctor --------------------------------------------------------------------
step "doctor"
./.venv/bin/python -m odin_master.cli doctor

echo
echo "odin_master install: done."
