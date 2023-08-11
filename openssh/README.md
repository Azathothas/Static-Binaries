
---
- #### Download [openssh](https://www.openssh.com/)
> - **Sources**
> > ```bash
> > --> Linux:
> >      - https://github.com/Azathothas/static-toolbox
> > 
> > --> Windows:
> >      - https://github.com/PowerShell/Win32-OpenSSH/ [ Latest Beta Releases ]
> > ```
> > 
```bash
!# Get CPU Arch (Android)
[ADB]
adb shell getprop ro.product.cpu.abi
[Termux]
getprop ro.product.cpu.abi

!# Get CPU Arch (Linux)
 uname -m || dpkg --print-architecture

!# Get CPU Arch (Windows)
[cmd prompt]
echo %PROCESSOR_ARCHITECTURE%
[Powershell]
$env:PROCESSOR_ARCHITECTURE

!# Index (ARCH || ALT_ARCH)

!#For Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_config_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sftp_server_aarch64_arm64_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_config_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sftp_server_amd_x86_64_Linux"
--> ARMv7_eabihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_armv7_eabihf_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_config_armv7_eabihf_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sftp_server_armv7_eabihf_Linux"

!#For Windows
--> x86
## msi
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_Windows.msi"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_Windows.zip"
!# Or using powershell
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_Windows.msi" -OutFile "openssh.msi"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_Windows.zip" -OutFile "openssh.zip"
--> amd 64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_64_Windows.msi"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_64_Windows.zip"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_64_Windows.msi" -OutFile "openssh.msi"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_amd_x86_64_Windows.zip" -OutFile "openssh.zip"
--> aarch || arm
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_arm_Windows.zip"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_arm_Windows.zip" -OutFile "openssh.zip"
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_aarch64_arm64_Windows.msi"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_aarch64_arm64_Windows.zip"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_aarch64_arm64_Windows.msi" -OutFile "openssh.msi"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/openssh_aarch64_arm64_Windows.zip" -OutFile "openssh.zip"

```
---
- #### Install openssh
```bash

--> Linux 
!# Copy downloaded openssh binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded openssh binaries to that DIR
 mv "$Path_To_sshd_Binary" "/usr/bin/sshd"
 mv "$Path_To_sftp_Binary" "/usr/bin/sftp"

!# For `sshd_config`
 mkdir -p "/etc/ssh/"
 mv "$Path_To_sshd_config" "/etc/ssh/sshd_config"

!# Give Writeable Perms
 chmod +xwr /usr/bin/ssh* && chmod +xwr /usr/bin/sftp*
```
```powershell
--> Windows

!# Using '.msi' [Recommended]
!# Note that | Out-Host makes sure powershell waits for the installer to finish
!# Auto Installs to `C:\Program Files (x86)\OpenSSH` & Starts sshd in the background
msiexec /i openssh.msi
!# For logs 
msiexec /i openssh.msi /l*vx install.log

# Generate Host Keys
  . "C:\Program Files (x86)\OpenSSH\ssh-keygen.exe" -A
#Fix Perms 
#https://github.com/PowerShell/Win32-OpenSSH/wiki/OpenSSH-utility-scripts-to-fix-file-permissions
  . "C:\Program Files (x86)\OpenSSH\FixHostFilePermissions.ps1" -Confirm:$false | Out-Null
  . "C:\Program Files (x86)\OpenSSH\FixUserFilePermissions.ps1" -Confirm:$false | Out-Null

#Add Public SSH Key
  New-Item -Path "$env:USERPROFILE\.ssh" -ItemType Directory -Force
  #Add SSH Keys
  (Invoke-RestMethod -Uri "https://github.com/Azathothas.keys").Split("`n") | ForEach-Object { if (-not [string]::IsNullOrWhiteSpace($_)) { Add-Content -Path "$env:USERPROFILE\.ssh\authorized_keys" -Value $_ } }
#Configure SSH Config
  $filePath = Join-Path $env:ProgramData "ssh\sshd_config"; if (-not (Test-Path $filePath)) { New-Item -Path (Split-Path $filePath) -Name "sshd_config" -ItemType File }; Add-Content -Path $filePath -Value "PasswordAuthentication yes`nAllowTcpForwarding yes`nPubkeyAuthentication yes"
#Configure Firewall
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName "OpenSSH-Server-In-TCP"
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Outbound -Action Allow -DisplayName "OpenSSH-Server-Out-TCP"
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName "OpenSSH-Server-In-TCP-EdgeTraversal" -EdgeTraversalPolicy Allow
  if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..." New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22} else {Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."}
# Finally Start
Get-Process -Name sshd
Stop-Process -Name sshd -Force 2>$null
Get-Process -Name sshd
Start-Process -Wait -FilePath "C:\Program Files (x86)\OpenSSH\sshd.exe" -WindowStyle Hidden & ; Start-Sleep 5
#--------------------------------------------------------------------------#
!# Check if these work (Skip .zip if these work)
  Add-WindowsCapability -Online -Name OpenSSH.Server*
  choco install openssh -y | Out-Null
