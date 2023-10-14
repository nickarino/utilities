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

Describe "Given OpenSSH exists and can be installed" {
    Context "When you check if it is installed"{
        It "Should use the correct package manager: winget on windows or brew on mac"{
            # To decide on a string contains you could use either
            # 1. https://learn.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Utility/Select-String?view=powershell-7.3&viewFallbackFrom=powershell-7
            # 2. https://lazyadmin.nl/powershell/string-contains/ 
            if ($PSVersionTable.OS.Contains("Windows")) {
                # https://www.codetwo.com/admins-blog/how-to-check-installed-software-version/
                Get-WmiObject -Class Win32_Product | where vendor -eq CodeTwo | select Name, Version


            } else {
                # we are in linux or mac
                # Explanation of processes and their output. 
                # See difference between Start-Process and Invoke-Process: https://adamtheautomator.com/start-process/
                # Operators
                # https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators?view=powershell-7.2
                # I needed the "&" so the process is called
                & Start-Process -FilePath "which"  -ArgumentList "brew"
                # https://www.powershellgallery.com/packages/Invoke-Process/1.4
                # start https://www.comparitech.com/net-admin/install-powershell-modules/
                # TODO start here
                # ls /usr/local/Cellar/powershell/7.3.1/libexec/Modules/
                # grep -irl Invoke-Process .

            }
        }

        It "should install it or show it is already installed"{

        }
    }
}

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
