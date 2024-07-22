# Variables. Run this in Azure as it is may no longer be in a Resource group. 
# If it keeps saying running, then kill the process and see if the keyvault is gone
$subscriptionId = "76a1d675-4a1d-4588-b73c-d6fc908ae998"
$vaultName = "OurDecisionsKeyVault"

az keyvault purge --subscription $subscriptionId -n $vaultName