#--------------------------------------------------------------------------#
!# Using '.zip' (Only if .msi doesn't work)
!# In PowerShell, To Install
 Expand-Archive -Path .\openssh.zip -Verbose 
 mv openssh C:\Program Files\OpenSSH-Win64

!# To enable & Run
 #Start Service
  . "C:\Program Files\OpenSSH-Win64\install-sshd.ps1"
  . "C:\Program Files\OpenSSH-Win64\ssh-keygen.exe" -A
  Start-Process -Wait -FilePath "C:\Program Files\OpenSSH-Win64\sshd.exe" -WindowStyle Hidden
  Start-Sleep 5
 #Fix Perms 
  #https://github.com/PowerShell/Win32-OpenSSH/wiki/OpenSSH-utility-scripts-to-fix-file-permissions
  . "C:\Program Files\OpenSSH-Win64\FixHostFilePermissions.ps1" -Confirm:$false | Out-Null
  . "C:\Program Files\OpenSSH-Win64\FixUserFilePermissions.ps1" -Confirm:$false | Out-Null
 #Add Public SSH Key
  New-Item -Path "$env:USERPROFILE\.ssh" -ItemType Directory -Force
  #Add SSH Keys
  (Invoke-RestMethod -Uri "https://github.com/Azathothas.keys").Split("`n") | ForEach-Object { if (-not [string]::IsNullOrWhiteSpace($_)) { Add-Content -Path "$env:USERPROFILE\.ssh\authorized_keys" -Value $_ } }
 #Configure SSH Config
  $filePath = Join-Path $env:ProgramData "ssh\sshd_config"; if (-not (Test-Path $filePath)) { New-Item -Path (Split-Path $filePath) -Name "sshd_config" -ItemType File }; Add-Content -Path $filePath -Value "PasswordAuthentication yes`nAllowTcpForwarding yes`nPubkeyAuthentication yes"
 #Configure Firewall
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName "OpenSSH-Server-In-TCP"
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Outbound -Action Allow -DisplayName "OpenSSH-Server-Out-TCP"
  New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName "OpenSSH-Server-In-TCP-EdgeTraversal" -EdgeTraversalPolicy Allow
  if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..." New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22} else {Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."}
 # Finally Start
Start-Process -Wait -FilePath "C:\Program Files\OpenSSH-Win64\sshd.exe" -WindowStyle Hidden ; Start-Sleep 5

#--------------------------------------------------------------------------#
!# For Troubleshooting:
!# Restart openssh daemons & Services
Stop-Process -Name sshd -Force 2>$null
Get-Process -Name sshd   
```

---
```console

--> METADATA
./openssh/INFO.md:                           ASCII text, with very long lines (456)
./openssh/README.md:                         ASCII text, with very long lines (456)
./openssh/openssh_aarch64_arm64_Windows.msi: Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: Arm64;1033, Revision Number: {915CAD16-4168-4E59-9A3B-F7C2549D3BCF}, Create Time/Date: Wed Apr 12 18:17:38 2023, Last Saved Time/Date: Wed Apr 12 18:17:38 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.14.0.4118), Security: 2
./openssh/openssh_aarch64_arm64_Windows.zip: Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_aarch_arm_Windows.zip:     Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_amd_x86_64_Windows.msi:    Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: x64;1033, Revision Number: {BCCD7D56-02D0-4999-97A1-3E894561D5AA}, Create Time/Date: Wed Apr 12 18:16:08 2023, Last Saved Time/Date: Wed Apr 12 18:16:08 2023, Number of Pages: 200, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.11.2.4516), Security: 2
./openssh/openssh_amd_x86_64_Windows.zip:    Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_amd_x86_Windows.msi:       Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: Intel;1033, Revision Number: {9B22DA04-D0AA-476A-8EBF-59DC6A098CD5}, Create Time/Date: Wed Apr 12 18:16:30 2023, Last Saved Time/Date: Wed Apr 12 18:16:30 2023, Number of Pages: 200, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.11.2.4516), Security: 2
./openssh/openssh_amd_x86_Windows.zip:       Zip archive data, at least v2.0 to extract, compression method=store
./openssh/sftp_server_aarch64_arm64_Linux:   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./openssh/sftp_server_amd_x86_64_Linux:      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./openssh/sftp_server_armv7_eabihf_Linux:    ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./openssh/sshd_aarch64_arm64_Linux:          ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./openssh/sshd_amd_x86_64_Linux:             ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./openssh/sshd_armv7_eabihf_Linux:           ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./openssh/sshd_config_aarch64_arm64_Linux:   ASCII text
./openssh/sshd_config_amd_x86_64_Linux:      ASCII text
./openssh/sshd_config_armv7_eabihf_Linux:    ASCII text

