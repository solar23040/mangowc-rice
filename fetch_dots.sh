#!/usr/bin/env bash

# Exit immediately if a command fails
set -e

# --- CONFIGURATION ---
GH_USER="solar23040"
REPO_NAME="mangowc-rice"
TARGET_DIR="$HOME/.config/mango"
BACKUP_DIR="$HOME/.config/mango_backup_$(date +%Y%m%d_%H%M%S)"

echo "============================================="
echo " Fetching mangowc dots from GitHub          "
echo "============================================="

# 1. Handle pre-existing configuration directory safely
if [ -d "$TARGET_DIR" ]; then
    # If it's already a git repo linked to your dots, just pull the latest changes
    if [ -d "$TARGET_DIR/.git" ] && [[ $(cd "$TARGET_DIR" && git remote get-url origin 2>/dev/null) == *"$REPO_NAME"* ]]; then
        echo "-> Existing repository detected. Pulling updates..."
        cd "$TARGET_DIR"
        git pull origin main
        echo "Successfully updated dots!"
        exit 0
    else
        # If there are local configs but they aren't tracked by your Git repo, back them up
        echo "-> Local directory exists but isn't linked to your repository."
        echo "-> Moving current config to: $BACKUP_DIR"
        mv "$TARGET_DIR" "$BACKUP_DIR"
    fi
fi

# 2. Clone the repository fresh
echo "-> Cloning $REPO_NAME into $TARGET_DIR..."
git clone "https://github.com/$GH_USER/$REPO_NAME.git" "$TARGET_DIR"

echo "============================================="
echo " Setup Completed Successfully!               "
echo " Your dots are active in $TARGET_DIR        "
echo "============================================="
