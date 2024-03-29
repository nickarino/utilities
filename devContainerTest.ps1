function Assert($Condition, $Message) {
    if (-not $Condition) {
        Throw "Assertion failed: $Message"
    }
}

# Assert that a variable is not null
$var = $null
try {
    Assert ($null -ne $var) "Variable should not be null"
} catch {
    Assert ($_ -ne $null) "An error should have occurred"
}



## Test if you understand particular module commands
Find-Module -Name Pester 
$pesterModule = Find-Module -Name Pester
Write-Output $pesterModule.Name

Get-Module -Name Pester
Install-Module -Name Pester -Force -SkipPublisherCheck
Get-InstalledModule -Name Pester
Invoke-Pester -ScriptBlock { 1 + 1 | Should -Be 2 }
Invoke-Pester 

# Define the test
$testScript = {
    Describe "PSGallery Test" {
        It "Checks if PSGallery is the repository in use" {
            # Get the current repository
            $repository = (Get-PSRepository).Name

            # Test if PSGallery is the repository in use
            $repository | Should -Be 'PSGallery'
        }
    }
}

# Call the test
try {
    Invoke-Pester -ScriptBlock $testScript
}
catch {
    Write-Output "An error occurred while invoking Pester: $_"
}

## Define the test
# $testScript = {
#     Describe "Environment Variable Test" {
#         It "Checks if there is a value in $env:PSModulePath" {
#             # Get the value of $env:PSModulePath
#             $psModulePath = $env:PSModulePath

#             # Test if there is a value in $env:PSModulePath
#             $psModulePath | Should -Not -BeNullOrEmpty
#         }
#     }
# }

# # Call the test
# try {
#     Invoke-Pester -ScriptBlock $testScript
# }
# catch {
#     Write-Output "An error occurred while invoking Pester: $_"
# }


# Define the test
# $testScript = {
#     Describe "Pester Installation Test" {
#         It "Checks if Pester is in the correct path" {
#             # Define the path where Pester should be installed
#             $pesterPath = "C:\Program Files\WindowsPowerShell\Modules\Pester"

#             # Check if Pester is in the correct path
#             $pesterInstalledCorrectly = Test-Path -Path $pesterPath

#             # Test if Pester is in the correct path
#             $pesterInstalledCorrectly | Should -Be $true
#         }
#     }
# }

# # Call the test
# try {
#     Invoke-Pester -ScriptBlock $testScript
# }
# catch {
#     Write-Output "An error occurred while invoking Pester: $_"
# }

# Import the Pester module
# Import-Module Pester -Force
# Install-Module -Name Pester -Force -SkipPublisherCheck

# # Define the test
# $testScript = {
#     Describe "Pester Installation Test" {
#         It "Checks if Pester is installed" {
#             # Check if Pester is installed
#             $pester = Get-Module -ListAvailable -Name Pester

#             # Test if Pester is installed
#             $pester | Should -Not -BeNullOrEmpty
#         }
#     }
# }

# # Call the test
# Invoke-Pester -ScriptBlock $testScript

# # Import the Pester module
# Import-Module Pester -Force

# # Define the test
# $testScript = {
#     Describe "Docker Container Test" {
#         It "Runs and stops a Docker container" {
#             # Spin up a new Docker container
#             docker run -d --name my-test-container alpine sleep infinity | Out-Null

#             # Execute commands in the new Docker container
#             $output = docker exec my-test-container echo "Hello from within the container!"

#             # Check the output
#             $output | Should -Be "Hello from within the container!"

#             # Shut down the new Docker container
#             docker stop my-test-container | Out-Null
#             docker rm my-test-container | Out-Null
#         }
#     }
# }

# # Call the test
# Invoke-Pester -ScriptBlock $testScript