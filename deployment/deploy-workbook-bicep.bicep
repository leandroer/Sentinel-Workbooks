@description('Azure region for the workbook resource.')
param location string = resourceGroup().location

@description('Workbook display name.')
param workbookDisplayName string

@description('Workbook source id. For Sentinel/Log Analytics use the workspace resource ID.')
param sourceId string

@description('Serialized workbook JSON content.')
param serializedData string

resource workbook 'Microsoft.Insights/workbooks@2022-04-01' = {
  name: guid(resourceGroup().id, workbookDisplayName)
  location: location
  kind: 'shared'
  properties: {
    displayName: workbookDisplayName
    serializedData: serializedData
    version: '1.0'
    sourceId: sourceId
    category: 'sentinel'
  }
}

output workbookResourceId string = workbook.id
