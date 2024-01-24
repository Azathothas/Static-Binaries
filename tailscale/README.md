
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=Gox19THEFHwxJ28o0Zq3/payo1SHleQs6sooEeftn/iM-Eh7oJ4PrqbWryWIns/9BP2wQ2go0quBjlMZhaK, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {02858320-DCB3-4677-876D-C2F87356B303}, Create Time/Date: Tue Jan 23 22:51:50 2024, Last Saved Time/Date: Tue Jan 23 22:51:50 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=cSJMWY0tPBg7lQA_NuHb/9qflJvHBc1-N3hMENnI2/BYtjgh6fxDkiBKbKgmCg/VQ2WWFzCtJlykS7ILU79, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=zMI9SzK7OXprNxODEkWB/fsIHxh3xu_pT2fcHfZMy/ja9rRJRpfhwmeZCbcecD/W2DQB6IcDxFZl6prhI6j, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {7B57C79D-BC21-4EDF-903F-18BFD9A29731}, Create Time/Date: Tue Jan 23 22:51:36 2024, Last Saved Time/Date: Tue Jan 23 22:51:36 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=pLjlF28CfdXTRBdBRzI4/fQqrGzsYeC0QzUEh0A7F/Qz9Kk44HDvjuRMSrZwqC/i9Kh-HnRPqnQagHRUlQS, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=f7sc-efHqVlXnIlm6Tfa/9QvzJfM5sLTXyI6A-F2t/HxlAe3C2W81FnLQpKStf/d88-h8bXidS6CYQqyg3S, stripped
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
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=ah1zXHjEompysn0Os1s1/dz1CYqnoyGP0Zt5oOurH/WhgWpc_WO1TzMhJT0OY8/OSFDfpz4LS09it_YWZAq, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=3T3vCTJL0HpSw8HAlGwJ/6oZp0x-oXhGIQ3cqpErX/Qx4y5sGLYZ6HGl9DF1Wh/tbjfIn6xjJE3rXUajP4W, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=kPNxb5Siz2v8rCMzJfo-/x0LrL2jqoLG6M88R3ixD/Nyzjx62m1syYVkLnDM3I/QCrR0UTW1FEHLNkkJXdd, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=JiF5DjhJCncZuMYhE8pT/ASaP8KD-q3zUOG4jac7s/4OFDqYRRIwufYQPE9-z2/c3A-bV30_0-2ZEPAqIwK, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64_ppc64_Linux.upx:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx:         ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=7lMocs06or3-wGxsvL_L/35nvAD6ym7aVhKENjqjA/ZaNtzfEPBK-SiJqAW7I7/GobFA8ZCJ4mJGo0JCtur, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {41AB18DD-F826-408D-BA17-6A08BB9AB729}, Create Time/Date: Tue Jan 23 22:51:50 2024, Last Saved Time/Date: Tue Jan 23 22:51:50 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=2RD8tixi-x_CupNJEYMy/FniNBFiDB3pg3ogR6og0/m89f1ykEUuLefLhvMwbs/niq8kOLz3yfgUWiQglrC, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=mU8hWRnH8YtEc10Lp5Bz/tI7RxDKdBDVz8tQmYvmH/57qDsrWXJ6KNCSJMId1I/MKxhnPh7etinNIsz1aEu, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=rMOM4z9CicTjnHsD3ZBx/WAPhga2Ml6WUNE_ggyzP/t4tUjBR86mrZN606quEy/wdhpJRHtPCn3FKXDRpTj, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=cgxQF7wjdWjdBpz7Aqil/KEc-pI4G-NU_HCPqnkFg/hWyMAPWI0Yj0fJSjbfAk/XAZR7xv2RC2Rj3sYbiit, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=Dha9miucKH8UFzHl44SE/SvDDqzbGKx1RYuZO2GMT/YMQw0zptZ7xg_t4CZ--S/g-4Dt08CH-O8VSdCuklb, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=ZHoW6C1TUY5Bff68LzOz/h8z_P4l9LceH_wxwtuCl/aYbkODbW71TWu6XCNqAy/wb2icRsMYoHicyhBWwds, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=s2P0Lxu9dRrXGC49sOuj/lX2PD9irqnQNKyzTStT1/V8-UX7IvXXVkLcKC0JIG/g8b2eQJJFe6Mie4wLBZk, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=In7Z9cz-wSbFSs-4SnfC/uPsO62UC4TinTkSPBKc6/yInoXWnXMWiyiizBgz2s/SkC_rR58kVbbPAC2I9Ew, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=8bzIZ9rfwusAYRVtTlSb/KpG0bNb9LTiCYrn0RHmU/fEBWfX_j_aXmNqUI9DNC/nQHOWM5lxmRM5spbPJf8, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64_ppc64_Linux.upx:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx:        ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=4IWaggzS5vCtzl0yH1hU/03Nj1OzOuTKl4TVtcjmQ/iN-9jM8gScRCGLKyjmaG/6Od4OFJRtbhiXiLDGXDn, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
094475b69fb39dee831745706e9dd06eb3e19784381a141247348affd72dfc89  ./tailscale/tailscale_aarch64_arm64_Linux
130cc5b1e082e30b42c3b4305d5676d8ce9726286a7673fb117078adde23c6ba  ./tailscale/tailscale_aarch64_arm64_Linux.upx
0c7be3d37b05aaf84b657673a63049c6564754e395853c16f29269f0fc417650  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
344c9e21a6c82572e99e7d9036df733098a456b300857907975476d73d606e50  ./tailscale/tailscale_amd_geode_Linux
39f3a9b1ca7bae2fa246f5960d73a3cefd65c3b6a04d28aadd4d2b5fa3475a0d  ./tailscale/tailscale_amd_geode_Linux.upx
66acd2cd1b60db69b577374658b98ba3cee930d9cf48355aee5ba3cb19759029  ./tailscale/tailscale_amd_x86_64_Linux
434a38e01f9f2688788fea3e526b3ee52d39d868d8fb807ea266e6161c5d83a7  ./tailscale/tailscale_amd_x86_64_Linux.upx
54effc26f64873f5a67daaaa211e67a51b858767e5da5b7238220b8cb943c68a  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
a635b169ee94b3d86eb34e7950b9ea99cdd6bcafe2b0a9a673547a1652b5dedf  ./tailscale/tailscale_arm_abi_Linux
a97a13c46659310f165d4e9176b227aa40c4107634ea5000442b25fca668a06d  ./tailscale/tailscale_arm_abi_Linux.upx
5f1fe0e38799627a71e6368f26266b871c188729dcb3a80f70cafcfe25eeb7cc  ./tailscale/tailscale_i386_Linux
2c91e2b2d35dd40b528e13d21d7a807a868db9e754a99ced8b19e33bef5a0827  ./tailscale/tailscale_i386_Linux.upx
31cc486396c2a00d8eaf718623c0e219afedfbd410be71310cf05a48cca3d44f  ./tailscale/tailscale_ipn_setup_Windows.exe
85548ca29a7edc2c17a4d5a0ea7649c1f4017837fe87f70dcbc5c1ee4f9acc0b  ./tailscale/tailscale_merged_aarch64_arm64_Linux
0a416b3682b7889604260ec2a3e1848580f40e5f52488780c897f8daf4983864  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
9cf145140aa0e3f46366dc0abf77231ae14b29a75f8bbd5689f2f153af633de4  ./tailscale/tailscale_merged_amd_x86_64_Linux
e4f70f6ce694d40d87f20c9aca78560e0fe212a88e0cec355feadced610e53d1  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
cd481ca50bbea9c0f58d544fd21329ee59aa17de70f187b80f4b6abdaf68b6c4  ./tailscale/tailscale_merged_arm_Linux
0372407fa2b5c4a95a9f808d8fda9d42f4e650ca4d4959f8d97d1cccc203d136  ./tailscale/tailscale_merged_arm_Linux.upx
69bf2766d6009e8d9ad7e4002eb9a2e6f3ca8270300c2d9199d397da550f0bdf  ./tailscale/tailscale_merged_i386_Linux
715b9c533320b12de98932435b29a640db6626610cb23f31a651e3b965ba3531  ./tailscale/tailscale_merged_i386_Linux.upx
9024cac850507f9d6761e3167ef32de0008699f5c3e2130fc8f5cce333bb9415  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
5c0f22ae8813d1b816211ed07224c8fea1744b2744c7dc25ec4f455556d61465  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
b9e7bce9d441a3bf84496372d9957dc496185fd6b7db1b890653af871bce1dd6  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
29a9be2a2b7012dc70f898fb3b09c55737475f55d89064b0191cb8d5de6a8337  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
f29b069827ebd46ed0d9c664fd062c19fe9b4410f8bf7a74a908d11152e2c90a  ./tailscale/tailscale_merged_s390x_Linux
a2dd99e4f6ff35c8e75ba8d50662f70e6686193fbab130295a12bab267eb6b30  ./tailscale/tailscale_mips64_Linux
9621520f1e5559180239c77c1de6eddb6c9be4db5f8de32adfc61caa93df9111  ./tailscale/tailscale_mips64le_Linux
9b6070df97343fa4624a2fa478f9f505cf01d465f809a05cf39f03fd47b2ed4d  ./tailscale/tailscale_mips_Linux
5cdbd4506a2450f5aeddb8d8b60fcc2b46e65caf364177b8bad2a66205e72ab0  ./tailscale/tailscale_mips_Linux.upx
78eb591eb5befd2fdf334274afb05b6096b552d631e9e9e1152bbb4ddee4e1db  ./tailscale/tailscale_mipsle_Linux
cebff95c2ebfe3a4944be918930380a29b1705318387155b44c31963de446ce9  ./tailscale/tailscale_mipsle_Linux.upx
92a84872095d7264559564433764b745c7ce36c9bbd0f75b9f67016379e31b73  ./tailscale/tailscale_powerpc64_ppc64_Linux
7cdacc371de7064ae795fd0b02ca5df4d66c5a29e33b9a27d1d4a79188b8f54f  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
18b5e5c407d2b2adbe774da975e27d301d737b39bf600e109db837ae7f905962  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
778ce7abf5918abd1ce2df40a59da4d971cfb64a60fe47a7b6f1a703b914b7cd  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
cfa4f701491890ca4b6b7907386352b0a8306f3af65da040905c26d96d10f15e  ./tailscale/tailscale_riscv64_Linux
306e3b7d598458d8d24acf444e71d2b7a6b45cfd7bfdeb7c3f22023e7d98931e  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
1569686f2015f0b0bf13812de0e69ecb4b17d107a7a5024fae8266960dfd02f6  ./tailscale/tailscale_x86_Windows.msi
30db86b903b2205a6a3d6291e0424b603eafe2915c8a9b829bd8968ee6c7c471  ./tailscale/tailscaled_aarch64_arm64_Linux
a1f06b5545e2d7fcad30ce8c73854b0098fc9749f4d6fd3c1ea9d7872017367e  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
798ec4cc2537f23a62f8b7e949bf760d7f2cc78b670d65d692e1dac5861f325f  ./tailscale/tailscaled_amd_geode_Linux
5e8ad5d4ca5a7d5f4e1c0f3a3b4291022988e1e7d1f70fb9f1a595f8fe126f79  ./tailscale/tailscaled_amd_geode_Linux.upx
cf6924a2c1400fdec5228e0ae2cafcbfc82279cdb2b703155d3af1d0e41517cd  ./tailscale/tailscaled_amd_x86_64_Linux
945ae594573b2d10580bcac3c1072693072921b2b7986fd3bc999abe61302366  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
a9c8fb5f9a67f53c9652e1cea5aad2f5b65d5a18ed02ef369e585ccee78eafcb  ./tailscale/tailscaled_arm_abi_Linux
74f26ccc5f3dc2ef6612e968d1233fa904d4d79ee70b7fa4a0f360530a3d2fcf  ./tailscale/tailscaled_arm_abi_Linux.upx
b999df2f0dc81b6623b3afe0457c943267a447cd5dbb44c30930f1adb614442e  ./tailscale/tailscaled_i386_Linux
453078df36136167bfc226b74f73d943e4c5e7e88bd3bb44d470f7f1e189bda1  ./tailscale/tailscaled_i386_Linux.upx
2cac7c176b738aa37b4f869cd160c5a827bef71c5a9e05a1beffcb7fd2ad194b  ./tailscale/tailscaled_mips64_Linux
a1ce924845c998a5989b039d4110c4da11177611d4078292ad73f3221274eac7  ./tailscale/tailscaled_mips64le_Linux
1dc8c675a5a5e295c6ec3a266effbc3f7838750688b450ec6659fc06683c8598  ./tailscale/tailscaled_mips_Linux
64d72d1a9833a763d44aebdcb2a256ceda0baae3e4acc8623b438d66e11ee630  ./tailscale/tailscaled_mips_Linux.upx
15b4ab84350a0d89f9fd9d295b3f0235505457237e2793b8c70473676290f0d3  ./tailscale/tailscaled_mipsle_Linux
ab91cbafe36218f2ff2f4a0e8f051e803f0d3b70e4de70263f4d6744311ddbd5  ./tailscale/tailscaled_mipsle_Linux.upx
62fb985d2e40b914550aca344b4d4cdcb9c3b2704b2929a28f02a1479d9e7059  ./tailscale/tailscaled_powerpc64_ppc64_Linux
098132d98a1e5475e0d2de2ed7ec61a9a6a5744ca4ef107920224ee90fbac679  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
cb0941277ea47d333586ad1811d044951296478650a791a2e6b8ecefcd306018  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
2af6e304fe5a917f5675cbe5c04cf6e95a1ae7b991fc481b6fddecb8a1ef2129  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
01200873d995057abdcef3c25fd0aa0cc4fb9bf79f19d38df49141dc95c21dd5  ./tailscale/tailscaled_riscv64_Linux
8a3ab54f74cb23e5d632e99aea1abf03e8e3d44bda5ab994280d7acd08478f80  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
7.1M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
22M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
11M   ./tailscale/tailscale_amd_geode_Linux
3.1M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.6M  ./tailscale/tailscale_amd_x86_64_Linux.upx
24M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.9M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.1M  ./tailscale/tailscale_i386_Linux.upx
43M   ./tailscale/tailscale_ipn_setup_Windows.exe
20M   ./tailscale/tailscale_merged_aarch64_arm64_Linux
5.0M  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
22M   ./tailscale/tailscale_merged_aarch64_arm64_macOS
20M   ./tailscale/tailscale_merged_amd_x86_64_Linux
6.0M  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
23M   ./tailscale/tailscale_merged_amd_x86_64_macOS
19M   ./tailscale/tailscale_merged_arm_Linux
4.8M  ./tailscale/tailscale_merged_arm_Linux.upx
19M   ./tailscale/tailscale_merged_i386_Linux
5.6M  ./tailscale/tailscale_merged_i386_Linux.upx
20M   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
4.8M  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
20M   ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
5.1M  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
22M   ./tailscale/tailscale_merged_s390x_Linux
18M   ./tailscale/tailscale_mips64_Linux
17M   ./tailscale/tailscale_mips64le_Linux
17M   ./tailscale/tailscale_mips_Linux
6.9M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.9M  ./tailscale/tailscale_mipsle_Linux.upx
11M   ./tailscale/tailscale_powerpc64_ppc64_Linux
2.8M  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
11M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
3.1M  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
16M   ./tailscale/tailscale_riscv64_Linux
12M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
23M   ./tailscale/tailscale_x86_Windows.msi
29M   ./tailscale/tailscaled_aarch64_arm64_Linux
13M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
20M   ./tailscale/tailscaled_amd_geode_Linux
5.7M  ./tailscale/tailscaled_amd_geode_Linux.upx
21M   ./tailscale/tailscaled_amd_x86_64_Linux
6.1M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
28M   ./tailscale/tailscaled_arm_abi_Linux
12M   ./tailscale/tailscaled_arm_abi_Linux.upx
20M   ./tailscale/tailscaled_i386_Linux
5.7M  ./tailscale/tailscaled_i386_Linux.upx
32M   ./tailscale/tailscaled_mips64_Linux
32M   ./tailscale/tailscaled_mips64le_Linux
31M   ./tailscale/tailscaled_mips_Linux
12M   ./tailscale/tailscaled_mips_Linux.upx
31M   ./tailscale/tailscaled_mipsle_Linux
12M   ./tailscale/tailscaled_mipsle_Linux.upx
21M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
4.9M  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
21M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
5.2M  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
30M   ./tailscale/tailscaled_riscv64_Linux
22M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10987028 ->   3193860   29.07%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx [OK]
  19988480 ->   5223736   26.13%   linux/arm64   ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  29267141 ->  12404436   42.38%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17301210 ->   7173056   41.46%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  30063737 ->  13007744   43.27%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  32277680 ->  12497440   38.72%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx [OK]
  11272192 ->   3165864   28.09%  linux/ppc64le  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  16020238 ->   7382640   46.08%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx [OK]
  21168128 ->   5382576   25.43%  linux/ppc64le  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx [OK]
  20381696 ->   5012276   24.59%   linux/ppc64   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_merged_i386_Linux.upx [OK]
  19722240 ->   5820628   29.51%   linux/i386    ./tailscale/tailscale_merged_i386_Linux.upx
