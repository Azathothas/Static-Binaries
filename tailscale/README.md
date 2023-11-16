
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=Urn5LVoDnAObKCbE3tfJ/W2lZBJx48wC8Du9G1can/9VMX6F3UPJypjwyAZGX4/sz8yUXcwb3K1JaCAy-PW, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {96785183-091E-4F58-8360-D6A32DDA67CF}, Create Time/Date: Wed Nov 15 19:19:55 2023, Last Saved Time/Date: Wed Nov 15 19:19:55 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=uDfQ5cIZ7Nh9k2ZWxwaj/oXzIuYPmXp_cMreABtlP/scYIjHNSJNxEMZPI5Ysw/H_JuLUcFMBYrKnq0OWKo, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=ski7sRzaeH_dkXLOnZ1U/3ugwv5GK5lLqSBH2yMx5/uhNqRpzRq-zk6Xcu7xiv/chXH9kRX3McfOIktTmii, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {950051F2-DBE4-4316-B120-B1A435B2B3DB}, Create Time/Date: Wed Nov 15 19:20:00 2023, Last Saved Time/Date: Wed Nov 15 19:20:00 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=j07f_D4OWPI9EWWQ8DjB/wM44kbhtN4ZmIvM41BkV/sq925-fxLBy8JOY6AjLx/xtjfGIMHxuOxRGChURWk, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=wl6aMrRQoBbNI45J22Nh/2KekmFOwNPE28ksuRA9i/lhoGXnt3y_59Hlq72QH9/xlOA0pAs5z8ZB0VZPomi, stripped
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
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=3aozcsKii9T31obf6WLg/5HeZKI792i8I3AeSwmk6/SQ9YS_Cnkc19wp868xb0/4yLJXT3jsC0qdx70Z3FR, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=5AnagkeWDfAdi1ZmPdzo/Ivcfqkqbn8HcALds8hGg/KthwiotKQDiQRDhsfq-m/-70qIITADn8P6U5ALY_k, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=IbXFAwRJ0u_MW_nU-GD_/qPMxz0XFjerTxAPAh8A4/Yona9qXNK0j4_UHho68J/Kzvv3dBq_CRY9oLTdWnO, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=iYhF3-ZbmX6IrETLXfQs/L3UyO56dd6rwAjXmXp0w/ImCIGsm-5PNa0Vh67E3y/5kv5OuHRDll4m_odBlLF, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=2g6REOCHT7db_Z0xx4ch/pKCh73FpAyoGENFzhFzn/C9D_JzV_zpde6UU0aVCF/JHqQXBwFlJx3DMZu2Pgf, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qvhzXOu_zRa1u0rDTGKp/ZF-mCASRuTw-QuabTciP/7z17-H8wHilfVga93M3i/ROpkSpQmtb3HMInEACKb, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=qnk0iZS1jexDqaFYMLdS/LJV6W2WMQwqlTWIf6WE2/cMR61ak85XEXqbPWE0cd/H-FtQvjCRq9jyVwpUmvl, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=zG8gWjQTfUYb-75ngM6o/w94kBQ0INfHIe6PNXUAz/RU7vlh6dU7UitWxpGeQT/_6nCRP8YY1t7HHQKeCcl, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {0FDB3D40-E1CC-41B6-928B-EB6873962392}, Create Time/Date: Wed Nov 15 19:19:55 2023, Last Saved Time/Date: Wed Nov 15 19:19:55 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=NckaT_3ZqPA0SPL8Yx0S/EPn9Ds6P7Fz2ZsjYTi0R/lO-kLIr_ysH1dAJG3Ju9/ROYbKErEiZmh50BOBaVJ, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=bK72eqC1JYvx59ueI8l8/shBpsmzb6YXx_k0uWmcg/_EX-5W1FtiDTZQXfPVxN/12o3orpbW4pDXatkhgW-, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=FU1n4Xfj_IkXQhEiPROZ/MTFz6TTKhTKpm3RKlSmD/z-s658kqL9SdokU9mv8t/iMgN0O97sX1oFKPXJpA_, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=eTiW6VBvdI5AFf75QmLL/XVTmSCDk--Tu-uST8JI5/1lOWS7f-e6G9HWjzHweo/pmIjfkE3t7c5iZZpCEDE, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=7I2Fhzwo6ednFjk0_SKY/GEROWADZ4LbhyYlLcION/XNFmf6vLvlt-CkxXd8Tj/UPfHeGfyY0p25g8kh85X, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=ruGY8bRvy_X8Wz0gYayk/KLcDq5lFR8Tah9jsCBCs/zBXxqjQPS5oC0g0c4B_0/YNgUS7fkaxL9U8ytuCSL, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=wIMjxDFoNlztqjqukVSp/lNphfYrpDAK4w1PYLh-G/wNDRKTorixiZVSLWFf7b/oxVzjhJlrqJcIbJcPUXN, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Elo-p3PpIU5las9Q1OqB/7zB5zNQdLZSDzyFqmKWG/kRQZuBxapjakDLlSo8QJ/feRmeAKhM3ptwvqX_ZCL, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=lewIZhEHreGZl4_K-Jwt/AuAkts7UQW61HsJD0-dV/GEXWn56hlJ8-42FFR5gQ/tk6JSNJh8rzpnUBU2Bni, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=hskT2LZO3JUpOkxDexAp/C9rPJKpdPJqp3yt0miCf/HA4Ys59cLrbtRXuOdFED/sloWqD7uXl-hGktCOYiO, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=AK6-UpOWV3HDWNBxT91G/y8fte-ifdmLGw6JT2Vvx/8QZPXWQK8wx_80IV-njL/WACrtwiXPCQT4t5iVd2r, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=Z8GPZbwtzV3v0tixOgdo/N56hd8XUC2PtCFfAi77V/dGXrhEYwmX5IKcO-lTdB/nNGPFhZHBZbc3nS--WFW, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=2g1YmUnn1hMw62TlkGWl/aoO14quFCnPkJTOwSjcx/5hYtWQtdgncN_Z7GDAyn/2XCeJMIfut63R1dSP91B, stripped

