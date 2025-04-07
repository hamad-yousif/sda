# Validate ARM Template Syntax
az deployment group validate --resource-group <your-resource-group> --template-file <your-template.json>
e.g.
az deployment group validate --resource-group hamad-image-rg --template-file azuredeploy.json

# Preview ARM deployment
## 1. resource group scope
az deployment group what-if --resource-group <your-resource-group> --template-file <your-template.json>
e.g.
az deployment group what-if --resource-group hamad-image-rg --template-file azuredeploy.json

## 2. sub scope
az deployment sub what-if --location <location> --template-file <your-template.json>

## 3. management group scope
az deployment mg what-if --management-group-id <your-mg-id> --template-file <your-template.json>

## 4. management group scope
az deployment tenant what-if --location eastus --template-file <your-template.json>
e.g.
az deployment tenant what-if --location <location> --template-file multi_subscription.json

# Deploy resource using azure template and parameters.json file
az deployment group what-if --resource-group hamad-image-rg --template-file azuredeploy_generic.json --parameters @parameters.json

## Bicep
# Deploy resource using bicep template
az deployment group create --resource-group <your-resource-group> --template-file storageAccount.bicep

## ARM Template Specs
# Create Template Specs
az ts create \
  --name <template-spec-name> \
  --resource-group <resource-group-name> \
  --location <location> \
  --version <version> \
  --template-file <path-to-template-file>

# List Template Specs
az ts list --resource-group <resource-group-name>

# Show details of Template Specs
az ts show \
  --name <template-spec-name> \
  --resource-group <resource-group-name>

# Deploy resource using Template Specs
az deployment group create \
  --resource-group <resource-group-name> \
  --template-spec <template-spec-resource-id>