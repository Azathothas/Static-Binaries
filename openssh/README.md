
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
!# If have conda, then install via conda
 conda install -c conda-forge openssh


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
./openssh/openssh_aarch64_arm64_Windows.msi: Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: Arm64;1033, Revision Number: {D032C4AA-0893-427E-BD14-B53C03C8950D}, Create Time/Date: Wed Dec 13 16:56:38 2023, Last Saved Time/Date: Wed Dec 13 16:56:38 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.14.0.4118), Security: 2
./openssh/openssh_aarch64_arm64_Windows.zip: Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_aarch_arm_Windows.zip:     Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_amd_x86_64_Windows.msi:    Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: x64;1033, Revision Number: {35EC8F95-208B-49C9-ACA0-27A8A98D59D2}, Create Time/Date: Wed Dec 13 16:51:40 2023, Last Saved Time/Date: Wed Dec 13 16:51:40 2023, Number of Pages: 200, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.11.2.4516), Security: 2
./openssh/openssh_amd_x86_64_Windows.zip:    Zip archive data, at least v2.0 to extract, compression method=store
./openssh/openssh_amd_x86_Windows.msi:       Composite Document File V2 Document, Little Endian, Os: Windows, Version 10.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: OpenSSH, Author: Microsoft Corporation, Keywords: Installer, Comments: This installer database contains the logic and data required to install OpenSSH., Template: Intel;1033, Revision Number: {F561FF71-C02E-4453-80D4-EE4A747F4079}, Create Time/Date: Wed Dec 13 16:57:16 2023, Last Saved Time/Date: Wed Dec 13 16:57:16 2023, Number of Pages: 200, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (3.11.2.4516), Security: 2
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
b199e119075255d47303b9040322ce41a8ad362ca2da8f5da7376bce11cca8f3  ./openssh/INFO.md
5c6b6ece5e628e94636df9f540057a488fa8c0c48b2eff05fee0729079b90bb6  ./openssh/README.md
20c1ddaa6ba0bf0cb01997d6628cadd98efef8e5ef2431f9f03abe5fe885f281  ./openssh/openssh_aarch64_arm64_Windows.msi
e6a7e39266485eb98ce5396c61a9931e7826502c71bf5234dfdda5bee3882f23  ./openssh/openssh_aarch64_arm64_Windows.zip
1de8a11417ed1a5e9bbc7c34a0f2e26f48f6c9e657633a0b9bf180e7fec90fa5  ./openssh/openssh_aarch_arm_Windows.zip
6333f5b38313360a2c960ea7afa3086002f479bad663f20f92a4889063fe925c  ./openssh/openssh_amd_x86_64_Windows.msi
bd48fe985d400402c278c485db20e6a82bc4c7f7d8e0ef5a81128f523096530c  ./openssh/openssh_amd_x86_64_Windows.zip
76855b7b474ac9686b5cfb8b1da0586161bf460d0328825acf410082976368fa  ./openssh/openssh_amd_x86_Windows.msi
9245c9ff62d6d11708cb3125097f8cd5627e995c225d0469cf2c3c6be4014952  ./openssh/openssh_amd_x86_Windows.zip
f3d275070dc64d7f5fb278795a0bca34df77f4f19280d58a4a18ecca4b5ba1ff  ./openssh/sftp_server_aarch64_arm64_Linux
2cba45068ceccd7f04342f3ee884ccb0534cbba80573dc9f6ff19b6131032b22  ./openssh/sftp_server_amd_x86_64_Linux
e8ed57f7cf1b93e4edb77e7b85b0792c3001a4b2d9da5f2e41f3c59bf21125cc  ./openssh/sftp_server_armv7_eabihf_Linux
96ca7c17381b7e10ac966be6cc879d258b94e487955e2934a8d99e39e071f80e  ./openssh/sshd_aarch64_arm64_Linux
b16dd941f04f5e94c4a688743b974c9b9486851d747f1b242d5b0d03b1c8cc3c  ./openssh/sshd_amd_x86_64_Linux
f41d468478df0f5355dbd527272a7ef4f9d0cdbbe554ec089cd1f2e61359c8bf  ./openssh/sshd_armv7_eabihf_Linux
b29a6aafd672f43a35fda7295f2a5360603d90729e6ab717dac0f73754503005  ./openssh/sshd_config_aarch64_arm64_Linux
f6c2fbaffc1fc3f4f426171d38091206ae1bcc2f8a2dff03cefa5f3519e55a72  ./openssh/sshd_config_amd_x86_64_Linux
b29a6aafd672f43a35fda7295f2a5360603d90729e6ab717dac0f73754503005  ./openssh/sshd_config_armv7_eabihf_Linux
```


---

- #### Sizes

```console
9.5K  ./openssh/INFO.md
15K   ./openssh/README.md
5.2M  ./openssh/openssh_aarch64_arm64_Windows.msi
4.0M  ./openssh/openssh_aarch64_arm64_Windows.zip
3.9M  ./openssh/openssh_aarch_arm_Windows.zip
5.5M  ./openssh/openssh_amd_x86_64_Windows.msi
4.7M  ./openssh/openssh_amd_x86_64_Windows.zip
4.9M  ./openssh/openssh_amd_x86_Windows.msi
4.0M  ./openssh/openssh_amd_x86_Windows.zip
275K  ./openssh/sftp_server_aarch64_arm64_Linux
266K  ./openssh/sftp_server_amd_x86_64_Linux
290K  ./openssh/sftp_server_armv7_eabihf_Linux
4.8M  ./openssh/sshd_aarch64_arm64_Linux
4.8M  ./openssh/sshd_amd_x86_64_Linux
5.0M  ./openssh/sshd_armv7_eabihf_Linux
3.1K  ./openssh/sshd_config_aarch64_arm64_Linux
3.1K  ./openssh/sshd_config_amd_x86_64_Linux
3.1K  ./openssh/sshd_config_armv7_eabihf_Linux
```

---

- #### Version
```console

$ ./openssh/sshd_amd_x86_64_Linux -h
./openssh/sshd_amd_x86_64_Linux: option requires an argument: h
OpenSSH_9.7p1, OpenSSL 3.2.1 30 Jan 2024
usage: sshd [-46DdeGiqTtV] [-C connection_spec] [-c host_cert_file]
            [-E log_file] [-f config_file] [-g login_grace_time]
            [-h host_key_file] [-o option] [-p port] [-u len]