testing ./tailscale/tailscale_powerpc64_ppc64_Linux.upx [OK]
  11141120 ->   2912896   26.15%   linux/ppc64   ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17386273 ->   7210784   41.47%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_merged_arm_Linux.upx [OK]
  19726336 ->   5031424   25.51%    linux/arm    ./tailscale/tailscale_merged_arm_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15899482 ->   7179068   45.15%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  20385180 ->   5892568   28.91%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx [OK]
  20447232 ->   5313796   25.99%  linux/ppc64le  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  20352412 ->   5884228   28.91%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  21457880 ->   6349104   29.59%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx [OK]
  21102592 ->   5075468   24.05%   linux/ppc64   ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11499304 ->   3720236   32.35%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  32433583 ->  12557240   38.72%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_Linux.upx [OK]
  20758528 ->   6267148   30.19%   linux/amd64   ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  11015700 ->   3200056   29.05%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.58.2
  tailscale commit: 6a2a8457f0d62c775bfee3e350d2b34d85eda0f5
  other commit: 8c7d4563e46a1856053912ac067fc5036c2d2b3e
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
  exit-node  Show machines on your tailnet configured as exit nodes
  update     [BETA] Update Tailscale to the latest/different version
  whois      Show the machine and user associated with a Tailscale IP (v4 or v6)

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.58.2
  tailscale commit: 6a2a8457f0d62c775bfee3e350d2b34d85eda0f5
  other commit: 8c7d4563e46a1856053912ac067fc5036c2d2b3e
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

