#!/bin/bash
set -e

SERVICES_DIR="$HOME/Library/Services"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Claude Finder actions..."

# Copy workflows
cp -r "$SCRIPT_DIR/workflows/Open with Claude.workflow" "$SERVICES_DIR/"
cp -r "$SCRIPT_DIR/workflows/Open with Claude (Skip Permissions).workflow" "$SERVICES_DIR/"

# Refresh services cache
/System/Library/CoreServices/pbs -update 2>/dev/null

echo "Installed! Restart Finder to see the new actions:"
echo "  killall Finder"
echo ""
echo "Then right-click any folder in Finder and check Quick Actions."
