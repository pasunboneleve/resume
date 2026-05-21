#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"
build_date="${RESUME_DATE:-$(date +%F)}"
target="${1:-all}"

resume_output="$repo_root/output/resumes"
cover_letter_output="$repo_root/output/cover-letters"

mkdir -p "$resume_output" "$cover_letter_output"

compile() {
  local source="$1"
  local output="$2"

  typst compile --root "$repo_root" "$repo_root/$source" "$repo_root/$output"
  printf 'wrote %s\n' "$output"
}

build_general() {
  compile \
    "typst/resumes/general.typ" \
    "output/resumes/Vianna - $build_date - Systems Translator - Resume.pdf"
}

build_boring() {
  compile \
    "typst/resumes/boring.typ" \
    "output/resumes/Vianna - $build_date - Software Engineer - Resume.pdf"
}

build_hybrid() {
  compile \
    "typst/resumes/hybrid.typ" \
    "output/resumes/Vianna - $build_date - Software and Data Engineer - Resume.pdf"
}

build_traild_cover_letter() {
  compile \
    "typst/cover-letters/traild-senior-software-engineer.typ" \
    "output/cover-letters/Vianna - $build_date - Traild - Senior Software Engineer - Cover Letter.pdf"
}

case "$target" in
  all)
    build_general
    build_boring
    build_hybrid
    build_traild_cover_letter
    ;;
  resumes)
    build_general
    build_boring
    build_hybrid
    ;;
  cover-letters)
    build_traild_cover_letter
    ;;
  general)
    build_general
    ;;
  boring)
    build_boring
    ;;
  hybrid)
    build_hybrid
    ;;
  traild-cover-letter)
    build_traild_cover_letter
    ;;
  *)
    cat >&2 <<'USAGE'
Usage: scripts/build-documents.sh [all|resumes|cover-letters|general|boring|hybrid|traild-cover-letter]

Set RESUME_DATE=YYYY-MM-DD to override the date used in output filenames.
USAGE
    exit 2
    ;;
esac
