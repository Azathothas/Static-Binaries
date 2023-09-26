
---
- #### Download [TailScale](https://tailscale.com/kb/installation/)
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using dockercross (Dynamic Only)
> >      - Currently this fails with: loadinternal: cannot find runtime/cgo
> >      - Maybe : https://chat.openai.com/share/541d5f9a-c40d-4eed-8f62-f9e6fa97022a
> >              : https://github.com/ykasidit/android_ndk_c_rust_go_builder
> >              : https://github.com/xxf098/go-tun2socks-build/blob/lite/.github/workflows/main.yml
> >              : https://pkg.go.dev/golang.org/x/mobile/cmd/gomobile?utm_source=godoc
> > 
> > --> Linux:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
> >      - Binaries for 'ppc64' | 'ppc64le' | 's390x' are compiled using go crosscompile
> >      - 'tailscale_merged' is a combined & smaller binary with some omitted features
> >        - !# https://tailscale.com/kb/1207/small-tailscale/
> >        - Build Flag: CGO_ENABLED=0 go build -o tailscale.combined -v -ldflags="-s -w -extldflags '-static'" -tags "ts_omit_aws,ts_omit_bird,ts_omit_tap,ts_omit_kube,ts_include_cli" "./cmd/tailscaled"
> >
> > --> macOS:
> >      - All binaries are compiled & built using macOS runner Image & go cross compile
> >      - 'tailscale_merged' is a combined & smaller binary with some omitted features, built using same flags as Linux
> > 
> > --> Windows:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
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
!# For upx, simply append .upx
!# Example: curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Linux"
!#     Upx: curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Linux.upx"


!#For Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_systemd.service_Linux"
--> Amd Geode || x86_64 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_geode_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_systemd.service_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_systemd.service_Linux"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_arm_abi_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_arm_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_systemd.service_Linux"
--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_systemd.service_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_systemd.service_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mipsle_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_systemd.service_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_systemd.service_Linux"
--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_systemd.service_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_powerpc64_ppc64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_powerpc64_ppc64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_powerpc64_ppc64_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_powerpc64le_ppc64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_powerpc64le_ppc64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_powerpc64le_ppc64le_Linux"
--> risc64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_riscv64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_systemd.service_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_s390x_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_s390x_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_s390x_Linux"

!#For macOS
--> aarch64 || arm64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_macOS"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_macOS"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_x86_64_macOS"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_macOS"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_amd_x86_64_macOS"

!#For Windows
--> x86 || x86_64 || arm64 --> EXE
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_setup_Windows.exe"
!# Or using powershell
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_setup_Windows.exe" -OutFile "tailscale_setup.exe"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_ipn_setup_Windows.exe"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_ipn_setup_Windows.exe" -OutFile "tailscale_ipn_setup.exe"
--> aarch64 || arm64 -> MSI  
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Windows.msi" 
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Windows.msi" -OutFile "tailscale_arm64_setup.msi"
--> amd || x86_64 -> MSI  
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_x86_64_Windows.msi"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_x86_64_Windows.msi" -OutFile "tailscale_amd64_setup.msi"
--> amd || x86 -> MSI  
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_x86_Windows.msi"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_x86_Windows.msi" -OutFile "tailscale_x86_setup.msi"



```
---
- #### Install TailScale
```bash
--> For '.upx' packed files # check if it's not corrupted: https://github.com/Azathothas/Static-Binaries/tree/main/tailscale#upx
!# Decompress
upx -d "$BIN.upx" -o "$BIN"
!# And also optionally verify sha256sum (Compare it with sha256sum pasted on this page)
sham256sum "$UNPACKED_UPX_BIN"

--> Linux || macOS
!# Recommended way to install Tailscale is:
 curl -fsSL https://tailscale.com/install.sh | sh
!# But this requires `root` | `sudo` access and doesn't work on all ARCHS
!# Compile Dynamically using go (Mac OS etc.)
  go install -v tailscale.com/cmd/tailscale@main
  go install -v tailscale.com/cmd/tailscaled@main
