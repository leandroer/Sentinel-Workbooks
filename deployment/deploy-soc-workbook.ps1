param(
    [Parameter(Mandatory=$true)]
    [string]$ResourceGroupName,

    [Parameter(Mandatory=$true)]
    [string]$WorkspaceName,

    [string]$Location = "eastus"
)

$ErrorActionPreference = "Stop"

$workspace = Get-AzOperationalInsightsWorkspace -ResourceGroupName $ResourceGroupName -Name $WorkspaceName
$sourceId = $workspace.ResourceId

$workbookPath = Join-Path $PSScriptRoot "../workbooks/soc-operations/soc-operations.workbook.json"
$serializedData = Get-Content $workbookPath -Raw

New-AzResourceGroupDeployment `
  -ResourceGroupName $ResourceGroupName `
  -TemplateFile (Join-Path $PSScriptRoot "deploy-workbook-bicep.bicep") `
  -location $Location `
  -workbookDisplayName "SOC Operations Workbook" `
  -sourceId $sourceId `
  -serializedData $serializedData
