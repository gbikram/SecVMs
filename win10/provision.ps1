# Install Chocolatey if not installed
$choco_command = Get-Command choco
if(-Not $choco_command) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Disable AV
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-MpPreference -DisableRealtimeMonitoring $true

# Runtime Apps
choco install -y googlechrome
choco install -y firefox
choco install -y thunderbird
choco install -y office-tool
# To-do --> Run office tool
choco install -y adobereader
choco install -y python3
choco install -y python2
# To-do --> Java

# Utility Apps
choco install -y 7zip
choco install -y notepadplusplus
choco install -y git
choco install -y vim

# Network Analysis
choco install -y wireshark
choco install -y fiddler
choco install -y tcpview
choco install -y netcat
choco install -y burp-suite-free-edition
Invoke-WebRequest https://github.com/fireeye/flare-fakenet-ng/releases/download/v1.4.11/fakenet1.4.11.zip -OutFile C:\Tools\fakenet.zip

# Registry Analysis
choco install -y regshot
choco install -y autoruns

# Process Analysis
choco install -y procmon
choco install -y procexp
choco install -y processhacker
Invoke-WebRequest http://www.rohitab.com/download/api-monitor-v2r13-setup-x64.exe -OutFile C:\Tools\api-monitor-v2r13-setup-x64.exe

#  PE Analysis
Invoke-WebRequest https://www.winitor.com/tools/pestudio/current/pestudio.zip -OutFile C:\Tools\Pestudio.zip
Invoke-WebRequest https://public.boxcloud.com/d/1/b1!UAYwUe9fSOZY1a2EIfbE3dV_IotUIZI7TvRuwq31qei-KxbISLV_3N9IVGMGdgQmZNWYFcWT2r3eio-uV8aK6l5IVCtp4j1_-vuFJHzSStW1LalL2xvKLxLO1eP7tPzcgSHcHh0HFyEmSq0vB3P59lbeKA7YEFMGxvw10L5MJjztFJOx3gBt2bDgfUlLJEFjvKgpar3h2q99Yz1_QCAfWV8OI10nw8-54rVpMIZorMtVzLDeVb4boCNfkAO5lzZjP0-HyCZFalI61vintUFs9Eo8afSYl7YqEjhufTBTCVWXWmBD6pEtBbGcLlvK5LZMwJN5e5tSqufyrExEySpBprotGDBVtmhx7pp6Q1_Kd4P5Ubrdcrwjm156xxgLAB6mNAA_nMjuhDoagv4uX0RBO80wHzhSDIxWkRISFyDHC6sku30Jv2b4B7m0PkeYVNGnfaYFzTxdqznxlvzsG8ORXy9pbkqx-k8tV4OMn9SlGK_Y1HEWDvLo1ELDrbjcxFc-ks6beywe7xSa8HrsNxECiqcXNX4i_piqdHSxNNzXi-NbKNNAO4YO7VnezXvwYOJenYZllfrPGSRJfBgT0ZWpNLocj6DJkL-3w-mhLjLmNvIqSb5rCyWgCIuAfYeIKc5kwD1IdarxkzW6nSflSA3csrMim1KDESQdvlHtn-0MlzCA94_DeA2NSoDzvOKBEEOem-J4_40l63e5l3w0jyr3qfUi_B4bkb0Aip3Md9ZTutaeuwdZ47xxJCWFTSWfj4lQsr9zTBz3ufL5Rcf9msvJSCVKu0Uvdh3zQjc_rFT3ICc-zPtDYMT9OWLfjKelw0NYTRJyPUCV6_nHGUlsZQxu389xKza0FriMNVZO8gNPqAV3D-vJ84hOtoV_n4KT2pPnm9hlRWri3ENjV7M4JAKN8lxdPxJH0s6wsSVA6Y6IjTT4wENaSW40yZVuP2HsggX8CQ9l0yKHSDnbt884m5rQzku7dpYuZo6obuKKwuKgph958Wt1e8r1EMlIwAnI6zVFanp-vQDcxXsk4h-47OJxUZgr7JYxM-utX-CxXN1EWN4Fa1ABByjPdqIESToQpWclgoBC3NHahuKztbF5GIcNFTu3JI_x9dI_IVs4IypXLhxZYE_lW3GZBRANM4jm6NM9p1EJW731xwdWVgW7TqCtqM9l3al6pQdYJCWNV97lY0LgvdJJYRkE6SxabN6HvZIojowF4JxtyxYDFK16c2_V8H1ptCglT-EyfsOJ1e_l/download -OutFile C:\Tools\Exeinfo.zip
Invoke-WebRequest https://gironsec.com/code/PackerBreaker.zip -OutFile C:\Tools\PackerBreaker.zip
Invoke-WebRequest http://b2b-download.mcafee.com/products/tools/foundstone/bintext303.zip -OutFile C:\Tools\-bintext303.zip 
Invoke-WebRequest https://softpedia-secure-download.com/dl/73e2c4be588ac7926f2e3de99eead9e6/5f421998/100004102/software/programming/PEiD-0.95-20081103.zip -Outfile PEiD-0.95-20081103.zip

# Debugger
choco install -y ollydbg
Install-Module -Name WinDbg

# Forensics
choco install -y autopsy