!# Equivalent of systemd.service
sudo $HOME/go/bin/tailscaled install-system-daemon
->> /Library/LaunchDaemons/com.tailscale.tailscaled.plist

!# Copy downloaded tailscale binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded tailscale binaries to that DIR
 mv "$Path_To_tailscale_Binary" "/usr/bin/tailscale"
 mv "$Path_To_tailscaled_Binary" "/usr/bin/tailscaled"

!# For 'merged' | combined binaries, symlink them
 cd "$DIR_To_tailscale_merged_Binary"
 ln -s "$Path_To_tailscale_merged_Binary" tailscale
 ln -s "$Path_To_tailscale_merged_Binary" tailscaled

!# For Systemd Services, you have to move them to
'/etc/systemd/system/' || '/etc/default/'
!# Examples:
 sudo cp "tailscaled_riscv64_systemd.service" "/etc/systemd/system/"
 sudo cp "tailscaled_riscv64_systemd.defaults" "/etc/default/"

!# Give Writeable Perms
 chmod +xwr /usr/bin/tailscale*
```
```powershell
--> Windows
!# Using '.exe' [Recommended]
!# In PowerShell, To Install
Start-Process -Wait -FilePath ".\tailscale-setup.exe" -ArgumentList "/install", "/quiet" ; Start-Sleep -Seconds 10
!# To enable & Run
Start-Process -NoNewWindow -FilePath "C:\Program Files\Tailscale\tailscale.exe" -ArgumentList "up", "--unattended", --hostname="$HOSTNAME", --authkey="$TSKEY"

!# Using '.msi'
!# Ref: https://github.com/tailscale/tailscale/issues/2137#issuecomment-1137058471
!# Note that | Out-Host makes sure powershell waits for the installer to finish
!# This runs the installer which places: "tailscale.exe" | "tailscaled.exe" | "tailscale-ipn.exe" >>  "C:\Program Files\Tailscale\"
& msiexec /i "tailscale-setup.msi" /quiet | Out-Host
!# IPN --> Establishes connection between TailScale Cloud Control Panel & Local [https://pkg.go.dev/tailscale.com/ipn]
& "C:\Program Files\Tailscale\tailscale-ipn.exe" ; Start-Sleep -Seconds 10
!# This starts Tailscale in unattended mode
Start-Process -NoNewWindow -FilePath "C:\Program Files\Tailscale\tailscale.exe" -ArgumentList "up", "--unattended", --hostname="$HOSTNAME", --authkey="$TSKEY" ; Start-Sleep -Seconds 10

!# For Troubleshooting:
!# Restart Tailscale daemons & Services
net stop Tailscale
net start Tailscale
sleep 4
& "C:\Program Files\Tailscale\tailscale.exe" status
sleep 2
net stop Tailscale
taskkill /im tailscale-ipn.exe /f
net start Tailscale
sleep 4
& "C:\Program Files\Tailscale\tailscale.exe" status
```

---
```console

