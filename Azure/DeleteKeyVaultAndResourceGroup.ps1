# Variables
$resourceType = "rg"
$workload = "keyvault"
$environment = "prod"
$location = "eastus"
$instance = "001"
$resourceGroupName = "$resourceType-$workload-$environment-$location-$instance"
$keyVaultName = "OurDecisionsKeyVault" # Use the actual name created with the GUID

# Check if already connected to Azure
$context = Get-AzContext -ErrorAction SilentlyContinue
if (-not $context) {
    # Login to Azure
    Connect-AzAccount
}

# Check if Key Vault exists
$keyVault = Get-AzKeyVault -VaultName $keyVaultName -ResourceGroupName $resourceGroupName -ErrorAction SilentlyContinue
if ($null -ne $keyVault) {
    # Delete the Key Vault
    # This moves it into a soft deleted state for 90 days.
    # You have to run PermanentlyRemoveKeyVault.ps1 to remove it permanently.
    Remove-AzKeyVault -VaultName $keyVaultName -ResourceGroupName $resourceGroupName -Purge -Force
    #https://learn.microsoft.com/en-us/azure/key-vault/general/key-vault-recovery?tabs=azure-cli#key-vault-cli
    Write-Host "Key Vault '$keyVaultName' deleted."
} else {
    Write-Host "Key Vault '$keyVaultName' does not exist."
}

# Check if Resource Group exists
$rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if ($null -ne $rg) {
    # Delete the Resource Group
    Remove-AzResourceGroup -Name $resourceGroupName -Force
    Write-Host "Resource Group '$resourceGroupName' deleted."
} else {
    Write-Host "Resource Group '$resourceGroupName' does not exist."
}

