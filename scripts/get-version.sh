#!/bin/bash
# Exit immediately if any command exits with a non-zero status
set -e

# GitHub repository passed as the first argument
REPO=$1

# Fetch the latest release version from the GitHub API and parse the tag name
LATEST_VERSION=$(curl -s https://api.github.com/repos/$REPO/releases/latest | jq -r .tag_name)

# Check if there is no latest release available
if [ "$LATEST_VERSION" == "null" ]; then
	exit 0 # Exit with success status, no action needed
fi

# Output the latest version found
echo $LATEST_VERSION
