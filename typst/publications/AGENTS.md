# AGENTS.md

These instructions apply to publication-list sources in this directory.

## Bibliography Source

- Render publication entries from `../../references/publications.bib`.
- Do not duplicate bibliographic data by hand in `publications.typ` when a BibLaTeX entry can own it.
- Add full peer-reviewed journal articles and book chapters to `../../references/publications.bib`.
- Track conference abstracts and unverified presentation leads in `../../docs/references/conference-presentations.md`.

## Ordering

- Keep the career-stage sections unless the user asks for a single APA reference list.
- Sort entries by the full rendered citation text within each section, left to right as it appears on the page.
- Do not stop after comparing the first author or author list.

## Layout

- Use APA-style hanging indents for each citation: first line flush left, wrapped lines indented.
- Keep the visual style compatible with `../layouts/master.typ` and the existing publication handout.
- Rebuild with `scripts/build-documents.sh publications` from the repository root after changes.
- Render or inspect `output/publications/` when layout changes.

## Conference Items

- Do not add conference abstracts to the main publication handout by default.
- Do not promote poster-only items.
- Only describe a conference item as an oral presentation when a source confirms Daniel presented it as a talk, symposium contribution, lecture, or comparable public-speaking format.
