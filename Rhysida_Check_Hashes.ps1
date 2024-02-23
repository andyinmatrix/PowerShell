# Checks for Rhysida Hashes
#
# Reference
# 1) https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-319a


$Count = 0
# Change the Paths accordingly.
$path = "C:\tools\PowerShell\"

# Read hashes from file Rhysida.hash.txt and save them in an array
$Sha256 = Get-Content -Path "$($path)\Rhysida.hash.txt"

$dotStr = "."
Write-Host "Running ..."
$dotI = 0

# Get files less than 60MB in the E drive (Suppose you mount the image to E drive) 
$files = Get-ChildItem -Path E:\ -Recurse -File | Where-Object { $_.Length -lt 60MB }
#$files = Get-ChildItem -Path c:\temp -Recurse -File | Where-Object { $_.Length -lt 60MB }

# Array to store matched file names
$matchedFiles = @()

# Iterate through each file and calculate its SHA256 hash
foreach ($file in $files) {
	$dotI += 1
	if ($dotI -le 100) {
		Write-Host -NoNewline $dotStr
	}
	else {
		Write-Host $dotStr
		$dotI = 0
	}
    $hash = Get-FileHash -Path $file.FullName -Algorithm SHA256 | Select-Object -ExpandProperty Hash
    if ($Sha256 -contains $hash) {
        $matchedFiles += $file.FullName
		Write-Host $file.FullName -ForegroundColor Red
		$Count = $Count + 1
    }
}
if ($Count -eq 0){
    Write-Host ""
	Write-Host "No suspicious hashes detected" -ForegroundColor Green
}
else {
    Write-Host ""
	Write-Host "Total" $Count " suspicious file(s) detected" -ForegroundColor Red
}

# Export matched file names and their corresponding SHA256 hashes
$matchedFiles | ForEach-Object { 
    [PSCustomObject]@{
        FileName = $_
        SHA256Hash = (Get-FileHash -Path $_ -Algorithm SHA256).Hash
    }
} | Export-Csv -Path "$($path)\matched_files.csv" -NoTypeInformation
