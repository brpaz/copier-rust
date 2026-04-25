#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
tmpdir=$(mktemp -d)

copier copy --trust --defaults \
	--data "project_name=My Library" \
	--data "project_description=A sample Rust library" \
	--data "project_type=library" \
	--data "project_license=MIT" \
	--data "git_repo_slug=user/my-library" \
	"$TEMPLATE_DIR" "$tmpdir/my-library"

echo "$tmpdir/my-library"
