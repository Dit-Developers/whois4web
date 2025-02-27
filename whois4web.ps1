param (
    [string]$Domain
)

# Automated DNS Lookup Script in PowerShell

# Banner
$Banner = @"
           __          _      __ __               __  
 _      __/ /_  ____  (_)____/ // /_      _____  / /_ 
| | /| / / __ \/ __ \/ / ___/ // /| | /| / / _ \/ __ \
| |/ |/ / / / / /_/ / (__  )__  __/ |/ |/ /  __/ /_/ /
|__/|__/_/ /_/\____/_/____/  /_/  |__/|__/\___/_.___/
                                            https://msuport.vercel.app
"@
Write-Host $Banner -ForegroundColor Cyan
Write-Host "Developed by Muhammad Sudais Usmani" -ForegroundColor Yellow

# Check if nslookup is installed
$nslookupCheck = Get-Command nslookup -ErrorAction SilentlyContinue
if (-not $nslookupCheck) {
    Write-Host "nslookup is not available. Please ensure it is installed." -ForegroundColor Red
    exit
}

if (-not $Domain) {
    $Domain = Read-Host "Enter the domain name"
}

# Function to perform advanced DNS lookup
function Get-DNSInfo {
    param (
        [string]$Domain
    )
    
    try {
        Write-Host "Fetching DNS Records for: $Domain" -ForegroundColor Cyan
        Write-Host "A Record:" -ForegroundColor Yellow
        nslookup -type=A $Domain | Out-String
        
        Write-Host "AAAA Record:" -ForegroundColor Yellow
        nslookup -type=AAAA $Domain | Out-String
        
        Write-Host "CNAME Record:" -ForegroundColor Yellow
        nslookup -type=CNAME $Domain | Out-String
        
        Write-Host "MX Record:" -ForegroundColor Yellow
        nslookup -type=MX $Domain | Out-String
        
        Write-Host "NS Record:" -ForegroundColor Yellow
        nslookup -type=NS $Domain | Out-String
        
        Write-Host "TXT Record:" -ForegroundColor Yellow
        nslookup -type=TXT $Domain | Out-String
        
    } catch {
        Write-Host "Failed to retrieve DNS information." -ForegroundColor Red
    }
}

# Perform DNS Lookup
Get-DNSInfo -Domain $Domain
