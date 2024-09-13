#!/bin/bash
# Exit immediately if any command exits with a non-zero status
set -e

# GitHub repository and latest version are passed as arguments
REPO=$1
LATEST_VERSION=$2

echo "::notice title=Repository::$REPO"
echo "::notice title=LatestVersion::$LATEST_VERSION"

# Update the GitHub action version in README.md by replacing the existing version with the latest one
# This assumes the format 'uses: {REPO}@v{version}' in the README.md file
sed -i "s#uses: ${REPO}@v[0-9.]*#uses: ${REPO}@${LATEST_VERSION}#g" README.md
