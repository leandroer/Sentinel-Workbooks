# Sentinel Workbooks Base Code

Base Microsoft Sentinel Workbook code for the examples in this portfolio:

- AI Security Operations Workbook
- Microsoft Purview Data Exfiltration Workbook
- SOC Operations Workbook

These workbooks are starter templates intended to be imported into Azure Monitor Workbooks / Microsoft Sentinel and then tuned for your workspace tables, custom schemas, and operational needs.

## Included Workbooks

```text
workbooks/
├── ai-security-operations/
│   └── ai-security-operations.workbook.json
├── purview-data-exfiltration/
│   └── purview-data-exfiltration.workbook.json
└── soc-operations/
    └── soc-operations.workbook.json
```

## Expected Data Sources

The workbooks use these tables when available:

| Workbook | Tables |
|---|---|
| AI Security Operations | `AIApp_CL`, `AIToolExecution_CL` |
| Purview Data Exfiltration | `PurviewDLP_CL`, `OfficeActivity`, `AIApp_CL` |
| SOC Operations | `SecurityIncident`, `AzureDiagnostics` |

## Important

Some tables are custom or environment-specific. Update table and column names to match your Sentinel workspace.
