$Items = 
@(
    "Microsoft\Windows\Temporary Internet Files\*",
    "Microsoft\Windows\WER\*",
    "Temp\*"
)

$Folder = "$env:LOCALAPPDATA\"
$Items | ForEach-Object { 
    if (Test-Path "$Folder\$_") {
        Remove-Item "$Folder\$_" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    }
}