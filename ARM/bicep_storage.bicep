resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'hamadstorageaccount'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}
