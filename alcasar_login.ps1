$url = "https://alcasar.laplateforme.io/intercept.php"

# Step 1: Fetch the challenge
$challResponse = Invoke-RestMethod -Uri $url -Method Get -MaximumRedirection 10

$regexPattern = '(?<=<input type="hidden" name="challenge" value=")(.*?)(?=">)'
$match = [regex]::Match($challResponse, $regexPattern)
$chall = $match.Value

if ([string]::IsNullOrWhiteSpace($chall)) {
    Write-Host "Challenge not found."
}
else {
    # Step 2: Submit the login form with challenge, username, password, and button
    $formParams = @{
        challenge = $chall
        username = "EnterUsernameHere"
        password = "EnterPasswordHere"
        button = "Authentication"
    }

    $loginResponse = Invoke-RestMethod -Uri $url -Method Post -ContentType "application/x-www-form-urlencoded" -Body $formParams -MaximumRedirection 10

    # Display the response from the login form submission
    Write-Host "Login Form Submission Response:"
    Write-Host $loginResponse
}