--> SHA256SUM
a20f087b995a62048f6c910ccd8474ae47c63067554f0dcebecce216044fdeba  ./openssh/INFO.md
3f62d41316fd7f742f9d3f2a68112187435205ece11365e7ea756d13ab134425  ./openssh/README.md
1c151437e0de8868872616e1c448acf81d774c280eacb4ad963e4a51d5095c09  ./openssh/openssh_aarch64_arm64_Windows.msi
fff11e929f50ab25bf1b38d9fb6116d11e44496fe39498d1b2bd0267f9ea9c2f  ./openssh/openssh_aarch64_arm64_Windows.zip
b6bdb7afd888ce1de6bab9edc5d624d00e7fb41a767c92bc91fc4771e84f870d  ./openssh/openssh_aarch_arm_Windows.zip
93432222cbabe5057bafb6c386dfc12fe7346e78235c1cb343a4326a1695516a  ./openssh/openssh_amd_x86_64_Windows.msi
ec8144a107014740ec3ce16ec51710398fc390fca5344931c1506e7cc2e181f3  ./openssh/openssh_amd_x86_64_Windows.zip
fb7a69d41bb049c15b6ce1747d2894da46db88a2b4ab1c777418e88d5568a083  ./openssh/openssh_amd_x86_Windows.msi
7b132aad088eae3ac67d85751e88d884e80631607cab9b1da52c838655bb5ae6  ./openssh/openssh_amd_x86_Windows.zip
f59a3f9946f355a79fe43b031a2721417a3ef559a246358ea2a9671ab04b07af  ./openssh/sftp_server_aarch64_arm64_Linux
28218d668c0bb45642f34ebc3a1ca8d9f297f2075c8d767a191eddb6db5413e9  ./openssh/sftp_server_amd_x86_64_Linux
5ab82532f651404bbdab17b8209634c08bda01d9c1392d21d6670021a08fdd9b  ./openssh/sftp_server_armv7_eabihf_Linux
f07defd28294bed6e178236a61fea0eb3ce1bd3a8c59b2b19f03e2c30f1e9246  ./openssh/sshd_aarch64_arm64_Linux
79e90637067ad93806629be8525a2d03c17be8f97aed920ab4c48a01497bbe97  ./openssh/sshd_amd_x86_64_Linux
627429bfa8d4aafcf7252653e690215e567f6f143c08d3e6d8f1086293bcde28  ./openssh/sshd_armv7_eabihf_Linux
b29a6aafd672f43a35fda7295f2a5360603d90729e6ab717dac0f73754503005  ./openssh/sshd_config_aarch64_arm64_Linux
f6c2fbaffc1fc3f4f426171d38091206ae1bcc2f8a2dff03cefa5f3519e55a72  ./openssh/sshd_config_amd_x86_64_Linux
b29a6aafd672f43a35fda7295f2a5360603d90729e6ab717dac0f73754503005  ./openssh/sshd_config_armv7_eabihf_Linux
```


---

- #### Sizes

```console
7.1K  ./openssh/INFO.md
13K   ./openssh/README.md
5.1M  ./openssh/openssh_aarch64_arm64_Windows.msi
3.9M  ./openssh/openssh_aarch64_arm64_Windows.zip
3.7M  ./openssh/openssh_aarch_arm_Windows.zip
5.2M  ./openssh/openssh_amd_x86_64_Windows.msi
4.3M  ./openssh/openssh_amd_x86_64_Windows.zip
4.6M  ./openssh/openssh_amd_x86_Windows.msi
3.7M  ./openssh/openssh_amd_x86_Windows.zip
307K  ./openssh/sftp_server_aarch64_arm64_Linux
279K  ./openssh/sftp_server_amd_x86_64_Linux
298K  ./openssh/sftp_server_armv7_eabihf_Linux
4.9M  ./openssh/sshd_aarch64_arm64_Linux
4.7M  ./openssh/sshd_amd_x86_64_Linux
4.9M  ./openssh/sshd_armv7_eabihf_Linux
3.1K  ./openssh/sshd_config_aarch64_arm64_Linux
3.1K  ./openssh/sshd_config_amd_x86_64_Linux
3.1K  ./openssh/sshd_config_armv7_eabihf_Linux
```

---

- #### Version
```console

$ ./openssh/sshd_amd_x86_64_Linux -h
./openssh/sshd_amd_x86_64_Linux: option requires an argument: h
OpenSSH_9.4p1, OpenSSL 3.1.2 1 Aug 2023
usage: sshd [-46DdeGiqTtV] [-C connection_spec] [-c host_cert_file]
            [-E log_file] [-f config_file] [-g login_grace_time]
            [-h host_key_file] [-o option] [-p port] [-u len]
