#!/bin/bash
# Double-click this file (or run: bash push.command) to push the repo to GitHub.
cd "$(dirname "$0")"
git push && echo "=== Pushed. Now in Overleaf: Menu -> GitHub -> Pull. ==="
