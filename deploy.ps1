Connect-AzAccount
#New-AzSubscriptionDeployment -Location <location> -TemplateFile <path-to-template-or-bicep>
$subscription = Get-AzSubscription
New-AzDeployment -Name 'rg_deployment' -Location 'West US' -TemplateParameterFile .\resource_group\resource_group.parameters.json -TemplateFile .\resource_group\resource_group.json
Test-AzDeployment -Name 'rg_deployment' -Location 'West US' -TemplateParameterFile .\resource_group\resource_group.parameters.json -TemplateFile .\resource_group\resource_group.json
Remove-AzDeployment -Name rg_deployment