--> METADATA
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=6DER_pqDdNcvoqWPtURL/CAnD_3jhZdWeohzX0gBh/qW_nrFBY8UbU-ZDm3Cu6/7tv4Yls9gnlCEwUSKYo2, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {AE289340-C413-4AE6-81B0-93F079ED46C9}, Create Time/Date: Mon Sep 25 19:44:10 2023, Last Saved Time/Date: Mon Sep 25 19:44:10 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_aarch64_arm64_macOS.upx:               Mach-O 64-bit arm64 executable, flags:<|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=y014WK5AWlLNFdLTizZs/Xxv6BmGMhVflsp5aBaix/DeM4SxkRujo-auX0delA/IZbH9jwoSGvoRDro-X_P, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=a4SwAZs1qJjCU-QxQvE4/MFrco3d140R1gEDtFtvO/-GMVuL_0HsrtZNlrRUNL/lgI7k_ku8Z5g0J6s_8i4, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {0F32DF9C-1775-4FB4-BEB9-48F796E31365}, Create Time/Date: Mon Sep 25 19:44:04 2023, Last Saved Time/Date: Mon Sep 25 19:44:04 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_amd_x86_64_macOS.upx:                  Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=au2qGbcz1IcRA6jMCmQQ/O-QC7AhZ2oQ0_uChRYPF/nDaztz5IxqQYDCC9CVNZ/iMDD88-GHvnGlg30vxJV, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=PIRiBdEVSGCjD5WWFLtu/dNJeXko16reR3UmX-9nB/zMwhDN8rGxw7sTkQAcqj/Zhy38gIjXnORW96rltnF, stripped
./tailscale/tailscale_i386_Linux.upx:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_ipn_setup_Windows.exe:                 PE32 executable (GUI) Intel 80386, for MS Windows, Nullsoft Installer self-extracting archive
./tailscale/tailscale_merged_aarch64_arm64_Linux:            ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=XyuvnLtnbu8coX1RUc03/XkStCvBe5KCjv1xcGS07/xz9eH3S3rduSAd7WfgDc/0VY4n9F_JBZyoTI6u0uc, stripped
./tailscale/tailscale_merged_aarch64_arm64_macOS:            Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_merged_aarch64_arm64_macOS.upx:        Mach-O 64-bit arm64 executable, flags:<|PIE>
./tailscale/tailscale_merged_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=F6e4l_Yhizim3ADCmxAW/rVABocwZskzM2vwspoa8/udLSr3TcT4pNWm9rEHdm/oTDw5zJ5o6PDXwibEl4n, stripped
./tailscale/tailscale_merged_amd_x86_64_macOS:               Mach-O 64-bit x86_64 executable
./tailscale/tailscale_merged_amd_x86_64_macOS.upx:           Mach-O 64-bit x86_64 executable
./tailscale/tailscale_merged_arm_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=r7Q06ghYc1aICHeBs_qG/lDXJM3yRl9T83WB-KDUC/TUDs0a6kcgm1r3GhUsm8/naD9kOeplQ6PLJhEyzJe, stripped
./tailscale/tailscale_merged_i386_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=QVIRhIiFQE5d5y9Ndp3J/g23J0qoDraiNT94FL6ys/msJoXiOISBh85c8HZV6W/R25aPU-_zV2r5FxYRSNJ, stripped
./tailscale/tailscale_merged_powerpc64_ppc64_Linux:          ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=PrCnTH5dBc_iTf6yo3Go/nhrvPBTT2mbNfd9Nsfz4/kV2o8AbgoP5wJnxfOkO9/xzmUBDLSrYM2G39EaPs-, stripped
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=H-F250sGuDnVAqeJiqZ0/0ruUopt8lgDB7GOiYqQC/K2t8tHdL-Y4iXZFAfXsE/zOyFHlrxs1HBbefHYEEU, stripped
./tailscale/tailscale_merged_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=E4JBTIs13nsVPsARoOjV/SsLD_PDUV461mPM4MNO9/6iigRBogvGt_uXU7Nhbd/zgXFU5C9ej5xOxwhmqhl, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=uMTA1reqZBtetoKboI-X/JWKuMCeDPqrTq125FXZo/YLX8fMqGNreqoiLz836Q/jOv9EM0-huw242ocqwE7, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=oi2vJndhVDL_oOvpHpRE/DpLpXIIYmVVGQapWVbX1/Uk_rAlb2KJRiQR-h8DiA/OzO-xH4Jj3NEwndATLjP, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=07iLLTqS6iZAg0SJqpOo/OzHKprDTLFOWByTaUK_y/-WwfhVz4nwcTlbOS6_W0/EJrsn310UfGO-Lpp5cqd, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=OSgHSV8s58qxxQxot4Zf/PyG9ERM7RM5Q64wXB9Ai/dMRSG5apBR2lzbjMKS7G/PofB8czS0FFM8gSVlUCU, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=2g6REOCHT7db_Z0xx4ch/pKCh73FpAyoGENFzhFzn/C9D_JzV_zpde6UU0aVCF/JHqQXBwFlJx3DMZu2Pgf, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qvhzXOu_zRa1u0rDTGKp/ZF-mCASRuTw-QuabTciP/7z17-H8wHilfVga93M3i/ROpkSpQmtb3HMInEACKb, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=M0BHROR_1viwxQtRbpM2/SfHF08QPPeboQkIrlrEf/A-MxttFO6AMa0TJRkh-2/2ub4eJkgEAvg_iGHGTH_, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=zG8gWjQTfUYb-75ngM6o/w94kBQ0INfHIe6PNXUAz/RU7vlh6dU7UitWxpGeQT/_6nCRP8YY1t7HHQKeCcl, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {296E2A11-46CD-4A3E-A286-81EC8BD6E557}, Create Time/Date: Mon Sep 25 19:44:04 2023, Last Saved Time/Date: Mon Sep 25 19:44:04 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=0elZz42ubNA8PIJs8elO/2_MPsKXYNEFk76ubCRS5/LSU3VckBdA_AYruJEvsB/HN2vnR5JOAQLMVGrB7iF, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_aarch64_arm64_macOS.upx:              Mach-O 64-bit arm64 executable, flags:<|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=RevfQeRxIwOzhhTjMezb/STSGKfJyjX8GmynEdVfG/LzhbmERTjIDgwD_5vmyM/rO6dd_koAtWhOjptdWQm, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=oPcIu0t2Ca8Bh7I5aEjq/W699iLcOVB9Y4EEEMgt5/DK9isSW1AluGCcgR114o/3906GbgGxlxoNdCW-fpp, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_amd_x86_64_macOS.upx:                 Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=SFSl7gOSpDuhCcCvmfOc/gZ3mZ3KAoK2pcB--sf-K/lmXmykJUnxfg2AIaj21t/OODU6j7ihDY_sDkU57ez, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=_sWpmFjZ9SvkLddXLMWt/mawVWVGBZnSpk2hG1rlQ/alffFJJbckzs4VHN297A/uPw0tHEO-dZwK_E9ysQU, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=9rj3i1eRSlCRcEkBztJq/vSmrUe-QimPEIcKcQ4LS/0ZbL1JhZPAq7hLaGXFCa/DE0xGfP_z0K6jTjq4vHr, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=Z6vjGqY7uOrRvmGoetEO/JVFZAe5UOdnYRYkWdtPx/dhq8OMBNXqN2JWIZ6-3k/dUvAsL61O6wtol02bBjk, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=E1ehUyqdXQpW4rOayyJf/6Y84-Wq7FXDHZYuMQcIe/LLVX3ordbDzEBE-IxW-l/tBUVYmTt0vPre1kioBzo, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=xoWVD_PVi7lX-JBHWDBo/4FZGdW-O2HMQRPUldKPr/yvHWOvvxVozUQnYVME0V/avb_8LpaiQa8tL-GCw2V, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=hskT2LZO3JUpOkxDexAp/C9rPJKpdPJqp3yt0miCf/HA4Ys59cLrbtRXuOdFED/sloWqD7uXl-hGktCOYiO, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=AK6-UpOWV3HDWNBxT91G/y8fte-ifdmLGw6JT2Vvx/8QZPXWQK8wx_80IV-njL/WACrtwiXPCQT4t5iVd2r, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=dGrPCA2BcgbIJ7bimGHn/D-_whfSFIdNFUmkkc6ds/dV5PVWFcOykKPjfQ0PaV/wfa8eCBpnFxKeQXcIzTJ, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=2g1YmUnn1hMw62TlkGWl/aoO14quFCnPkJTOwSjcx/5hYtWQtdgncN_Z7GDAyn/2XCeJMIfut63R1dSP91B, stripped

