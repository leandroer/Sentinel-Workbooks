# Deployment Commands

## Option 1: Commit the Workbook Base Code to GitHub

```bash
cd ~/Downloads
unzip Sentinel-Workbooks-Base-Code-v1.0.zip
cd Sentinel-Workbooks-Base-Code-v1.0

git init
git branch -M main
git remote add origin https://github.com/leandroer/Sentinel-Workbooks.git

git add .
git commit -m "Add Sentinel workbook base code"
git push -u origin main
```

If the repository already has content and this is intended to replace it:

```bash
git push -u origin main --force
```

## Option 2: Deploy Workbooks to Azure Sentinel / Log Analytics

Run from PowerShell with Az modules authenticated:

```powershell
Connect-AzAccount
Set-AzContext -Subscription "<SUBSCRIPTION_ID>"

cd ./deployment

./deploy-ai-security-workbook.ps1 -ResourceGroupName "siem" -WorkspaceName "LRSEC" -Location "eastus"
./deploy-purview-workbook.ps1 -ResourceGroupName "siem" -WorkspaceName "LRSEC" -Location "eastus"
./deploy-soc-workbook.ps1 -ResourceGroupName "siem" -WorkspaceName "LRSEC" -Location "eastus"
```

## Option 3: Manual Portal Import

1. Open Microsoft Sentinel.
2. Go to Workbooks.
3. Create a new workbook.
4. Open Advanced Editor.
5. Paste one of the workbook JSON files.
6. Save it as a shared workbook.
