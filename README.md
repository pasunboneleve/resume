# Resume Documents

Typst sources for Daniel Vianna's resumes and cover letters.

## Repository Map

- `typst/layouts/` holds shared Typst layout code.
- `typst/resumes/` holds resume sources.
- `typst/cover-letters/` holds cover-letter sources.
- `assets/` holds shared icons and images.
- `output/resumes/` holds generated resume PDFs.
- `output/cover-letters/` holds generated cover-letter PDFs.
- `archive/drafts/` holds old drafts and imported source files.
- `scripts/` holds build automation.

## Build

Build everything:

```bash
scripts/build-documents.sh
```

Build one target:

```bash
scripts/build-documents.sh hybrid
scripts/build-documents.sh traild-cover-letter
```

Use a fixed output date:

```bash
RESUME_DATE=2026-05-21 scripts/build-documents.sh resumes
```

The script writes named PDFs to `output/resumes/` and `output/cover-letters/`.

## Editor Use

When compiling manually from Emacs, compile from the repository root with `--root .` or set `TYPST_ROOT=.`. If the editor writes a PDF beside the source, rebuild or move the final PDF into `output/`.
