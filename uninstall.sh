#!/bin/bash
set -e

SERVICES_DIR="$HOME/Library/Services"

echo "Removing Claude Finder actions..."

rm -rf "$SERVICES_DIR/Open with Claude.workflow"
rm -rf "$SERVICES_DIR/Open with Claude (Skip Permissions).workflow"

/System/Library/CoreServices/pbs -update 2>/dev/null

echo "Removed. Restart Finder:"
echo "  killall Finder"
