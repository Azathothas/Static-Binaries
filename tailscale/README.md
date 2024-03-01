
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=fXiGy977PhvUo_SelC9i/VhtjziqN9ZKeNCjYewNh/YtduILMMUGGk9YMaN1wk/tWTH8SFNUnp2YWqrmrp2, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {2ABABEA5-0229-4B8D-A695-75602FAB16E7}, Create Time/Date: Wed Jan 31 17:21:50 2024, Last Saved Time/Date: Wed Jan 31 17:21:50 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=vr3czDZikpTk-C8_tdiR/zzGs4aw0Jqw3A0fDxXJF/aOvx7qbTSkF5zjepYnWB/4G4zd_uQjAuy3z35HMYB, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=IxeXRhM8gj9GCSyOVaWj/4mfdEfMTeRdFJQ3wBw3V/wQPp5IpB24Mo2tOZrNSa/qF2ig1Nk7kFXJvOV-IUc, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {D4580B85-CF43-497B-8C7D-D780F69922F1}, Create Time/Date: Wed Jan 31 17:22:02 2024, Last Saved Time/Date: Wed Jan 31 17:22:02 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=IYsHI0l5_b44GRk1XknX/-qUCpHlITbwb_QqZtJtx/bEC6OQraPTFMZdlA_2wt/mTtf16Isd71bkmtpvg2S, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=wWPuuI9zIsQ8VVHr4wcO/7U87wnZ9S7GIq5QcaTb8/KIvMx1sXG6eTy18eiIHS/JzGtvtuO2K4owj1Kb2-m, stripped
./tailscale/tailscale_i386_Linux.upx:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_ipn_setup_Windows.exe:                 PE32 executable (GUI) Intel 80386, for MS Windows, Nullsoft Installer self-extracting archive
./tailscale/tailscale_merged_aarch64_arm64_Linux:            ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_aarch64_arm64_Linux.upx:        ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_aarch64_arm64_macOS:            Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_merged_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_amd_x86_64_Linux.upx:           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_amd_x86_64_macOS:               Mach-O 64-bit x86_64 executable
./tailscale/tailscale_merged_arm_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_arm_Linux.upx:                  ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_merged_i386_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_i386_Linux.upx:                 ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_merged_powerpc64_ppc64_Linux:          ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx:      ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx:  ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=YQbTVqBiVMPSkld4GhYP/gP8yNBOMl-W3WMm2-dNk/mgnUcB8EWswyIZVDVC6O/nzCH54DHgnmOhiGH70M2, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=uomCrCH0zbMaBDThHdaP/fOGk47ci76SmDNVDyn53/LUVt_ijaT2SaAva4meKC/yDfjNs5iHvQFZ1cXUByP, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=cTiprMNJOpKCCa1LOXVD/UzPeb9vlP9AA9uChnOyN/Sgaz81t12PVXI0zO9Pmr/juLTZiV60UIDp-jrJNTB, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=p47hrs8wrUCp6odksqZe/iAXRn9iCa5Qwo_lNA_Jv/uDhS8h0GWJ5mFUd47wCe/5LaDWz3fN8IGhwMDRp4K, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64_ppc64_Linux.upx:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx:         ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=p3hOmt49ImOdyBHgafno/6aGyW1kYJNhzjLTLjd8h/GwvX-vROCZ4BvmATEGDj/qjGf2HPXs55EcQe3EeLg, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {162FFF7A-CDB6-4A7A-B448-E00A3EE5E1DB}, Create Time/Date: Wed Jan 31 17:21:50 2024, Last Saved Time/Date: Wed Jan 31 17:21:50 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=i05YJj1y-dlGzDBK9lhC/fN33ROgMGPk3AmIGD_nf/fMTQoKnVo3hmNFrhroXY/6j4p65fEo0DLUKf3InB7, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=ihJLZj0E24GxQXnXfDbZ/Nd48MMOmugS4PqdqvOrK/xW_3K1kYkhN4jOWbnhIq/Ny_YuqabO01numuaciOx, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=N5Obj1DN78BOWG35Blsa/v4_5M5JgTgIFQF2SP6Ps/uMEwQPC7t1n1po2XY1kW/ipKrXkdwofRRsrLgYzJd, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=SrndZHryAVt-z8rRc3k7/AES-CMGYzvJ0NV6n2I0H/QeMqcGWNP6fxlTd8Nl6I/N_1_dC3jm_bR3U3B_N-s, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=Y0Yp4iduOxFX1cWt6LOg/iGZhZGijlsl7Dg8wiZWD/X_rlphl2jHoNLLkVzRXj/qOHycPLo6fr4P6M1aYH-, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=znfplJpqGiMqUYgh_n2J/9IGIsZVY_1h_7YWQ-C3I/AYhjH8aHnaqLKLMU9wTu/HjZXYYFZe7-W77UK62zS, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=sY4RLkSH5IhCjI1RiRGh/2ASRjLqoKd2jEEQAbHd0/g5tEHAuj29p98HLApOva/qpeC9oaeGM5m-rEvBpwj, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Vll_rlSSF6VLih7wD4qU/q6rjnJNYm1EPnRf3OIT8/QugW8MzaEgfwUiP2pQpT/iojn37JFAYRvGWNjZBoO, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=acNz67HYqp3hZCWucoWv/wFLwEXZCO_sxK3CvihG8/K7UzsObOrlyessDXR4xb/YnQLsHks-BEGjfSPrzjJ, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64_ppc64_Linux.upx:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx:        ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=oQZkWMTWzMJpt2x4J7dO/iASI78VKzzUP_cSLe6q6/2D1nH-IJpyCk_7QbIEyu/WoUX4VeL5ATXRIiaAGzV, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
7cbca1e0261a1cd4e82dda8eeed5626105ca5b6d10cbb00037dbeb635f06e337  ./tailscale/tailscale_aarch64_arm64_Linux
3be6b11f2847b1bba45828b6ea56c99140d8ba726da957aeec9e0d92d355cf33  ./tailscale/tailscale_aarch64_arm64_Linux.upx
a799fa6c423059857e70c10d3cec3fa3251ebf2e1bf270ffb0f7f34afee9cb40  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
67cb0351a5b71b23e7e3d0e9d202bbfa9761ec35864b2719a1b438b131676fbb  ./tailscale/tailscale_amd_geode_Linux
c37790bf0d6cf229bd1a7b3656ed49e0da4b6777ea1e70b48d84c9fb9fcb7d4a  ./tailscale/tailscale_amd_geode_Linux.upx
d6e8bc09eb80eff3d6395e0a197d0d741f1d231cb5ee8cf7f20d8d0e917f32ca  ./tailscale/tailscale_amd_x86_64_Linux
6fed328bfca26281233a2803551ef49f7cd38a109dfd77e4cae24ef45c2577fa  ./tailscale/tailscale_amd_x86_64_Linux.upx
d885bf3683ad387e60b764bec8c23117896efaffccadcf3cd9ed51a8bd1645f6  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
c5679ce342e74a9d7fd7edaf4dcdbde085efad97eafe25839c4ab1d385a66f06  ./tailscale/tailscale_arm_abi_Linux
8600d8658c5ee4a3977d8c51ebaf35afd698b8b7255d0de060ce75038317b7c0  ./tailscale/tailscale_arm_abi_Linux.upx
5673e30dbb20b0913b580956e8c26d41ae5919b510f1e4bb116a73573f46ce52  ./tailscale/tailscale_i386_Linux
503b27439c5999bac047e114738f67cc09b2ac13c67a30b955c7b9fb1b56faae  ./tailscale/tailscale_i386_Linux.upx
86c77cd41f88620ab8ac52b4570fbf3d6a3a30a74785f983152d5d465a4799bf  ./tailscale/tailscale_ipn_setup_Windows.exe
b9e1388e90682874a95c8f5d4caaf3662bbef08632005f147756d8fd6c3c10b8  ./tailscale/tailscale_merged_aarch64_arm64_Linux
800773bb3c313fac6fe61d2f585bdf4e283f945fc2e3f07fb1749d42137a548a  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
3d2d7c418cf05dd2d7bdc02b1617a171a1c1a25fcddaeaf025f44584b4fa3be6  ./tailscale/tailscale_merged_amd_x86_64_Linux
2f22c4e20583f8481b37bbe86eefa48ee3e767c21d02d1a60fe4fcd46462f44f  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
8df265e2ff6adabed4a55cf18d69a9978c03fdd28db1395b7e22b391cd37a291  ./tailscale/tailscale_merged_arm_Linux
1d1c391d39b9c5caa346d62a8f1e6ff495e081a13ed64fc7d93acd7ff455774d  ./tailscale/tailscale_merged_arm_Linux.upx
ea1085611acd258dd0b9e44a5bab45373edeea69171f8d6ff848d6e9de79ac48  ./tailscale/tailscale_merged_i386_Linux
245c6b805d7c055751a30f78d5522675bd0c2688545d4eda812e0515b2ae1a23  ./tailscale/tailscale_merged_i386_Linux.upx
6b0d315cfb5fd42d29ae5fcf12542f2e80b63412f7bc2a5c2af7e08306a13d86  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
d2085a24fea069d77433d8f52c722b1ea350382f951b23f4e102d1693fcecef1  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
414682d52524e7d0f4712885e1b00ea2f056e8ccbd01d4178e30984a25ad9a0e  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
e21517b85869a54582f8d7b76a020e5dbd1afc4989eb503d29283c4d0275bbb7  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
0cf4eff7aa534cec713bc391ffc2a5b9c4dcc5dff7fdb3b503b4c03ebf5ca836  ./tailscale/tailscale_merged_s390x_Linux
3c4c17c7c7b2675189f8fbdaf3b89a2c7b140d4462c3b7dc6a6a357d468397e9  ./tailscale/tailscale_mips64_Linux
1be946a0f4c0bc4622667216cb0b81f1773b706efbc7007c42dfa0903022ee58  ./tailscale/tailscale_mips64le_Linux
eefe99993db6ad97f1da6580494a45395a1a93c5b4f8bd6338abbc77c72738b8  ./tailscale/tailscale_mips_Linux
91b1eb7328b5758393276de4cc582dba0a010d0c5f840417642c11e40fa31d6f  ./tailscale/tailscale_mips_Linux.upx
81a6f7384b90202cdace3ff6228c1cfdbf4f898d1e80a87ef6d126ac145096c2  ./tailscale/tailscale_mipsle_Linux
a1695fcc4ef3ff64d395b66c548e2affcd42b2a05f7af7e49537c08c57eb920d  ./tailscale/tailscale_mipsle_Linux.upx
a0b922eee8c33da0f0d55684e576e45edbb5cbec7b309bec8df67e712224f8e1  ./tailscale/tailscale_powerpc64_ppc64_Linux
80d8e5b50dd09494c70598e7f90f6f72937c54d2d957360571df5494835bcae4  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
86fd3dcd573f49cfca2403225a4c61748222b0183d98ec703eb4261c4bfc8bf5  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
7fca808666345430ead420b1a47c9158251fbbff59d100b61532012ba8d66069  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
07b7fe5543fcbc13e65ac7cf5e2f2f894deccfcfa16585497f6139694bcffbb0  ./tailscale/tailscale_riscv64_Linux
765de2d8f064135ca534e50f9eaf4511fb284b06dcd4022944ce407f8cf5c219  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
f8cd131cb98cff0cba7731bbf2ffcae733e7e87c02965d91ecbdbf503c0ba6f4  ./tailscale/tailscale_x86_Windows.msi
05e9db84bc6de370af26c843b862c1ad105b2c46a35e5e76ba1e0dd2147c7043  ./tailscale/tailscaled_aarch64_arm64_Linux
d96746c6a8916552f4ecb52bac6a9093c8ad96f81ad763110c3f70eb1238a419  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
f7daeb282be1e5b643322f35490294f750828ffc129258d95c21107542f85242  ./tailscale/tailscaled_amd_geode_Linux
7b490df474495098d93ee7f9175054d32411a8553ee204d352588e8154aab4e4  ./tailscale/tailscaled_amd_geode_Linux.upx
1384144ae61e205e3c9e2af36a14fea0f8ebff1633fcac9907f7797bbbe43b40  ./tailscale/tailscaled_amd_x86_64_Linux
fd76f721232ba6c09de97e06406617f299b5916797d7cd5856d5e235dddde6cf  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
1d111aa39631204af4cfea018d98ef68b685318d7311e83818b6154f16e22684  ./tailscale/tailscaled_arm_abi_Linux
f465f3242e32afebf97d383c7c221ae88c16d994d82f69d768ab74b899d70858  ./tailscale/tailscaled_arm_abi_Linux.upx
3fa7319c15cebf4e96ec41424d22ceb6dc2f1ab2f5f17b1d3cf4d7e6eb19651b  ./tailscale/tailscaled_i386_Linux
6c98a2e22ca470c7e26d1770d2e8d14330b9b22b798241820feeca2093edd70b  ./tailscale/tailscaled_i386_Linux.upx
589613d8141f2082409b6608d4c81013638d8da571694f18cdad6e8ab567da7a  ./tailscale/tailscaled_mips64_Linux
6e6b03c368b565423d11d95a0b61fa55ff805a26a852b671e92384def3637ffc  ./tailscale/tailscaled_mips64le_Linux
a415a2b26697851f8bfb5a9db29757f988cceb452589eacf300d2075ce1f875d  ./tailscale/tailscaled_mips_Linux
b14bcb1a2b0b1fdb3e4559e9d6f2f52367a332da038af9a3a7ab5b5caeb63094  ./tailscale/tailscaled_mips_Linux.upx
69cb5bf0100c9eaa88a22715baee60121c716594a07c535c52ba80c84c526eab  ./tailscale/tailscaled_mipsle_Linux
ccf785a871d54c43ba1b1f2c62e74cedaa28f3e5506fccac2889f3f1c1e1bb45  ./tailscale/tailscaled_mipsle_Linux.upx
98998de46aed84ce3235fa006bfba330a151bfdf9a3a99a643a75b5e1e411ce8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
cfc9c71da247d8ff9041fca6bf60649ed32764fd38d204fc80e50daea85e452a  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
ee0644c0e95da0320936407926d4993246c02ef474c84bb665f4c2ed8c8a81f4  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
5562befcba1c756761b6d53fc8c1ba702b1f3cd29de245be9491052c9d6a4f22  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
4499fb420058f62606eabcd973508f58d1246f2a3ab2b0c69f53a1839b0c0dd0  ./tailscale/tailscaled_riscv64_Linux
096880510686f248bcd6ae1fdecf9d13155c37368f32cc54cae9a3a92fb0fad2  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
7.2M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
23M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
11M   ./tailscale/tailscale_amd_geode_Linux
3.1M  ./tailscale/tailscale_amd_geode_Linux.upx
12M   ./tailscale/tailscale_amd_x86_64_Linux
3.6M  ./tailscale/tailscale_amd_x86_64_Linux.upx
25M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.9M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.3M  ./tailscale/tailscale_i386_Linux.upx
46M   ./tailscale/tailscale_ipn_setup_Windows.exe
21M   ./tailscale/tailscale_merged_aarch64_arm64_Linux
5.2M  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
22M   ./tailscale/tailscale_merged_aarch64_arm64_macOS
21M   ./tailscale/tailscale_merged_amd_x86_64_Linux
6.3M  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
23M   ./tailscale/tailscale_merged_amd_x86_64_macOS
20M   ./tailscale/tailscale_merged_arm_Linux
5.0M  ./tailscale/tailscale_merged_arm_Linux.upx
20M   ./tailscale/tailscale_merged_i386_Linux
5.8M  ./tailscale/tailscale_merged_i386_Linux.upx
21M   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
5.0M  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
21M   ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
5.3M  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
23M   ./tailscale/tailscale_merged_s390x_Linux
18M   ./tailscale/tailscale_mips64_Linux
18M   ./tailscale/tailscale_mips64le_Linux
17M   ./tailscale/tailscale_mips_Linux
6.9M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.9M  ./tailscale/tailscale_mipsle_Linux.upx
11M   ./tailscale/tailscale_powerpc64_ppc64_Linux
2.9M  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
11M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
3.1M  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
16M   ./tailscale/tailscale_riscv64_Linux
12M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
24M   ./tailscale/tailscale_x86_Windows.msi
31M   ./tailscale/tailscaled_aarch64_arm64_Linux
13M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
21M   ./tailscale/tailscaled_amd_geode_Linux
5.9M  ./tailscale/tailscaled_amd_geode_Linux.upx
22M   ./tailscale/tailscaled_amd_x86_64_Linux
6.4M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
30M   ./tailscale/tailscaled_arm_abi_Linux
13M   ./tailscale/tailscaled_arm_abi_Linux.upx
21M   ./tailscale/tailscaled_i386_Linux
5.9M  ./tailscale/tailscaled_i386_Linux.upx
34M   ./tailscale/tailscaled_mips64_Linux
33M   ./tailscale/tailscaled_mips64le_Linux
33M   ./tailscale/tailscaled_mips_Linux
13M   ./tailscale/tailscaled_mips_Linux.upx
33M   ./tailscale/tailscaled_mipsle_Linux
13M   ./tailscale/tailscaled_mipsle_Linux.upx
22M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
5.1M  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
22M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
5.4M  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
31M   ./tailscale/tailscaled_riscv64_Linux
24M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx [OK]
  21495943 ->   5536336   25.76%  linux/ppc64le  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  21287708 ->   6084200   28.58%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscale_merged_i386_Linux.upx [OK]
  20570247 ->   6006452   29.20%   linux/i386    ./tailscale/tailscale_merged_i386_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  16003185 ->   7166244   44.78%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  22648312 ->   6626116   29.26%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx [OK]
  21364871 ->   5226648   24.46%   linux/ppc64   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11677800 ->   3756156   32.16%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17639904 ->   7223972   40.95%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx [OK]
  11468935 ->   3198028   27.88%  linux/ppc64le  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_Linux.upx [OK]
  21831815 ->   6532464   29.92%   linux/amd64   ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  34003144 ->  12959296   38.11%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  30618947 ->  12809228   41.83%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  16309145 ->   7458700   45.73%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17479430 ->   7173468   41.04%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx [OK]
  22413447 ->   5615132   25.05%  linux/ppc64le  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  31956741 ->  13602424   42.57%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_powerpc64_ppc64_Linux.upx [OK]
  11337863 ->   2944308   25.97%   linux/ppc64   ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_merged_arm_Linux.upx [OK]
  20578439 ->   5198072   25.26%    linux/arm    ./tailscale/tailscale_merged_arm_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  11062740 ->   3439960   31.10%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  11087348 ->   3197204   28.84%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx [OK]
  20971655 ->   5445804   25.97%   linux/arm64   ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx [OK]
  22282375 ->   5300644   23.79%   linux/ppc64   ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  34174534 ->  13034660   38.14%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  21324572 ->   6091148   28.56%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.60.1
  tailscale commit: a8e06a7df8a712f095e12888ae37bfd3a270c825
  other commit: 7c984f40215c90499527bcd251aeda4da6131d62
  go version: go1.22.0

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
  exit-node  Show machines on your tailnet configured as exit nodes
  update     [BETA] Update Tailscale to the latest/different version
  whois      Show the machine and user associated with a Tailscale IP (v4 or v6)

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.60.1
  tailscale commit: a8e06a7df8a712f095e12888ae37bfd3a270c825
  other commit: 7c984f40215c90499527bcd251aeda4da6131d62
  go version: go1.22.0

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