--> SHA256SUM
b4a1ca69332d97f7ab6369d90fe3d16bd7a48b9a2a14524c577c7ab0b0dab031  ./tailscale/tailscale_aarch64_arm64_Linux
e44674e70491a3fb845713e6aa7480fbe3f45a5353619fefd00836f363ccff97  ./tailscale/tailscale_aarch64_arm64_Linux.upx
52ff2a37123fdccc8d5a9b4a11f183b724e404c295160451382c7f38834037d7  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
1ca4dc9717861d0cbc61682447f6f24d44ff789d0d91b3beb65d197b6837f6bf  ./tailscale/tailscale_aarch64_arm64_macOS.upx
395ef793c72841bcb1d38cb9a72da529c38e57c8af8c607be49fdf84982530fe  ./tailscale/tailscale_amd_geode_Linux
5edf5e3cc2e08f7d762c4afdd436bac4a3865fe410c3ca9edfdeafcb0d8c6543  ./tailscale/tailscale_amd_geode_Linux.upx
20d7f72011f138fd60c4acf0d1f17c28ae01f9958e9b4a9c6b013c8201740e8b  ./tailscale/tailscale_amd_x86_64_Linux
ba9f31136b071853283eca3322b95f9194502632149b8a05a9106dcb6bafbebe  ./tailscale/tailscale_amd_x86_64_Linux.upx
ce25b55b12407eace15ea80e9dae39f15512ebd6b876ceb6746689afcbca0372  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
9bb5ddba5e09e4992ccb946d89aa49d6397da4731601e74c2220ff618f3b4bc0  ./tailscale/tailscale_amd_x86_64_macOS.upx
87efb47e9bdd618f4c7da0992d1e73414f8190ba73cae7ddc8825e6a2440e9bd  ./tailscale/tailscale_arm_abi_Linux
20fb40a011a46444903e224874f1fa56d3c9fda4be9ff01dc53151a11b9454e3  ./tailscale/tailscale_arm_abi_Linux.upx
f9d282705376cebf83003bb35756bca2305c0f20662e0e433c543b3aaa792cca  ./tailscale/tailscale_i386_Linux
c4086baf100bc03c08477046ea98b7d1744e0d189ddd8459dc65472514cf323c  ./tailscale/tailscale_i386_Linux.upx
651f904391805b96e4ddbec9e1f7dc5ffbb27732498ec1cfb84b437c58c56b27  ./tailscale/tailscale_ipn_setup_Windows.exe
9605b59aecb09e76811d923104a9e74a63cd5e59d4dd34a1655832f3a526f82e  ./tailscale/tailscale_merged_aarch64_arm64_Linux
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
ecde29176fa473adc40c823ec667e70c46aeb8a23bb07856e92aeaf1f32f745a  ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx
075b1f20fd81e45edc168edcd1fe5b2f4e5a1c68965fe359498077dd14cb07e8  ./tailscale/tailscale_merged_amd_x86_64_Linux
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
97fbdf90372a742b60b3a691f562f61e0a72c7315f016d551cf25dd390ab2b0f  ./tailscale/tailscale_merged_amd_x86_64_macOS.upx
a23d5fdc6a4c5688e830790fc0b1424bde7c3040ec0c45e74834abf88d90ef83  ./tailscale/tailscale_merged_arm_Linux
4403a7196256361c2d1fbdca43596cd6d044641f0e23eca1b728446070bc21c6  ./tailscale/tailscale_merged_i386_Linux
f20ae47045af2b2dec76b0b26dd960e7f3ffe2e27ef71cc12552622157cace0f  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
0ea5dbb0e64f13df5c8a187160818d39f5ecd64937b8fcd1e12afbbc607f248d  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
7aac28eebe7aab5d11b38c231740e137b99cff909eab74aa94e50d5126c84087  ./tailscale/tailscale_merged_s390x_Linux
0fc3a75a4bcdca937552ee266c91b8b3fec38bf87f7087df83e388c9a1fe7bc2  ./tailscale/tailscale_mips64_Linux
13d50e7298456e0c63dad0a9b5a20410d49c6de7fdc59c88f377c92941bac4d5  ./tailscale/tailscale_mips64le_Linux
6427810b9a987f89dc99b6d12fe3d30a36bf646e69b0f3837a68c5b25b016c7b  ./tailscale/tailscale_mips_Linux
8cd59934cd2b6e52ed138b31d917d071ff4c7afad16fc1a52a58f9d42a4b71a9  ./tailscale/tailscale_mips_Linux.upx
83ae9a8abbb8c93cdcfaa97353f66070cc754d101ec82c860774073681c5d203  ./tailscale/tailscale_mipsle_Linux
d6a89e53835b2e233ccd6820f958992ca180e3aa89c3bdd8be4f8b6073d6dbdb  ./tailscale/tailscale_mipsle_Linux.upx
78e238bd1e809da67bcf8b5b584c360c22acb58ee488157dfb91fa1f74860a63  ./tailscale/tailscale_powerpc64_ppc64_Linux
1f2f108654738d9beecddd0232eb656713d97fe2954e38fd119eef79064d1fdb  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
07b82b981a0029f9069f5daaf469f5ee3decf769c2810c8f975c58b188f8807f  ./tailscale/tailscale_riscv64_Linux
dc6754eeacef5a079115d864cbc0e73882cdc6621642323bba827434e1c99769  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
605e12d89c4bec2c41d9fd44e1d4840ef4afd14d5efa729d85c661836bf36c45  ./tailscale/tailscale_x86_Windows.msi
50609e6413095b551f8c9bd727eca18219e0ec583ac194f3e5f42d4d75a52a65  ./tailscale/tailscaled_aarch64_arm64_Linux
bd06a1bc265800b42917f27b89dd371b037307a5b74124de9b45acf8b020bd4d  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
fe787c215a47ea086e19aa4d8b50dfda9f559902362d314ed205b1da1c9d331f  ./tailscale/tailscaled_aarch64_arm64_macOS.upx
fe35c297e369a592e96505c981fbde2736db53cf92b4fd8a527873af90f6bcac  ./tailscale/tailscaled_amd_geode_Linux
98595342533e8a62f853b7bcbcfd407b593204d55803ed006f3e33a976229192  ./tailscale/tailscaled_amd_geode_Linux.upx
a2ba4d1012811bdc368eb571742d72f4e6eec45f42c5ee21c93470a61e88f7a3  ./tailscale/tailscaled_amd_x86_64_Linux
2017d02d842bd82ddd0e813c330bc407d65be287b7729b8c59c1d2af1e8b3695  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
871fdb97f2eb296fb47716d77d9b5f23b0c7a7430eb1411f3a4907e5ee7a5fcd  ./tailscale/tailscaled_amd_x86_64_macOS.upx
399e71e0bdfc459d2aec261d26eb7d664821ed48dadd88a40258a3916acf311a  ./tailscale/tailscaled_arm_abi_Linux
e69fa5b418a575376904c1b482b07e0fa616412e7994ac32da30f79688c70ee5  ./tailscale/tailscaled_arm_abi_Linux.upx
14cf06311344aa65e806bbdaea86898509c72b653518bf6b9be17904d446f416  ./tailscale/tailscaled_i386_Linux
1211caa4de5befd415df20b9881e0b3fbd17475fa65d10f4122137356d8b12d1  ./tailscale/tailscaled_i386_Linux.upx
465a3ff448ab250fe266f04ebbc0d4495c4a66c30062f68927f6371aade173f9  ./tailscale/tailscaled_mips64_Linux
24b9bece9f3783614edb5ae10450cb578421cca8bfb8e0c134477efbdf4d4908  ./tailscale/tailscaled_mips64le_Linux
e1119fe2b371a0fa49f5549f77ec01d4f36801b28996e5f4d9b9889385873896  ./tailscale/tailscaled_mips_Linux
82d4fbef2026876f058715d685ce0d413ce62ae1dded26c06ab199f5919a7289  ./tailscale/tailscaled_mips_Linux.upx
610b74210964dddcaf81c18b58f8b5265938c6f4c32b9b2ab89eddecab1e2139  ./tailscale/tailscaled_mipsle_Linux
0fc1ab1788b6973b5ed4cbd19df1ba8f59b04abd453970a518a1543b70ba1f3d  ./tailscale/tailscaled_mipsle_Linux.upx
d10c502148c6010b33b39eead9e39925918ec9f9de024ebc45fdde3a8a4ae7d8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
263cb6854e8661e0388ed477813f0b74d062c10bde5b874b32b4afbbffa4c8be  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
591620380e8a63fe3cd8bae76af63075fcd9c5c460b5dc402dab59cc0c394bcb  ./tailscale/tailscaled_riscv64_Linux
b20e24c5b7a5a71e66141143a1edc070cafc41b6ed0eb202bf0affc63a251839  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
6.9M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
19M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
3.2M  ./tailscale/tailscale_aarch64_arm64_macOS.upx
11M   ./tailscale/tailscale_amd_geode_Linux
3.0M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.5M  ./tailscale/tailscale_amd_x86_64_Linux.upx
20M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
3.6M  ./tailscale/tailscale_amd_x86_64_macOS.upx
15M   ./tailscale/tailscale_arm_abi_Linux
6.7M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.0M  ./tailscale/tailscale_i386_Linux.upx
41M   ./tailscale/tailscale_ipn_setup_Windows.exe
21M   ./tailscale/tailscale_merged_aarch64_arm64_Linux
22M   ./tailscale/tailscale_merged_aarch64_arm64_macOS
7.5M  ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx
22M   ./tailscale/tailscale_merged_amd_x86_64_Linux
23M   ./tailscale/tailscale_merged_amd_x86_64_macOS
6.0M  ./tailscale/tailscale_merged_amd_x86_64_macOS.upx
21M   ./tailscale/tailscale_merged_arm_Linux
21M   ./tailscale/tailscale_merged_i386_Linux
22M   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
22M   ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
24M   ./tailscale/tailscale_merged_s390x_Linux
17M   ./tailscale/tailscale_mips64_Linux
17M   ./tailscale/tailscale_mips64le_Linux
17M   ./tailscale/tailscale_mips_Linux
6.8M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.7M  ./tailscale/tailscale_mipsle_Linux.upx
12M   ./tailscale/tailscale_powerpc64_ppc64_Linux
12M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
16M   ./tailscale/tailscale_riscv64_Linux
13M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
20M   ./tailscale/tailscale_x86_Windows.msi
28M   ./tailscale/tailscaled_aarch64_arm64_Linux
12M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
4.4M  ./tailscale/tailscaled_aarch64_arm64_macOS.upx
19M   ./tailscale/tailscaled_amd_geode_Linux
5.3M  ./tailscale/tailscaled_amd_geode_Linux.upx
20M   ./tailscale/tailscaled_amd_x86_64_Linux
5.7M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
4.9M  ./tailscale/tailscaled_amd_x86_64_macOS.upx
27M   ./tailscale/tailscaled_arm_abi_Linux
12M   ./tailscale/tailscaled_arm_abi_Linux.upx
19M   ./tailscale/tailscaled_i386_Linux
4.8M  ./tailscale/tailscaled_i386_Linux.upx
30M   ./tailscale/tailscaled_mips64_Linux
30M   ./tailscale/tailscaled_mips64le_Linux
30M   ./tailscale/tailscaled_mips_Linux
12M   ./tailscale/tailscaled_mips_Linux.upx
29M   ./tailscale/tailscaled_mipsle_Linux
12M   ./tailscale/tailscaled_mipsle_Linux.upx
19M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
29M   ./tailscale/tailscaled_riscv64_Linux
20M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  28402385 ->  12238296   43.09%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_macOS.upx [OK]
  17712050 ->   4554768   25.72%   macho/arm64   ./tailscale/tailscaled_aarch64_arm64_macOS.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17112018 ->   6999644   40.90%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  19169500 ->   5465584   28.51%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_macOS.upx [OK]
  23125488 ->   6275088   27.13%   macho/amd64   ./tailscale/tailscale_merged_amd_x86_64_macOS.upx
