# Define your API key
$apiKey = $env.OPENAI_API_KEY

# Get the diff of the staged changes
$diff = git diff --cached

# Check if there are staged changes
if ($diff -eq "") {
    Write-Host "No staged changes to commit."
    exit
} else {
    Write-Host "Staged changes:"
    Write-Host $diff
}

# Prepare the data for the API request
$prompt = @"
Create a commit message from this diff:
$diff
"@

$requestBody = @{
    model = "gpt-4o"
    messages = @(
        @{
            role = "system"
            content = "You are a helpful assistant that generates concise and descriptive commit messages."
        },
        @{
            role = "user"
            content = $prompt
        }
    )
}

# Convert the request body to JSON
$jsonBody = $requestBody | ConvertTo-Json -Depth 4

# Send the request to the OpenAI API
$response = curl -s -X POST "https://api.openai.com/v1/chat/completions" `
    -H "Content-Type: application/json" `
    -H "Authorization: Bearer $apiKey" `
    -d $jsonBody

# Parse the response to get the generated message
$commitMessage = ($response | ConvertFrom-Json).choices[0].message.content

# Trim any leading/trailing whitespace
$commitMessage = $commitMessage.Trim()

# Display the generated commit message
Write-Host "Generated commit message:"
Write-Host $commitMessage

# Prompt for confirmation
$confirmation = Read-Host "Do you want to use this commit message? (yes/no)"

if ($confirmation -eq "yes") {
    # Commit the changes with the generated message
    git commit -m $commitMessage
    Write-Host "Changes have been committed."
} else {
    Write-Host "Commit aborted."
}
