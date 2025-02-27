# Automated DNS Lookup Script in PowerShell
```bash
           __          _      __ __               __  
 _      __/ /_  ____  (_)____/ // /_      _____  / /_ 
| | /| / / __ \/ __ \/ / ___/ // /| | /| / / _ \/ __ \
| |/ |/ / / / / /_/ / (__  )__  __/ |/ |/ /  __/ /_/ /
|__/|__/_/ /_/\____/_/____/  /_/  |__/|__/\___/_.___/ 
                                            https://msuport.vercel.app
```
## Overview
This PowerShell script automates the process of retrieving DNS records for a given domain using `nslookup`. It supports A, AAAA, CNAME, MX, NS, and TXT record lookups.

## Features
- Retrieves multiple DNS record types.
- Interactive domain input.
- Ensures `nslookup` is installed before execution.
- Displays results in a readable format.

## Prerequisites
- Windows operating system with PowerShell installed.
- `nslookup` command available in the system.

## Usage
### Run the Script
1. Open PowerShell.
2. Navigate to the directory where the script is located.
3. Execute the script with the following command:
   ```powershell
   .\whois4web.ps1 -Domain google.com
   ```
4. Alternatively, if no domain is provided, the script will prompt for input.

## Example Output
```
 Shell> .\whois4web.ps1  -Domain google.com
           __          _      __ __               __  
 _      __/ /_  ____  (_)____/ // /_      _____  / /_ 
| | /| / / __ \/ __ \/ / ___/ // /| | /| / / _ \/ __ \
| |/ |/ / / / / /_/ / (__  )__  __/ |/ |/ /  __/ /_/ /
|__/|__/_/ /_/\____/_/____/  /_/  |__/|__/\___/_.___/
                                            https://msuport.vercel.app
Developed by Muhammad Sudais Usmani
Fetching DNS Records for: google.com
A Record:
Non-authoritative answer:
Server:  UnKnown
Address:  192.168.100.1

Name:    google.com
Address:  142.250.181.14


AAAA Record:
Non-authoritative answer:
Server:  UnKnown
Address:  192.168.100.1

Name:    google.com
Address:  2a00:1450:4019:809::200e


CNAME Record:
Server:  UnKnown
Address:  192.168.100.1

google.com
        primary name server = ns1.google.com
        responsible mail addr = dns-admin.google.com
        serial  = 731243738
        refresh = 900 (15 mins)
        retry   = 900 (15 mins)
        expire  = 1800 (30 mins)
        default TTL = 60 (1 min)

MX Record:
Non-authoritative answer:
Server:  UnKnown
Address:  192.168.100.1

google.com      MX preference = 10, mail exchanger = smtp.google.com

NS Record:
Non-authoritative answer:
Server:  UnKnown
Address:  192.168.100.1

google.com      nameserver = ns1.google.com
google.com      nameserver = ns4.google.com
google.com      nameserver = ns3.google.com
google.com      nameserver = ns2.google.com

TXT Record:
Non-authoritative answer:
Server:  UnKnown
Address:  192.168.100.1

google.com      text =

        "cisco-ci-domain-verification=479146de172eb01ddee38b1a455ab9e8bb51542ddd7f1fa298557dfa7b22d963"
google.com      text =

        "google-site-verification=wD8N7i1JTNTkezJ49swvWW48f8_9xveREV4oB-0Hf5o"
google.com      text =

        "docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e"
google.com      text =

        "facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95"
google.com      text =

        "google-site-verification=TV9-DBe4R80X4v0M4U_bd_J9cpOJM0nikft0jAgjmsQ"
google.com      text =

        "MS=E4A68B9AB2BB9670BCE15412F62916164C0B20BB"
google.com      text =

        "onetrust-domain-verification=de01ed21f2fa4d8781cbc3ffb89cf4ef"
google.com      text =

        "globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8="
google.com      text =

        "v=spf1 include:_spf.google.com ~all"
google.com      text =

        "google-site-verification=4ibFUgB-wXLQ_S7vsXVomSTVamuOXBiVAzpR5IZ87D0"
google.com      text =

        "apple-domain-verification=30afIBcvSuDV2PLX"
google.com      text =

        "docusign=1b0a6754-49b1-4db5-8540-d2c12664b289"

```

## Repository
Find this script on GitHub: [whois4web](https://github.com/Dit-Developers/whois4web)

## Author
**Muhammad Sudais Usmani**  
[msuport.vercel.app](https://msuport.vercel.app)
