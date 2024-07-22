# See these tests 
# https://github.com/Azure/azure-powershell/blob/main/src/KeyVault/KeyVault.Test/PesterTests/Key.Tests.ps1
# Variables
$subscriptionId = "76a1d675-4a1d-4588-b73c-d6fc908ae998"
$keyVaultName = "OurDecisionsKeyVault"
$resourceType = "rg"
$workload = "keyvault"
$environment = "prod"
$location = "eastus"
$instance = "001"
$resourceGroupName = "$resourceType-$workload-$environment-$location-$instance"
$applicationId = "3686488a-04fc-4d8a-b967-61f98ec41efe"

# Set the subscription context
az account set --subscription $subscriptionId

# Update the access policy to grant 'set' permission on secrets
az keyvault set-policy --name $keyVaultName --resource-group $resourceGroupName --spn $applicationId --secret-permissions get list set

# Start here with getting the right things for key vault. 
az ad sp list --all --query "[?contains(displayName, 'Vault')].{id:appId, displayName:displayName}"

# prompt Can you make me a set of pester tests that create a subscription and Keyvault with the secret permissions of get set list and then completely delete it--including not just soft delete but permanently delete.   Prefer using AZ cli commands
# https://learn.microsoft.com/en-us/powershell/module/az.keyvault/?view=azps-12.1.0