testing ./tailscale/tailscale_amd_x86_64_macOS.upx [OK]
  12760544 ->   3743760   29.34%   macho/amd64   ./tailscale/tailscale_amd_x86_64_macOS.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  20146104 ->   5890460   29.24%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10850964 ->   3057916   28.18%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx [OK]
  22822594 ->   7766032   34.03%   macho/arm64   ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx
testing ./tailscale/tailscaled_amd_x86_64_macOS.upx [OK]
  18032448 ->   5115920   28.37%   macho/amd64   ./tailscale/tailscaled_amd_x86_64_macOS.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15712527 ->   7003780   44.57%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  27659341 ->  11693160   42.28%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11341736 ->   3577880   31.55%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  15835387 ->   7203712   45.49%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17195933 ->   7037820   40.93%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  30396284 ->  11782152   38.76%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_macOS.upx [OK]
  12433954 ->   3293200   26.49%   macho/arm64   ./tailscale/tailscale_aarch64_arm64_macOS.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  10875540 ->   3064984   28.18%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  19128540 ->   4999204   26.13%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  30547187 ->  11834848   38.74%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.50.0
  tailscale commit: a920f02311d00d9bf8ba09503ec78fe6b054ca75
  other commit: eb5b0beea22407ee7208e60ed96927dc582a73a1
  go version: go1.21.1

