#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
tmpdir=$(mktemp -d)

copier copy --trust --defaults \
	--data "project_name=My CLI" \
	--data "project_description=A sample Rust CLI tool" \
	--data "project_type=cli" \
	--data "project_license=MIT" \
	--data "git_repo_slug=user/my-cli" \
	"$TEMPLATE_DIR" "$tmpdir/my-cli"

echo "$tmpdir/my-cli"
