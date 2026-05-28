# Project: Resume-as-Code

This project manages a professional resume using a "resume-as-code" approach. It utilizes the `rendercv` tool to transform a YAML-based resume definition into multiple formats, including PDF, HTML, Markdown, and Typst.

## Project Overview

- **Core Tool:** [rendercv](https://github.com/sinaatalay/rendercv)
- **Source Material:** `resume.yaml` contains all the data and styling configuration for the resume.
- **Output:** Generated files are placed in the `rendercv_output/` directory.
- **Automation:** A `Makefile` is provided for local builds, and a GitHub Action (`.github/workflows/build.yml`) handles automated builds on pushes to the `main` branch.

## Building and Running

### Local Development

The easiest way to generate the resume locally is using the `Makefile`.

- **Generate Resume:**
  ```bash
  make
  ```
  This command will:
  1. Create a Python virtual environment (`.venv`).
  2. Install necessary dependencies from `requirements.txt`.
  3. Run `rendercv render resume.yaml` to generate the output files.

- **Clean Build Artifacts:**
  ```bash
  make clean
  ```
  This removes the `.venv` directory and the `rendercv_output` directory.

### Manual Steps (without Makefile)

If you prefer not to use `make`, you can follow these steps:

1. **Setup Environment:**
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```
2. **Render:**
   ```bash
   rendercv render resume.yaml
   ```

## Key Files and Directories

- `resume.yaml`: The primary source file. Modify this to update your resume content or change the theme.
- `rendercv_output/`: Contains the generated resume in various formats (PDF, HTML, MD, Typst).
- `assets/`: Stores images and other assets used in the resume (e.g., `profile_picture.jpg`).
- `Makefile`: Defines the build process.
- `requirements.txt`: Lists Python dependencies.

## Development Conventions

- **Virtual Environment:** Always run builds and install dependencies inside a Python virtual environment (`.venv`) to avoid modifying or cluttering system-level Python packages on the host machine.
- **Content Updates:** All resume content updates should be made in `resume.yaml`.
- **Theming:** The `design` section in `resume.yaml` controls the visual appearance. `rendercv` supports several themes (classic, sb2nov, moderncv, engineeringresumes, engineeringclassic).
- **CI/CD:** Ensure that any changes to `resume.yaml` are validated locally before pushing, as the GitHub Action will attempt to build and publish the resume automatically.
