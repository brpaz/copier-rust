#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
tmpdir=$(mktemp -d)

copier copy --trust --defaults \
	--data "project_name=My TUI" \
	--data "project_description=A sample Rust TUI application" \
	--data "project_type=tui" \
	--data "project_license=MIT" \
	--data "git_repo_slug=user/my-tui" \
	"$TEMPLATE_DIR" "$tmpdir/my-tui"

echo "$tmpdir/my-tui"
