$Items = 
@(
    "Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\*",
    "Microsoft.MicrosoftEdge.Stable_8wekyb3d8bbwe\AC\*"
)

$Folder = "$env:LOCALAPPDATA\Packages\"
$Items | ForEach-Object { 
    if (Test-Path "$Folder\$_") {
        Remove-Item "$Folder\$_" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    }
}