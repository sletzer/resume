VENV_DIR := .venv
REQUIREMENTS := requirements.txt
RESUME_YAML := resume.yaml
OUTPUT_DIR := rendercv_output

.PHONY: all venv install render clean

all: render

venv:
	python3 -m venv $(VENV_DIR)

install: venv
	. $(VENV_DIR)/bin/activate && pip install --upgrade pip && pip install -r $(REQUIREMENTS)

render: install
	. $(VENV_DIR)/bin/activate && rendercv render $(RESUME_YAML)

clean:
	deactivate || true
	rm -rf $(VENV_DIR) $(OUTPUT_DIR)