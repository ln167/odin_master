import io
import subprocess
import sys
import tempfile
import unittest
from contextlib import redirect_stderr, redirect_stdout
from pathlib import Path
from unittest.mock import patch

import claim as claim_cli


ROOT = Path(__file__).resolve().parents[2]
CLAIM = ROOT / "tools" / "substrate" / "claim.py"


def run_claim(name: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [sys.executable, str(CLAIM), name],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
    )


class ClaimCliTests(unittest.TestCase):
    def test_missing_claim_reports_a_short_error(self) -> None:
        result = run_claim("tele/s2-spine-threadsssss")

        self.assertEqual(result.returncode, 1)
        self.assertEqual(result.stdout, "")
        self.assertEqual(result.stderr, "claim not found: tele/s2-spine-threadsssss\n")

    def test_claim_container_is_not_treated_as_a_claim(self) -> None:
        result = run_claim("tele")

        self.assertEqual(result.returncode, 1)
        self.assertEqual(result.stdout, "")
        self.assertEqual(result.stderr, "claim not found: tele\n")

    def test_verify_all_reports_progress(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            for name in ("one", "two"):
                claim = root / name
                claim.mkdir()
                (claim / "claim.txt").write_text("compiles main.odin\n", encoding="utf-8")
                (claim / "main.odin").write_text("package main\nmain :: proc() {}\n", encoding="utf-8")

            output = io.StringIO()
            with patch.object(claim_cli, "ROOTS", [root]), patch.object(sys, "argv", ["claim.py"]):
                with redirect_stdout(output):
                    result = claim_cli.main()

        text = output.getvalue()
        self.assertEqual(result, 0)
        self.assertTrue(text.startswith("running 2 claims...\n"))
        self.assertIn("[1/2]", text)
        self.assertIn("[2/2]", text)

    def test_verify_all_keeps_going_after_one_claim_crashes(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            broken = root / "broken"
            broken.mkdir()
            (broken / "claim.txt").write_text("", encoding="utf-8")

            good = root / "good"
            good.mkdir()
            (good / "claim.txt").write_text("compiles main.odin\n", encoding="utf-8")
            (good / "main.odin").write_text("package main\nmain :: proc() {}\n", encoding="utf-8")

            output = io.StringIO()
            with patch.object(claim_cli, "ROOTS", [root]), patch.object(sys, "argv", ["claim.py"]):
                with redirect_stdout(output), redirect_stderr(output):
                    result = claim_cli.main()

        text = output.getvalue()
        self.assertEqual(result, 1)
        self.assertIn("FAIL  broken", text)
        self.assertIn("PASS  good", text)
        self.assertIn("[2/2]", text)

    def test_verify_all_succeeds_when_only_result_is_inconclusive(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            claim = root / "noisy-benchmark"
            claim.mkdir()
            (claim / "claim.txt").write_text("compiles main.odin\n", encoding="utf-8")
            (claim / "main.odin").write_text("package main\nmain :: proc() {}\n", encoding="utf-8")

            output = io.StringIO()
            inconclusive = ("INCONC", ["INCONC  noisy-benchmark  (timing noise)"])
            with patch.object(claim_cli, "ROOTS", [root]), patch.object(
                claim_cli, "run_one_safe", return_value=inconclusive
            ), patch.object(sys, "argv", ["claim.py"]):
                with redirect_stdout(output):
                    result = claim_cli.main()

        self.assertEqual(result, 0)
        self.assertIn("0/1 passed, 1 inconclusive", output.getvalue())


if __name__ == "__main__":
    unittest.main()
