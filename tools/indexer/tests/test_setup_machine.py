from __future__ import annotations

from odin_master import setup_machine


def test_detect_uses_injected_probes():
    p = setup_machine.detect(probe_gpu=lambda: True, probe_ollama=lambda: True)
    assert p.has_gpu and p.has_ollama and p.enable_vector_search


def test_detect_no_gpu_disables_vector_search():
    p = setup_machine.detect(probe_gpu=lambda: False, probe_ollama=lambda: True)
    assert not p.enable_vector_search


def test_detect_no_ollama_disables_vector_search():
    p = setup_machine.detect(probe_gpu=lambda: True, probe_ollama=lambda: False)
    assert not p.enable_vector_search


def test_write_settings_emits_required_keys(tmp_path):
    p = setup_machine.MachineProfile(has_gpu=True, has_ollama=True)
    out = setup_machine.write_settings(p, tmp_path / "settings.toml")
    txt = out.read_text()
    assert "enable_vector_search = true" in txt
    assert 'ollama_url = "http://127.0.0.1:11434"' in txt
    assert 'embedding_model = "qwen3-embedding:4b"' in txt


def test_write_settings_false_when_disabled(tmp_path):
    p = setup_machine.MachineProfile(has_gpu=False, has_ollama=False)
    out = setup_machine.write_settings(p, tmp_path / "s.toml")
    assert "enable_vector_search = false" in out.read_text()
