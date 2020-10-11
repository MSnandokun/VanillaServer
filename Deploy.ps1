#
param(

    [Parameter(Mandatory=$True)]
    [string] $ResourceGroupName,
    
    [Parameter(Mandatory=$False)]
    [string] $storage_account,
    
    [Parameter(Mandatory=$True)]
    [ValidateLength(3,12)]
    [string] $admin_name,

    [Parameter(Mandatory=$True)]
    [securestring] $admin_password,

    [Parameter(Mandatory=$True)]
    [string] $TemplateFilePath = '.\template.json',

    [Parameter(Mandatory=$false)]
    [string] $ParametersFilePath = '.\parameters.json'

)

New-AzResourceGroupDeployment -ResourceGroupName "deployTest01" -TemplateFile ".\template.json" -admin_name "Nando" -admin_password "Password1"
