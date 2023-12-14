
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=vXrxIrmoQ7-GhvvX3SZb/30Vp6v0RtdYw93niDmM9/73d8TouDaGZhLineRF7A/AtwMHogPVaqvEHDf-xQ8, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {DFFB2CEE-C322-4A3A-8C09-51FF049C84EB}, Create Time/Date: Wed Dec 13 20:56:21 2023, Last Saved Time/Date: Wed Dec 13 20:56:21 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=ZMp9GAcZyBzDJLnNEFJV/Uoi-riGgwzMACDDmyzVB/EywMTTpHe2h9QxHjlRu8/gpH2eNo30K2Gg1GanasY, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=MuSCkzPMOLwP2QaCACEp/IGNl4FEdkTI_bhL0Ynv5/8k2lENnnX03Nd-dbgbnW/YxdkTgFT5Df5uXx3POlq, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {394221FC-A9EA-4F69-A82F-C9B29A9B2D2A}, Create Time/Date: Wed Dec 13 20:56:19 2023, Last Saved Time/Date: Wed Dec 13 20:56:19 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=3pGcIMrkM94UDfo8bhYr/gmJDv5TGe9uxvOUGJx5Q/ZM_A0irnIhXuCpXayCX4/YFZxMBPb0h9rE3ut-Vqj, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=A_k8FrFUlyFqWqRZejWg/92Qsx6wW4322qofVTPsL/tZ5JbtcjTmIPrw70gfWm/A7cbKMbuH1lMfH5r87Be, stripped
./tailscale/tailscale_i386_Linux.upx:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_ipn_setup_Windows.exe:                 PE32 executable (GUI) Intel 80386, for MS Windows, Nullsoft Installer self-extracting archive
./tailscale/tailscale_merged_aarch64_arm64_Linux:            ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=XyuvnLtnbu8coX1RUc03/XkStCvBe5KCjv1xcGS07/xz9eH3S3rduSAd7WfgDc/0VY4n9F_JBZyoTI6u0uc, stripped
./tailscale/tailscale_merged_aarch64_arm64_macOS:            Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_merged_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=F6e4l_Yhizim3ADCmxAW/rVABocwZskzM2vwspoa8/udLSr3TcT4pNWm9rEHdm/oTDw5zJ5o6PDXwibEl4n, stripped
./tailscale/tailscale_merged_amd_x86_64_macOS:               Mach-O 64-bit x86_64 executable
./tailscale/tailscale_merged_arm_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=r7Q06ghYc1aICHeBs_qG/lDXJM3yRl9T83WB-KDUC/TUDs0a6kcgm1r3GhUsm8/naD9kOeplQ6PLJhEyzJe, stripped
./tailscale/tailscale_merged_i386_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=QVIRhIiFQE5d5y9Ndp3J/g23J0qoDraiNT94FL6ys/msJoXiOISBh85c8HZV6W/R25aPU-_zV2r5FxYRSNJ, stripped
./tailscale/tailscale_merged_powerpc64_ppc64_Linux:          ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=PrCnTH5dBc_iTf6yo3Go/nhrvPBTT2mbNfd9Nsfz4/kV2o8AbgoP5wJnxfOkO9/xzmUBDLSrYM2G39EaPs-, stripped
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=H-F250sGuDnVAqeJiqZ0/0ruUopt8lgDB7GOiYqQC/K2t8tHdL-Y4iXZFAfXsE/zOyFHlrxs1HBbefHYEEU, stripped
./tailscale/tailscale_merged_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=E4JBTIs13nsVPsARoOjV/SsLD_PDUV461mPM4MNO9/6iigRBogvGt_uXU7Nhbd/zgXFU5C9ej5xOxwhmqhl, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=MaYxnQ8d6gayk07UxNw6/0In5d3fOzZe5574GYlhh/FLSIUilVIRlvUsoczxvt/VJ3ZPhBz8gWKw9IZR_a3, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=TVqi64w1-3mmp2L5itrv/kpU715MYGYM9lQI3qtH9/SsykEgxVCW9FqFg1-LHZ/LowERZwIYTDXa9pp2Ab-, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=2Tg6TFzPPqzdUoG4UBYS/Xte-s3e9DBs4nY6RzzGD/Y4PNbKypAim9oTDa1ia7/4qABZi_XQN7YeB7KbN0Z, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=pOA8W9vjRt7zc--NYSoD/irIPlLotr7kb4AkciY70/KP8iZkWn3SpGn2y47TvL/29AkENMTcKCKKKGetvB8, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=2g6REOCHT7db_Z0xx4ch/pKCh73FpAyoGENFzhFzn/C9D_JzV_zpde6UU0aVCF/JHqQXBwFlJx3DMZu2Pgf, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qvhzXOu_zRa1u0rDTGKp/ZF-mCASRuTw-QuabTciP/7z17-H8wHilfVga93M3i/ROpkSpQmtb3HMInEACKb, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=NEHngaw2mL3E6BjiHaju/FtMZBCHqXqnRRq7-71oL/TfJUKvEf35Gf11zdP458/T4_WWzDmrs6mzkD19vkT, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=zG8gWjQTfUYb-75ngM6o/w94kBQ0INfHIe6PNXUAz/RU7vlh6dU7UitWxpGeQT/_6nCRP8YY1t7HHQKeCcl, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {A6F352D0-6F25-43C0-A57D-50134ADB40F9}, Create Time/Date: Wed Dec 13 20:56:21 2023, Last Saved Time/Date: Wed Dec 13 20:56:21 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=ld4u4X__lT1dH6iF1ZDs/yRM1RMRYXp6IcL_b-Im9/bQ6sS0M0Ln4UY5JI13pL/WC3csVrky3pbZL93X8jO, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=J8x5rWgvZp2mpc38ptGk/f5-5-eHRVdCodrKZ4Mgy/QR1rqsO76BQFTOLm0ylI/47F1b6dblOH3sP0nZxUM, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=MqQUT-saF_M3DZF2K4pP/YGS1sj_4DW9tiUWZjjB9/AsCaZot4wYh_DI3fvD5V/dG3-ljsXQW_f047GraNA, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=IgSOgA4SYExG57M9izjR/EtTIUdudg4OjgBX5dERc/ScfP4jLmCTLtrtqXQt1H/UYjH9gqPUegMDDUUjaVf, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=WmQPJaK-ycD6R6PYf3Oa/Z4PdymABWLgi-zsRgpnH/HhpOBfbd0jlq8jfdufpd/fyP3LQqKP0TWDT7SBO2n, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=2Imhh0OiIQgXcDpbH1rY/D2WyKdK8tnuT0iL9oyow/sAoffyDyHretsfCTvgt7/eFvPnI0NNf-k5G7BG5Le, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=sVpW5fBoe9K2D6pe8N-k/1RQjh9MArM_u5AHzfgMV/pTgzKqmSVZkwY4yd5-ZK/SGtmENRYAxFvGfnl-wve, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=xGaVqQOORcDQI4t77W0C/A1wOrBNR60IlzJsJfqXZ/em4DZTJk0SmXmhE4aug8/-w9tqnDEF8rC55gHLOuT, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=eufZcprtF4iUtGRdh-IH/PrCrv7nO98zVgk96b3Lz/kl8NiltNCOFUZie6z7r1/qgpaUttfkn4smnMZ0OhL, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=hskT2LZO3JUpOkxDexAp/C9rPJKpdPJqp3yt0miCf/HA4Ys59cLrbtRXuOdFED/sloWqD7uXl-hGktCOYiO, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=AK6-UpOWV3HDWNBxT91G/y8fte-ifdmLGw6JT2Vvx/8QZPXWQK8wx_80IV-njL/WACrtwiXPCQT4t5iVd2r, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=6el0kgk6hesoY5dKdl7T/ljBm4Y8J_AWZz99_-Y_V/YvcGI__TeEKWeQQxyixt/8aeQCBR_6X4uGNeOqNK5, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=2g1YmUnn1hMw62TlkGWl/aoO14quFCnPkJTOwSjcx/5hYtWQtdgncN_Z7GDAyn/2XCeJMIfut63R1dSP91B, stripped

