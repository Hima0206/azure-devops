#!/bin/bash
set -ex

# Fail early if arguments are missing
if [ $# -lt 3 ]; then
  echo "Usage: $0 <app-name> <image-name> <tag>"
  exit 1
fi

APP_NAME=$1
IMAGE_NAME=$2
TAG=$3

# Make sure SYSTEM_ACCESSTOKEN is available
if [ -z "$SYSTEM_ACCESSTOKEN" ]; then
  echo "❌ SYSTEM_ACCESSTOKEN is not set. Did you enable 'Allow scripts to access OAuth token' in the pipeline?"
  exit 1
fi

# Use Azure DevOps OAuth token instead of PAT
REPO_URL="https://$SYSTEM_ACCESSTOKEN@dev.azure.com/Himatejacloud/voting-app/_git/voting-app"

TEMP_DIR="/tmp/temp_repo"
rm -rf "$TEMP_DIR"

# Clone the repo
git clone "$REPO_URL" "$TEMP_DIR"
cd "$TEMP_DIR"

# Update only the right deployment file
sed -i "s|\(image:\s*\).*|\1himatejacicd.azurecr.io/${IMAGE_NAME}:${TAG}|g" "k8s-specifications/${APP_NAME}-deployment.yaml"

# Stage, commit and push
git add "k8s-specifications/${APP_NAME}-deployment.yaml"
git commit -m "Update ${APP_NAME} image to ${IMAGE_NAME}:${TAG}" || echo "No changes to commit"
git push origin HEAD:main   # change 'main' if your default branch is different

# Cleanup
rm -rf "$TEMP_DIR"
