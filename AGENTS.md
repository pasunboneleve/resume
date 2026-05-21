# AGENTS.md

This repository stores resume and cover-letter sources. Keep the root directory quiet.

## Directory Rules

- Put reusable Typst layout code in `typst/layouts/`.
- Put resume Typst sources in `typst/resumes/`.
- Put cover-letter Typst sources in `typst/cover-letters/`.
- Put publication-list Typst sources in `typst/publications/`.
- Put shared icons and images in `assets/`.
- Put publications, source links, and background reference material in `docs/references/`.
- Put generated resume PDFs in `output/resumes/`.
- Put generated cover-letter PDFs in `output/cover-letters/`.
- Put generated publication-list PDFs in `output/publications/`.
- Put old drafts, imported DOCX files, and historical references in `archive/drafts/`.
- Put automation in `scripts/`.

Do not add new `.typ`, `.pdf`, `.docx`, or reference notes to the repository root.

## Build Rules

- Use `scripts/build-documents.sh` to compile documents when a named output file is needed.
- Do not hand-roll output names in ad hoc commands.
- Use `RESUME_DATE=YYYY-MM-DD scripts/build-documents.sh <target>` when the output date must be fixed.
- Compile with `--root .` or `TYPST_ROOT=.` when invoking Typst directly from an editor.
- If an editor writes a PDF beside a source file, move or rebuild it into `output/` before finishing.

## Source Rules

- Resume sources import shared layout with `#import "../layouts/master.typ": ...`.
- Cover-letter sources import shared layout with `#import "../layouts/master.typ": ...`.
- Publication-list sources import shared layout with `#import "../layouts/master.typ": ...`.
- Sources under `typst/resumes/`, `typst/cover-letters/`, or `typst/publications/` reference shared assets with `../../assets/...`.
- Keep document-specific naming in `scripts/build-documents.sh`, not in scattered notes or one-off commands.

## Validation

Before claiming a layout or build change is done:

- Run the relevant `scripts/build-documents.sh` target.
- Check the generated PDF path under `output/`.
- Render or inspect the changed PDF when layout changed.

Do not commit generated PDFs unless the user explicitly wants that PDF version tracked.