USAGE
  tailscale [flags] <subcommand> [command flags]

For help on subcommands, add --help after: "tailscale status --help".

This CLI is still under active development. Commands and flags will
change in the future.

SUBCOMMANDS
  up         Connect to Tailscale, logging in if needed
  down       Disconnect from Tailscale
  set        Change specified preferences
  login      Log in to a Tailscale account
  logout     Disconnect from Tailscale and expire current node key
  switch     Switches to a different Tailscale account
  configure  [ALPHA] Configure the host to enable more Tailscale features
  netcheck   Print an analysis of local network conditions
  ip         Show Tailscale IP addresses
  status     Show state of tailscaled and its connections
  ping       Ping a host at the Tailscale layer, see how it routed
  nc         Connect to a port on a host, connected to stdin/stdout
  ssh        SSH to a Tailscale machine
  funnel     Turn on/off Funnel service
  serve      Serve content and local servers
  version    Print Tailscale version
  web        Run a web server for controlling Tailscale
  file       Send or receive files
  bugreport  Print a shareable identifier to help diagnose issues
  cert       Get TLS certs
  lock       Manage tailnet lock
  licenses   Get open source license information
  exit-node  
  update     [ALPHA] Update Tailscale to the latest/different version

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.50.0
  tailscale commit: a920f02311d00d9bf8ba09503ec78fe6b054ca75
  other commit: eb5b0beea22407ee7208e60ed96927dc582a73a1
  go version: go1.21.1

