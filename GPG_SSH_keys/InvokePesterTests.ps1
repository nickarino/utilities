param (
    [Parameter()]
    [String[]] # @("test1.unit.tests.ps1", "test2.unit.tests.ps1")
    $testFiles
)

#Set-Location $PSScriptRoot

$pester5Module = Get-Module -ListAvailable -Name pester | Where-Object { $_.Version -gt [Version]'5.3.0' }
if (!$pester5Module) {
    # defaults to get the latest version of pester if none is specified
    Install-Module pester -Scope CurrentUser -Force -AllowClobber
}
# import into the current session
Import-Module pester -MinimumVersion '5.3.0' -Force

$configuration = New-Object PesterConfiguration
$configuration.Output.Verbosity = "Detailed"

# if there are files, just run those.  Else, run everything recursively from the working directory.  
if($testFiles) {
    $configuration.Run.Path = $testFiles # @PSScriptRoot + '\'
}

Invoke-Pester -Configuration $configuration