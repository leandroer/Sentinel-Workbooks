# Import Workbook Guide

## Import from Azure Portal

1. Open Microsoft Sentinel.
2. Select your Log Analytics workspace.
3. Go to **Workbooks**.
4. Click **Add workbook**.
5. Click **Advanced Editor** or **Edit**.
6. Replace the workbook JSON with one of the files from this repository.
7. Save the workbook.
8. Select the target subscription, resource group, region, and workspace.
9. Validate each query and update table/column names as needed.

## Recommended Import Order

1. SOC Operations Workbook
2. Purview Data Exfiltration Workbook
3. AI Security Operations Workbook

## Tuning Notes

- Replace `AIApp_CL` with your actual AI application telemetry table.
- Replace `AIToolExecution_CL` with your actual agent/tool execution telemetry table.
- Replace `PurviewDLP_CL` with your actual Purview/DLP ingestion table.
- Validate `OfficeActivity`, `SecurityIncident`, and `AzureDiagnostics` are enabled in your workspace.