Usage of ./tailscale/tailscaled_amd_x86_64_Linux:
  -bird-socket string
    	path of the bird unix socket
  -cleanup
    	clean up system state and exit
  -debug string
    	listen address ([ip]:port) of optional debug server
  -no-logs-no-support
    	disable log uploads; this also disables any technical support
  -outbound-http-proxy-listen string
    	optional [ip]:port to run an outbound HTTP proxy (e.g. "localhost:8080")
  -port value
    	UDP port to listen on for WireGuard and peer-to-peer traffic; 0 means automatically select (default 0)
  -socket string
    	path of the service unix socket (default "/var/run/tailscale/tailscaled.sock")
  -socks5-server string
    	optional [ip]:port to run a SOCK5 server (e.g. "localhost:1080")
  -state string
    	absolute path of state file; use 'kube:<secret-name>' to use Kubernetes secrets or 'arn:aws:ssm:...' to store in AWS SSM; use 'mem:' to not store state and register as an ephemeral node. If empty and --statedir is provided, the default is <statedir>/tailscaled.state. Default: /home/runner/.local/share/tailscale/tailscaled.state
  -statedir string
    	path to directory for storage of config state, TLS certs, temporary incoming Taildrop files, etc. If empty, it's derived from --state when possible.
  -tun string
    	tunnel interface name; use "userspace-networking" (beta) to not use TUN (default "tailscale0")
  -verbose int
    	log verbosity level; 0 is default, 1 or higher are increasingly verbose
  -version
    	print version information and exit

```

---

