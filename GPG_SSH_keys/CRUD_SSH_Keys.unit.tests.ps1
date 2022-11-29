# https://pester.dev/docs/quick-start
BeforeAll {
    # Dot-sourcing the non-test script. This will import the functions in the non-test script and make them available here.
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

# BDD Example (Given (Describe), When (Context), Then (Should)):
# Given a code block
# When compared with the same reference
# Then will equal itself

# Arrange, Act, Assert
# Skeleton the tests before you actually start writing them

Describe "Given you need to create a new SSH key" {
    Context "When you have no SSH key" {
        It "should create a new SSH key" {
            $homeDir = $home #https://devblogs.microsoft.com/scripting/powertip-find-users-home-directory-in-powershell/
            $folderName = '/.ssh'
            Test-Path  ($homeDir + $folderName) | Should -Be $true -Because "/.ssh directory exists" #https://shellgeek.com/powershell-delete-folder-if-exists/


        }
    }
}

# References
# * Install  https://github.com/jimbrig/Scripts/tree/b23e87b72f56597b465399d92f928fe7e9e96094/PowerShell/Installations
# https://github.com/search?l=PowerShell&q=ssh-keygen+ps1&type=Code
# https://github.com/search?q=ssh-keygen+ps1+winget&type=Code