--> SHA256SUM
24777b39ecff778d5ebf796cdb57b2ab465c33bff4500e0d4df44f6ae9338878  ./tailscale/tailscale_aarch64_arm64_Linux
bed6de46acd136a20c3fbd5247828cf2ee4c314f4a69cfe01ef3484bfa551c31  ./tailscale/tailscale_aarch64_arm64_Linux.upx
5ef5a50b170714ecbdb6ae3beafdff3cc8897dbe943a8510211373c7368c14c7  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
5bd5af398e334f77a06a8fa0a41c92132694ca558a3ef25289716d340c217049  ./tailscale/tailscale_amd_geode_Linux
184a1e5fdc70db0b27ffc42fecd422863332c1a47fd05d494d094a9a84e352dd  ./tailscale/tailscale_amd_geode_Linux.upx
0fd366c3d97a4598ef98635ea4fb92f9150a390ebc2f7c7b3e68fe6a16088ad7  ./tailscale/tailscale_amd_x86_64_Linux
e3d0eb3da3275fdd48f5c4f16035a14f414e92873546f86cfa55a91cad30984e  ./tailscale/tailscale_amd_x86_64_Linux.upx
53e09990a2b3d3e326f58b0220a4377034c4793a3d3d21c283d535ac86ec8a7b  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
32b338dab3291f251d8be05663f9ab0a9e299606e3610e26017fbf37b8664f73  ./tailscale/tailscale_arm_abi_Linux
880fa3e98f40b5816189cab66e2d44ddb5376147b2ab981b8c1421f9a4c544cc  ./tailscale/tailscale_arm_abi_Linux.upx
c66dbf37a4d56156accdfe3a5ae643e76d2e7c8287b60a30c4c1022dc46c03ae  ./tailscale/tailscale_i386_Linux
7a6cc73596c88d64cc6a38501a1460d9ea5d09b4d3959f84413280765b56a697  ./tailscale/tailscale_i386_Linux.upx
f6a559eea4eb975f231a89ecce7c7d98dc85d9dc26840e000ec5e2842ae8a39e  ./tailscale/tailscale_ipn_setup_Windows.exe
9605b59aecb09e76811d923104a9e74a63cd5e59d4dd34a1655832f3a526f82e  ./tailscale/tailscale_merged_aarch64_arm64_Linux
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
075b1f20fd81e45edc168edcd1fe5b2f4e5a1c68965fe359498077dd14cb07e8  ./tailscale/tailscale_merged_amd_x86_64_Linux
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
a23d5fdc6a4c5688e830790fc0b1424bde7c3040ec0c45e74834abf88d90ef83  ./tailscale/tailscale_merged_arm_Linux
4403a7196256361c2d1fbdca43596cd6d044641f0e23eca1b728446070bc21c6  ./tailscale/tailscale_merged_i386_Linux
f20ae47045af2b2dec76b0b26dd960e7f3ffe2e27ef71cc12552622157cace0f  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
0ea5dbb0e64f13df5c8a187160818d39f5ecd64937b8fcd1e12afbbc607f248d  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
7aac28eebe7aab5d11b38c231740e137b99cff909eab74aa94e50d5126c84087  ./tailscale/tailscale_merged_s390x_Linux
140a9cb0d9c6cc5d16976bb88b4a4d2bdb7a15fa8b56a58b52f75e7eb6357048  ./tailscale/tailscale_mips64_Linux
26ec6bac01a3cf04739c1449c6a33b6c28ac37877c5a440e287a52f7db26776c  ./tailscale/tailscale_mips64le_Linux
bd909fc3c06f9ae6305a01f7d60e7ce54f8258cb5ed5c04fba94f754b9903da9  ./tailscale/tailscale_mips_Linux
3ae78012618896e489fb9f312ddbc576e0bd50e0339b09e1adf77015f6132e84  ./tailscale/tailscale_mips_Linux.upx
2ae6eae3122cc4115177a864deb92e739fe794923128fb9ec7e2624929b6fd37  ./tailscale/tailscale_mipsle_Linux
437d2edbec8d4aa80aac436dac8bd2e57d88ad21f8670e7e16a6903566779803  ./tailscale/tailscale_mipsle_Linux.upx
78e238bd1e809da67bcf8b5b584c360c22acb58ee488157dfb91fa1f74860a63  ./tailscale/tailscale_powerpc64_ppc64_Linux
1f2f108654738d9beecddd0232eb656713d97fe2954e38fd119eef79064d1fdb  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
e32a26b22920a4f15fffdb67787a2c5f14c8a6f11068d658a8669ab4f9bb5529  ./tailscale/tailscale_riscv64_Linux
dc6754eeacef5a079115d864cbc0e73882cdc6621642323bba827434e1c99769  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
3fcba1b5ea39a139de7865e71b0136b582de68e3007ad36c2f5be7924df1e95b  ./tailscale/tailscale_x86_Windows.msi
6b5000b5ec47b3c06e4a95497ad822407b95e8bc0067546457e8b09cb7c67b87  ./tailscale/tailscaled_aarch64_arm64_Linux
382632ab3ede548d8fb470d7f02994649b418a52aba6bd8853f28520792c6828  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
7de8c999cc95bbc5f5a8ff6a9cd04b7edd64f337963d10d343d29245e82d4a9a  ./tailscale/tailscaled_amd_geode_Linux
c94c057980b213dcb69f2f74ce00b966906581414e51d23d9aef42623f993c39  ./tailscale/tailscaled_amd_geode_Linux.upx
5f7c87704a95bbbb82d2b1806afc0670a6451293f8980708f418e4963ae4e610  ./tailscale/tailscaled_amd_x86_64_Linux
824ce3c26bc02ef8774a4e3f1acb0063daeabb6592ab77368066162fd90afe9f  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
88cbc1e2aa89e96b807ef0b000736ddf897af50c1fc2cb6b94e94c345ce9019d  ./tailscale/tailscaled_arm_abi_Linux
23af9ad060d3b48bc2cc53515b2c1bb88a7feec2aa3f4b69e223e5e5cd2aeb1d  ./tailscale/tailscaled_arm_abi_Linux.upx
7d313869c5ff64d304e5e04a0b30d7b6aff3b942d37834754f468cf7aa92c5cb  ./tailscale/tailscaled_i386_Linux
3779c8a39953980ddde700635d88109295684caa58d55e84962982996c2c0816  ./tailscale/tailscaled_i386_Linux.upx
8fce4b2315674384edb8ac163d6bfecbcb799dbb30bdcfe72b082e272e7d3a61  ./tailscale/tailscaled_mips64_Linux
efbdf706e83fdd7da406567584ef724c273a2329d7447d02b49d6f2190d8d432  ./tailscale/tailscaled_mips64le_Linux
819a194853838d5013e760bb7fcdede3db381794684bffe7efcba29e25230152  ./tailscale/tailscaled_mips_Linux
22ae16a80aa9657a818cb583ea01c5a0f1a9402f6676be9d75db47cdda3a01e7  ./tailscale/tailscaled_mips_Linux.upx
27397d86e64748e6d7c12416f7d8e8dc6f417a20342bc0fff2898194032c08e8  ./tailscale/tailscaled_mipsle_Linux
70875a37fb98fc5893291e9824c578523a572e9d5edcfd307f31ea3571c91a05  ./tailscale/tailscaled_mipsle_Linux.upx
d10c502148c6010b33b39eead9e39925918ec9f9de024ebc45fdde3a8a4ae7d8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
263cb6854e8661e0388ed477813f0b74d062c10bde5b874b32b4afbbffa4c8be  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
e66f0f589075bc23d673284f6ab14d6a523e8a53c0effbf943af453736a6e37a  ./tailscale/tailscaled_riscv64_Linux
b20e24c5b7a5a71e66141143a1edc070cafc41b6ed0eb202bf0affc63a251839  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
7.1M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
23M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
11M   ./tailscale/tailscale_amd_geode_Linux
3.1M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.6M  ./tailscale/tailscale_amd_x86_64_Linux.upx
25M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.9M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.1M  ./tailscale/tailscale_i386_Linux.upx
46M   ./tailscale/tailscale_ipn_setup_Windows.exe
21M   ./tailscale/tailscale_merged_aarch64_arm64_Linux
22M   ./tailscale/tailscale_merged_aarch64_arm64_macOS
22M   ./tailscale/tailscale_merged_amd_x86_64_Linux
23M   ./tailscale/tailscale_merged_amd_x86_64_macOS
21M   ./tailscale/tailscale_merged_arm_Linux
21M   ./tailscale/tailscale_merged_i386_Linux
22M   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
22M   ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
24M   ./tailscale/tailscale_merged_s390x_Linux
17M   ./tailscale/tailscale_mips64_Linux
17M   ./tailscale/tailscale_mips64le_Linux
17M   ./tailscale/tailscale_mips_Linux
6.9M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.9M  ./tailscale/tailscale_mipsle_Linux.upx
12M   ./tailscale/tailscale_powerpc64_ppc64_Linux
12M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
16M   ./tailscale/tailscale_riscv64_Linux
13M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
24M   ./tailscale/tailscale_x86_Windows.msi
41M   ./tailscale/tailscaled_aarch64_arm64_Linux
16M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
29M   ./tailscale/tailscaled_amd_geode_Linux
6.9M  ./tailscale/tailscaled_amd_geode_Linux.upx
30M   ./tailscale/tailscaled_amd_x86_64_Linux
7.5M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
40M   ./tailscale/tailscaled_arm_abi_Linux
15M   ./tailscale/tailscaled_arm_abi_Linux.upx
29M   ./tailscale/tailscaled_i386_Linux
6.9M  ./tailscale/tailscaled_i386_Linux.upx
46M   ./tailscale/tailscaled_mips64_Linux
45M   ./tailscale/tailscaled_mips64le_Linux
44M   ./tailscale/tailscaled_mips_Linux
16M   ./tailscale/tailscaled_mips_Linux.upx
44M   ./tailscale/tailscaled_mipsle_Linux
15M   ./tailscale/tailscaled_mipsle_Linux.upx
19M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
43M   ./tailscale/tailscaled_riscv64_Linux
20M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15875261 ->   7150632   45.04%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17359183 ->   7180064   41.36%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  10966356 ->   3185780   29.05%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  41638330 ->  15525408   37.29%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  45842237 ->  15625076   34.08%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  29504604 ->   7169276   24.30%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11437512 ->   3702704   32.37%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  15992908 ->   7349072   45.95%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10933588 ->   3181612   29.10%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  30889816 ->   7825040   25.33%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17274628 ->   7142496   41.35%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  29545564 ->   7181220   24.31%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  46083760 ->  15736864   34.15%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  42709078 ->  16482140   38.59%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.56.0
  tailscale commit: f10be754cff7224afda35acdf580a808e0838538
  other commit: 238c450dd9faa2675c996e79b9582437cc882c09
  go version: go1.21.5

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
  funnel     Serve content and local servers on the internet
  serve      Serve content and local servers on your tailnet
  version    Print Tailscale version
  web        Run a web server for controlling Tailscale
  file       Send or receive files
  bugreport  Print a shareable identifier to help diagnose issues
  cert       Get TLS certs
  lock       Manage tailnet lock
  licenses   Get open source license information
  exit-node  
  update     [BETA] Update Tailscale to the latest/different version
  whois      Show the machine and user associated with a Tailscale IP (v4 or v6)

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.56.0
  tailscale commit: f10be754cff7224afda35acdf580a808e0838538
  other commit: 238c450dd9faa2675c996e79b9582437cc882c09
  go version: go1.21.5

Usage of ./tailscale/tailscaled_amd_x86_64_Linux:
  -bird-socket string
    	path of the bird unix socket
  -cleanup
    	clean up system state and exit
  -config string
    	path to config file
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