--> SHA256SUM
2b86df2589416d0c52274d1db4c6818b27fc8a58c03ebd3e4d753d08607a1641  ./tailscale/tailscale_aarch64_arm64_Linux
945fd3137e826698a04ec29c0410098501dd1696aec7585d02801c9c3ab941f6  ./tailscale/tailscale_aarch64_arm64_Linux.upx
e4bc373591f08dda14c7d33719414a0585869ce636b6db5e7d9daae5b9c3e0ba  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
d92cf6654e267249e2bd9ada8e7d30ddef1bbdac2a383cff02d364f85b6e6568  ./tailscale/tailscale_amd_geode_Linux
51f6d209ae009a00e037633f345740be34b4c7f60d774c9165cc72815b65e4ce  ./tailscale/tailscale_amd_geode_Linux.upx
18ac33212c435fe29be1557c690b4c93c0cb916964ff6cf645b4044633b25a15  ./tailscale/tailscale_amd_x86_64_Linux
1cbdb424e844cd64314b7ef4d7eef3035c6750557f38a7a7fe0a5f9e6d9ea45e  ./tailscale/tailscale_amd_x86_64_Linux.upx
d932e2db675d71cd483e5a29706af33ee93886b91092a612c7cec32a39e8bf16  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
19ea5230bcd31b8a621681a574a8460e37f54c588ab0d12996ec879f49db3bca  ./tailscale/tailscale_arm_abi_Linux
8ddc7655a11bdf7ebe6cb26a3e2e183cd52f51c61a42239f73f440020af625c2  ./tailscale/tailscale_arm_abi_Linux.upx
40e971db8d188e85188b4fffc376233dc3711fea67f081898bd7060e8694b4a0  ./tailscale/tailscale_i386_Linux
919b9fb768c5981eaa8a20de7677466dbea9099fadd9cf9090206f426335f817  ./tailscale/tailscale_i386_Linux.upx
23aa1de0b078917c2d2c2f91b3bb5dc965664a0d32b56b341e1e446efe7352b7  ./tailscale/tailscale_ipn_setup_Windows.exe
9605b59aecb09e76811d923104a9e74a63cd5e59d4dd34a1655832f3a526f82e  ./tailscale/tailscale_merged_aarch64_arm64_Linux
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
075b1f20fd81e45edc168edcd1fe5b2f4e5a1c68965fe359498077dd14cb07e8  ./tailscale/tailscale_merged_amd_x86_64_Linux
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
a23d5fdc6a4c5688e830790fc0b1424bde7c3040ec0c45e74834abf88d90ef83  ./tailscale/tailscale_merged_arm_Linux
4403a7196256361c2d1fbdca43596cd6d044641f0e23eca1b728446070bc21c6  ./tailscale/tailscale_merged_i386_Linux
f20ae47045af2b2dec76b0b26dd960e7f3ffe2e27ef71cc12552622157cace0f  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
0ea5dbb0e64f13df5c8a187160818d39f5ecd64937b8fcd1e12afbbc607f248d  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
7aac28eebe7aab5d11b38c231740e137b99cff909eab74aa94e50d5126c84087  ./tailscale/tailscale_merged_s390x_Linux
73d6d2f446fc04b8c0878e899260ca84fb8b599b13fce01ff7ae234ca8f90527  ./tailscale/tailscale_mips64_Linux
07d8c23f7000318ac4408476c4cf6e51d0540984e2f9bdd325927dbd8bbe302f  ./tailscale/tailscale_mips64le_Linux
408d92e948154842884da4d3674c9b9b6f15e78991f6903ca84c38755be6c16b  ./tailscale/tailscale_mips_Linux
0377825fd8e0ff749325d0cfdd58eaa8916a9786b1572e224e289b4c6eb3384f  ./tailscale/tailscale_mips_Linux.upx
7c0ae3624b31cc2a74596d4c91b1c23a6bab712654c4a32bdbd7ab7f481523cb  ./tailscale/tailscale_mipsle_Linux
82fd2de21582251b72faa4a534e35527f81c39b55c9de31e20e9bd862c649b8f  ./tailscale/tailscale_mipsle_Linux.upx
78e238bd1e809da67bcf8b5b584c360c22acb58ee488157dfb91fa1f74860a63  ./tailscale/tailscale_powerpc64_ppc64_Linux
1f2f108654738d9beecddd0232eb656713d97fe2954e38fd119eef79064d1fdb  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
88bc445892e0f8ef25de55724086a791cd507b52ca82a7d4f3a29d9ed1bcc938  ./tailscale/tailscale_riscv64_Linux
dc6754eeacef5a079115d864cbc0e73882cdc6621642323bba827434e1c99769  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
3b5b9b1bc831a02c26336cfe9286b4e7c4bc05fdb35426a6122760874c377e63  ./tailscale/tailscale_x86_Windows.msi
46b12c9cff7dcc77e5d84a71a71351213ee0c0016c8311880fb3e9f04e25b39b  ./tailscale/tailscaled_aarch64_arm64_Linux
85a1affbea3141c4e58a679ed20577297c7a4721dd2f9244741124653c278b30  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
2c1967da73c17528141ad1414ce109438a907906c7ea2c750b20b6aa1ff67886  ./tailscale/tailscaled_amd_geode_Linux
dfea71a4c4dfd2c934847faaa2adcb73f84e2fbf46077bd7734dfbe5fbe10efe  ./tailscale/tailscaled_amd_geode_Linux.upx
1d5f74fcad744897989fa9512220b130e76bb1087bb8f4e9c31766ad4470b8d5  ./tailscale/tailscaled_amd_x86_64_Linux
4245dc6bf7c8594e4588c9928b9216e1fb3fec43aadb84a6cec6c7b456a15ed1  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
3166d638baadb22ba70fff9dbf796b31e31d3b40846d525fa7c2464378694361  ./tailscale/tailscaled_arm_abi_Linux
3503b4ea82eb98b28f0345b31b3511de89e2d2bdecf184374029e3c4a40f5c35  ./tailscale/tailscaled_arm_abi_Linux.upx
cc23a4c2efbd25306fa33c568c4b39a2de0d3c6af3ceb745fd749b21062778e7  ./tailscale/tailscaled_i386_Linux
087744d76e748694f355be082630c74a23115d314096fc527377408954b13eed  ./tailscale/tailscaled_i386_Linux.upx
b547c8e2bfd01c536c3f53529b6afb39efcff95ce6906d372caa07f978b652cc  ./tailscale/tailscaled_mips64_Linux
bc86f8283b2a118d13cd8029b7541b47d12bf51dc5592e68c7b62a48ed30482f  ./tailscale/tailscaled_mips64le_Linux
4dd52dedab0991b7757a584a4d35f466421adc2de9c1263f331ac6bff545ea2f  ./tailscale/tailscaled_mips_Linux
292d42fb8e84e4515bfb61ebe0214b855daee88611e8597fb78b23d56575c329  ./tailscale/tailscaled_mips_Linux.upx
3726e0a1de86d098515b22ebc88b1b3f50bf142160b5865e2a1cf3a4c88d74b9  ./tailscale/tailscaled_mipsle_Linux
9a21df32a324808026ca9476979eec69540061715975247219786055f7441ec6  ./tailscale/tailscaled_mipsle_Linux.upx
d10c502148c6010b33b39eead9e39925918ec9f9de024ebc45fdde3a8a4ae7d8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
263cb6854e8661e0388ed477813f0b74d062c10bde5b874b32b4afbbffa4c8be  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
e7633db8c43f5b4dfc844399fb1dc18dcb825978c10790d39409a3694504cdfc  ./tailscale/tailscaled_riscv64_Linux
b20e24c5b7a5a71e66141143a1edc070cafc41b6ed0eb202bf0affc63a251839  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
7.0M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
20M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
11M   ./tailscale/tailscale_amd_geode_Linux
3.3M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.5M  ./tailscale/tailscale_amd_x86_64_Linux.upx
21M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.8M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.0M  ./tailscale/tailscale_i386_Linux.upx
43M   ./tailscale/tailscale_ipn_setup_Windows.exe
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
6.8M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.8M  ./tailscale/tailscale_mipsle_Linux.upx
12M   ./tailscale/tailscale_powerpc64_ppc64_Linux
12M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
16M   ./tailscale/tailscale_riscv64_Linux
13M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
21M   ./tailscale/tailscale_x86_Windows.msi
29M   ./tailscale/tailscaled_aarch64_arm64_Linux
13M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
20M   ./tailscale/tailscaled_amd_geode_Linux
5.6M  ./tailscale/tailscaled_amd_geode_Linux.upx
21M   ./tailscale/tailscaled_amd_x86_64_Linux
6.0M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
28M   ./tailscale/tailscaled_arm_abi_Linux
12M   ./tailscale/tailscaled_arm_abi_Linux.upx
20M   ./tailscale/tailscaled_i386_Linux
5.5M  ./tailscale/tailscaled_i386_Linux.upx
32M   ./tailscale/tailscaled_mips64_Linux
32M   ./tailscale/tailscaled_mips64le_Linux
31M   ./tailscale/tailscaled_mips_Linux
12M   ./tailscale/tailscaled_mips_Linux.upx
31M   ./tailscale/tailscaled_mipsle_Linux
12M   ./tailscale/tailscaled_mipsle_Linux.upx
19M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
30M   ./tailscale/tailscaled_riscv64_Linux
20M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  21367480 ->   6220944   29.11%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  29121269 ->  12229756   42.00%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  32218948 ->  12380268   38.43%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17419240 ->   7098100   40.75%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  20282620 ->   5759440   28.40%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17333633 ->   7061320   40.74%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15932361 ->   7066296   44.35%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  16048085 ->   7262868   45.26%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  11023284 ->   3104780   28.17%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  32063077 ->  12318716   38.42%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11518600 ->   3625136   31.47%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  11051956 ->   3359196   30.39%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  29913081 ->  12818376   42.85%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  20315388 ->   5771752   28.41%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.54.0
  tailscale commit: 42cae6916c6b06b6d0a686477f96d48a0b49aeb6
  other commit: 2458acf000e72cf98745d9f962c6df1b9a2078d8
  go version: go1.21.4

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

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.54.0
  tailscale commit: 42cae6916c6b06b6d0a686477f96d48a0b49aeb6
  other commit: 2458acf000e72cf98745d9f962c6df1b9a2078d8
  go version: go1.21.4

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

