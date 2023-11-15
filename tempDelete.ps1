$folderPath = $env:TEMP
$items = Get-ChildItem -Path $folderPath -Recurse
$totalItems = $items.Count
$counter = 0

foreach ($item in $items) {
    try {
        Remove-Item -Path $item.FullName -Recurse -ErrorAction Stop
    } catch {
        Write-Host "Skipping: $($item.FullName) - $($_.Exception.Message)"
    }
    $counter++
    $progress = ($counter / $totalItems) * 100
    Write-Progress -Activity "Deleting Files..." -Status "$progress% Complete:" -PercentComplete $progress
}

Write-Host "Deletion completed."