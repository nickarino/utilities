# https://pester.dev/docs/quick-start
BeforeAll {
    # Dot-sourcing the non-test script. This will import the functions in the non-test script and make them available here.
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

# BDD Example (Given (Describe), When (Context), Then ( It) Should)):
# Given a code block
# When compared with the same reference
# Then will equal itself

# Arrange, Act, Assert
# Skeleton the tests before you actually start writing them

Describe "Given ssh-keygen provides keys" {
    Context "When there is no SSH key" {
        It "should create a new SSH key" {
            # PowerShell command for checking for a directory
            Test-Path $home/.ssh | Should -Be $true -Because ".ssh directory is there in $home "
            $pubKeys =  (dir $home/.ssh/*.pub)
            $pubKeys.length | Should -BeGreaterThan 1 -Because ".ssh directory should have more than one public key. "
            #show you can get some output from ssh-keygen. 
            Start-Process -FilePath "ssh-keygen"  -ArgumentList "-lf $home/.ssh/id_rsa.pub"
            # get the hashes
            Write-Host (ssh-keygen -lf $pubKeys.Name[0])
        }
    }
}

# References
# * Install  https://github.com/jimbrig/Scripts/tree/b23e87b72f56597b465399d92f928fe7e9e96094/PowerShell/Installations
# https://github.com/search?l=PowerShell&q=ssh-keygen+ps1&type=Code
# https://github.com/search?q=ssh-keygen+ps1+winget&type=Code
