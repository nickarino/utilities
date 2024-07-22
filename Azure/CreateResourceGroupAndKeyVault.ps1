# Variables
$resourceType = "rg" # Resource Group
$workload = "keyvault"
$environment = "prod"
$location = "eastus"
$instance = "001"
$resourceGroupName = "$resourceType-$workload-$environment-$location-$instance"
$templateFile = "azuredeploy.json"

# Generate a unique key vault name with a GUID
$keyVaultName = "OurDecisionsKeyVault" 

# Login to Azure
# Check if already connected to Azure
$context = Get-AzContext -ErrorAction SilentlyContinue
if (-not $context) {
    # Login to Azure
    Connect-AzAccount
}

# Check if Resource Group exists
$rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if ($null -eq $rg) {
    # Create Resource Group
    New-AzResourceGroup -Name $resourceGroupName -Location "East US"
    Write-Host "Resource Group '$resourceGroupName' created."
} else {
    Write-Host "Resource Group '$resourceGroupName' already exists."
}

# Check if Key Vault exists
$keyVault = Get-AzKeyVault -VaultName $keyVaultName -ResourceGroupName $resourceGroupName -ErrorAction SilentlyContinue
if ($null -eq $keyVault) {
    # Deploy ARM Template to create Key Vault
    New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile -keyVaultName $keyVaultName
    Write-Host "Key Vault '$keyVaultName' created."
} else {
    Write-Host "Key Vault '$keyVaultName' already exists."
}
