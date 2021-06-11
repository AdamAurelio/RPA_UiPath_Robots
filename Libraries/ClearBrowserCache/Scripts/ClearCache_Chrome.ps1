$Items = 
@(
    "Cache\*",
    "Cache2\entries\*",
    "Cookies*",
    "Media*",
    "History*",
    "Login*",
    "Top*",
    "Visited Links*",
    "Web*"
)

$Folder = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\"
$Items | ForEach-Object { 
    if (Test-Path "$Folder\$_") {
        Remove-Item "$Folder\$_" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    }
}