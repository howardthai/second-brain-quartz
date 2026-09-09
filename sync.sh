#!/bin/bash
# Sync vault content from ~/second-brain to Quartz content/

set -e

VAULT_DIR="$HOME/second-brain"
CONTENT_DIR="$(dirname "$0")/content"

echo "Syncing vault from $VAULT_DIR to $CONTENT_DIR..."

# Remove old content except .gitkeep
rm -rf "$CONTENT_DIR"/*
rm -rf "$CONTENT_DIR"/.[^.]* 2>/dev/null || true

# Copy vault content
cp -r "$VAULT_DIR"/* "$CONTENT_DIR/"

# Remove files that shouldn't be published
rm -f "$CONTENT_DIR/README.md"
rm -f "$CONTENT_DIR/.gitignore"
rm -rf "$CONTENT_DIR/.git"

echo "Sync complete. Ready to build."
