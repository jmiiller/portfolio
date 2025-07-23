#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR"

WORKSPACE=$(terraform workspace show 2>/dev/null || echo "default")

ENV_FILE="environments/${WORKSPACE}.tfvars"
if [[ -f "$ENV_FILE" ]]; then
    echo "Using environment file: $ENV_FILE"
    VAR_FILE_ARG="-var-file=$ENV_FILE"
else
    echo "Error: Environment file $ENV_FILE not found"
    exit 1
fi

# Initialize Terraform
echo "Initializing Terraform..."
terraform init

# Apply configuration
echo "Applying Terraform configuration for workspace: $WORKSPACE"
terraform apply -auto-approve $VAR_FILE_ARG
