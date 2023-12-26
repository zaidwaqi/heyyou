$foldersToDelete = @(
    ".pytest_cache", 
    "dist",
    "env",
    "src/*.egg-info",
	"src/heyyou/__pycache__",
	"tests/__pycache__",
	"tests/.pytest_cache"
)

foreach ($folder in $foldersToDelete) {
    $folderPath = Join-Path -Path $PSScriptRoot -ChildPath $folder

    if (Test-Path -Path $folderPath -PathType Container) {
        Remove-Item -Path $folderPath -Recurse -Force
        Write-Host "Deleted folder: $folderPath"
    }
}
