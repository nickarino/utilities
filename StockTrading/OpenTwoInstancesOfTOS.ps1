# PowerShell script to open thinkorswim.exe from one of two possible locations

# First path to the thinkorswim executable
$firstPath = "C:\Users\skriloffn\AppData\Local\thinkorswim2\thinkorswim\thinkorswim.exe"

# Second path to the thinkorswim executable
$secondPath = "C:\Users\skriloffn\AppData\Local\thinkorswim\thinkorswim.exe"

# Function to attempt to start the application from a path
function Start-Application {
    param (
        [String]$path
    )
    
    # Check if the executable exists at the given path
    if (Test-Path $path) {
        try {
            Start-Process -FilePath $path
            Write-Output "Starting thinkorswim from: $path"
        } catch {
            Write-Error "Failed to start thinkorswim from: $path"
        }
    } else {
        Write-Warning "Executable not found at: $path"
    }
}

# Try to start thinkorswim from the first path and second path
Start-Application -path $firstPath

Start-Application -path $secondPath
