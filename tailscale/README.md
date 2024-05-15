
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=BRvDOWxfxTr1xdFwdd5X/cPoLjjVfdbZd5kq0ypsM/-GYrwM1GO5tVE7E1yodZ/KtN0OQtLx-jJ0_ukrVQc, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {A05A0DFC-242E-4E83-A9E5-CEB1331955F1}, Create Time/Date: Wed May  8 21:38:24 2024, Last Saved Time/Date: Wed May  8 21:38:24 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=KGTT0XXVFx1VGqKFryTW/OyghSi9mVpCFCPRqD7kq/DNh_ymwp74SL834QWUlK/5hdbWw54eD5m6TsxOygx, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=VUiFKHEKT8cKhH5bBNz0/oOWdzoikbMpyp5rTAD6p/TlAOI0w6fdT97VEQYwJK/fhg5_l_esk86LvkG5GvE, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {2DD737E2-6A89-47EB-93F2-DF5B8B7BE349}, Create Time/Date: Wed May  8 21:38:52 2024, Last Saved Time/Date: Wed May  8 21:38:52 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=UbLOVVK81pXbfU_I7xAK/zUHUpAiIhjcxihm0fGT8/QsHBtUVkweSe3IHWS9cq/H1Pjy2WJ6do7NBol8BLV, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=MXO37uMk9rPhrLmL8WUc/G3uZKKF9forcWSqNa9_v/cAQTNIZHA1qctk9Ui82y/LIqmxomRLyLBnDWJFYgF, stripped
./tailscale/tailscale_i386_Linux.upx:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_ipn_setup_Windows.exe:                 PE32 executable (GUI) Intel 80386, for MS Windows, Nullsoft Installer self-extracting archive
./tailscale/tailscale_merged_aarch64_arm64_Linux:            ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_aarch64_arm64_Linux.upx:        ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_aarch64_arm64_macOS:            Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_merged_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_amd_x86_64_Linux.upx:           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_amd_x86_64_macOS:               Mach-O 64-bit x86_64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_merged_arm_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_arm_Linux.upx:                  ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_merged_i386_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_i386_Linux.upx:                 ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_merged_powerpc64_ppc64_Linux:          ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx:      ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx:  ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_merged_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=TtcSeDY3CQEWeM29K4db/HN6hO0SMQXfYedHr5NFb/uhf5ciHeCRTsZNpRhLiA/dkSciwdo1jwK6qsi6rtc, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=joubxBcSurqYJYDA-Yig/5o81rhlXyHu7coVc_g_E/cHIEVC_D687zqZy-mcLW/fgWOZGS9DvuoqQu4W3D2, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=z1d3-u_VCRdqegTYpE_L/Q6DQn8Wpa1uBCbUOahkf/dZ6XeMNVpbKln0d5Djph/un9MSHGwZIjRJo-HV_EL, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=LZQBVdS_16VqbsnM5NAs/vqvPbyxlOs_oJpeRA_dR/u_a5tS5PFzmxcRuOc7II/AhqlSzHnEgC0sAtl5siT, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64_ppc64_Linux.upx:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx:         ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=jhxoTf25E_Vm9VFmHoPH/-8DzE5YRNJgBkQ8xbeeB/OJP-q_RVbizpAHDh55Wo/KYjRzRjqHJSMFQcwiV8y, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {6F6383BB-BB44-445A-8EE0-4410390475BF}, Create Time/Date: Wed May  8 21:38:24 2024, Last Saved Time/Date: Wed May  8 21:38:24 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=nJt46LGFcTSIpfme-KAn/I7YRxuEJJBcpEqTcfkQ9/ziAr2mL6wyeImwIvAoEn/HXbUeU0ADcxPFX2JHkjv, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=LwIZh-KWi_uRJz-LJCxr/NUsO7-CnRrrQnpPfj7DY/vEQfc1HifnC9qZXxpIMs/IjF4qdkoMbX-Fdbk2xHH, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=ymeyAkGAv1RkHE41DYJ_/KOOMFWr4bPYX3rYVY8J7/PNj656RcH0RJ7-WMXLpR/-h80pLba9YkOINJ3drFv, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=f-8UyXZYyCyJJrFJOmTS/Rddo9o9mvAjstwcjPLxs/dssM5gew7_9b0foeqKh_/dUXZ3kXkVsYESarn223b, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=W-GwjokQPhI-lxO15cct/nSL-5FMCrkUJgdUP6O7d/IsbCmLYcPLe5GW3SxfpA/tBzMIaHOo5QX3n1jzwH0, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=cQN0NkKvlNc3NNC43-iW/jDOTMSg508nIkjPYxhA9/4BVZi8TBZvxYRgREmM1j/-2VqDU95b6nUdtYR70nb, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=IL9WTXxsyQuOidij1d7H/9w8-QDMmvWuSfrv3-ZU7/HSc3522WB13SEPXgwaF-/6t0wWGPZzG0IM5sVuLem, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=t0oeJotUm86gIbUfCfs1/6j5ezBrnVFJc2BPG6AXd/Z3ZvvLw2YjS2ecRWAA9J/4imno8bsbSYgEaTVjSnH, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=3VNUInNIIw_gTmpB04qH/M5k2C1CryNsOGzBmuIM-/pnMvfC3y6_ZMQklz9ci5/HQ9a6wPI9aPc84mmD6bB, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64_ppc64_Linux.upx:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx:        ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=NYCDQ4fbOvOkHOuwXlUd/xOPabbcPOiHC8I1Rh7lo/7nRbLRCHOaIQqGZORh-I/vEYKBH1ciDxroXtT_fn_, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
6d45f3123d453edca1dd6a1cff507ae0f2e7465228b1bb04ca47099c91eb9a07  ./tailscale/tailscale_aarch64_arm64_Linux
8b1420f131d2a64ccbfd958994500891e60b2ed19e75f4bad05866066c2ae626  ./tailscale/tailscale_aarch64_arm64_Linux.upx
43a0334da64e4797cf47947af08b696be04f49478b6c1b73f5117aaa43f600a4  ./tailscale/tailscale_aarch64_arm64_Windows.msi
758bd296723a348a70f5274b294baeb4053abd2e2ce58e2220e210946b618c6f  ./tailscale/tailscale_aarch64_arm64_macOS
148d7924e4480e86c0e4f98b87cb3f25d71d795ac65c4bb311d56e5bac3f3f74  ./tailscale/tailscale_amd_geode_Linux
9bea816e6fdebd48a599a4cf3d016e4772e530d10fb83fd7a8cb6e22be782fe6  ./tailscale/tailscale_amd_geode_Linux.upx
15a0604c873566c494ae68836124f39c22a81e9a3d750cb62e6db1d26035c9de  ./tailscale/tailscale_amd_x86_64_Linux
34dc6947b768b7c75480bc1ec27dfa67f16efdc0cddcdf3f615310fce0f59559  ./tailscale/tailscale_amd_x86_64_Linux.upx
1b44be2fd5329e31d03c30b30f044e4751eb33aa84f3a81b18a77c2649ddcafc  ./tailscale/tailscale_amd_x86_64_Windows.msi
248b7930c0c4c650f988bcb90a968da042066e0b826bf58efd8fe3a69fad8e7f  ./tailscale/tailscale_amd_x86_64_macOS
8455f8c54ddedd20821a01165bff0f7f102ee31ab268aa4d28da7abb8d6aab6e  ./tailscale/tailscale_arm_abi_Linux
02b2c83a9681491552b047d552623b20a23a1efde7aa0f0457d362a6056a7b38  ./tailscale/tailscale_arm_abi_Linux.upx
a534079e35dfef6cb1cfb15bfcac0da9bd3544e533218710985cc900606483ba  ./tailscale/tailscale_i386_Linux
b6058f8fbd3b2df66534e1f75b74247a9fdcd2f1457f8dbc161b41bb87cd97b5  ./tailscale/tailscale_i386_Linux.upx
5e0f08d9e7af5879456754e69909b27ac9366df1bb73d6b4f1ca5e4eeec85aaa  ./tailscale/tailscale_ipn_setup_Windows.exe
962ca2fef0959e3d2fd3de8d90a707170beca8b403822829b433e8cb203a5acc  ./tailscale/tailscale_merged_aarch64_arm64_Linux
9db3a9cf6a5ebbebf68b278928b7a17f038301bb7ed8b8e873ae6c17266ffb43  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
68728bde1313493eb44dbd3be2e989eb00f60f4938d0d2845df9d45e32c25df7  ./tailscale/tailscale_merged_aarch64_arm64_macOS
22b75850424f100dc9dfddee27b59e3b4aecd574334cf5fac9e23c84a207be88  ./tailscale/tailscale_merged_amd_x86_64_Linux
080033fbde58a00e2cdf27b28c19d72d637fa74f2bf5bf022a26ce011ea102c9  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
267bebcfe539dd8353add30caf55a042bf996f8e688aae7910b9ecf61714f3f8  ./tailscale/tailscale_merged_amd_x86_64_macOS
b5daff3ebdce5eb254ad335a42a5ed8059f347f5433391b3b593eea67f9b1558  ./tailscale/tailscale_merged_arm_Linux
ebdb15ae224da62669c8098ab7ee5e48ea81a592175622c8876c89fe4b5768b1  ./tailscale/tailscale_merged_arm_Linux.upx
5cc7e98460bfc7e890bca03fc4ea4eff982d4909002e1ac4188ecb784055cd75  ./tailscale/tailscale_merged_i386_Linux
679bba82f746e58877f5d964a79d950b7ef4be33a4d7bcc626c1cfb85e65bd6e  ./tailscale/tailscale_merged_i386_Linux.upx
e1df4db52e6b259a3670f0f7b3fa66d32ab0a45afa9888a1cd40439e5e6c55ad  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
da6eaa83eed678598f1473902d7fe8b6d42f3b5a7f9d1d5630e90a6363a2f14b  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
5af0ffd3c1bf0efcc25f86bb98173f8fd2ccbeb999a36624760d1d7a65d51545  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
c95c265d73dad6450adbc3ede7c74c2b4565f5fa21e7cc952e2cd6220dd3b65e  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
dd017f28ea5df08c2880ff91410c49bc04891d3ae0319c139420dc974684edc7  ./tailscale/tailscale_merged_s390x_Linux
ac9ed6c28e6dd8e4e8868826b1c8eb32ed8a0bc3b81bcfb3da20ca761ebc6893  ./tailscale/tailscale_mips64_Linux
f013bf53e8f29b657f71ebaab11c053765a9baf451740362d68e1d816883984d  ./tailscale/tailscale_mips64le_Linux
8a14bfdbd7037f09f164a4cedb2e77f4f066c6b43b3028dc0c8b85da84567f8b  ./tailscale/tailscale_mips_Linux
1065792aceb6ea096d337a38fb1ae8f6fc58e4d179d7a419114ae2e224e59ea6  ./tailscale/tailscale_mips_Linux.upx
1053c9d5598ce0ffa03728606b9c655ecbcf263ff08dd047cb793313b1eb62cb  ./tailscale/tailscale_mipsle_Linux
4c83a373efd85a46049fac29b3c145cec1ae40e5761a14b7e6b0f4d5d544d517  ./tailscale/tailscale_mipsle_Linux.upx
f5fb4bc1c98cd4c703646aa496c57e4e7c3458e736c4bc2ff7f68466caa0a041  ./tailscale/tailscale_powerpc64_ppc64_Linux
873ec3f0b71dbf1245a61df2aad79aaa5754c7a351b275e13a5e221e16eb68a3  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
6f2e34f321bc3cd23ed7cef2b466ec1e162951c2fbc5134301a932e4a4341271  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
7ace3272959d5cd618277a87987cd4c4a9dfa2b5adadfb76a0d024d259cbc6a1  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
faaae72b6ffd363f283e5feeafcd2547fe077cb48df6c7ebc85b8cfb15bf4fe2  ./tailscale/tailscale_riscv64_Linux
ab069d3f41b1a74f4dcf1ba1e41ac780e99963719113c4007b1d967b48b14350  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
285cc55e2b31210351b4925cf91ba49de06aebf79bf6b881496586275c5ef2be  ./tailscale/tailscale_x86_Windows.msi
bd9da93ba9039a293d23ea3ce0697588a84724af6839ea8fd3d6e91f0f6cbcc2  ./tailscale/tailscaled_aarch64_arm64_Linux
b9f0769b1fa9aeb855f57a0414fe9454c437e0b8e20f3795c09dbf47abad730c  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
3045786fe6191b3d64ae9d2b03b5fffcf080e3cb3073a3c2e8e69e57ea05e2cf  ./tailscale/tailscaled_aarch64_arm64_macOS
5bedaf4c9dde6767da7f6989ac0b0b9ec24093be82477f5c85919f0bcdd19c1a  ./tailscale/tailscaled_amd_geode_Linux
7627445a74386de8d34a3510b634b154db6c6e37316b1623fa97c07d07812f71  ./tailscale/tailscaled_amd_geode_Linux.upx
23dcb788f1139da4ab1242dd3d49f4fcc666bea21de696f407c61c1174e40e09  ./tailscale/tailscaled_amd_x86_64_Linux
efb63a3489d101a1e88823c1817d977e63807bfa77ec37810ff175f9547b577a  ./tailscale/tailscaled_amd_x86_64_Linux.upx
b5304b43985998d94d5c2c94e0eeb9e160a76906fa0ecb224af45c3b878e684d  ./tailscale/tailscaled_amd_x86_64_macOS
44f65672dda6b4bbea5a29031f8d8699ffae9b1734db4932a7fcf758ee95d090  ./tailscale/tailscaled_arm_abi_Linux
3fa752fa2c84506697522e959eaedbb2d1d2d2c49776b4dd7d2c84a4818ca48b  ./tailscale/tailscaled_arm_abi_Linux.upx
46ec7818b3722a3d9e01ec65db566ba5bceaeb4787978a6e6344f89fbc08eee2  ./tailscale/tailscaled_i386_Linux
5901c4f50ea8519929765126fb9043a6b255c5a8d6978050f62d7271b8f175ad  ./tailscale/tailscaled_i386_Linux.upx
b1d580cb9635d423c31dce5e66ac9ce62d106b9c98b455f0bacf75b432e3e106  ./tailscale/tailscaled_mips64_Linux
e97672afda9cea8984f76bff1bfcf8f7566d747b65f93b28bbf8562b1695f109  ./tailscale/tailscaled_mips64le_Linux
490902fad09492a9eb128bd00afb386fa5bd6bc8a898723da9504586100be144  ./tailscale/tailscaled_mips_Linux
e61c73a1968df0bf8ee26943949641d7e52344145c7a20024ec3ef459250a0df  ./tailscale/tailscaled_mips_Linux.upx
4fd50bcb8aa3b687cc5826b56dd76205b8d7739b3f2dea031a7c9d8e956ee83c  ./tailscale/tailscaled_mipsle_Linux
07b2f09a9fc221242d173cd4ee570619df75bf012e69182b697f93f974e8d8aa  ./tailscale/tailscaled_mipsle_Linux.upx
e87cdbbfeb65a1c08652bb88a1a06cbca444438532703b405ae8f6c17372ae7c  ./tailscale/tailscaled_powerpc64_ppc64_Linux
59769c98aa06bd02fd01193964814d2f7cdde5614afdd77d5f9b8983da228690  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
c028d7d2c6506966d74efbe13549da5fdff2e7f3c01d43e82b58ff2c6aa8a539  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
900f0aff51dc600960d0e62b5fed3de86ee216472420b6410b1de0af40223552  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
c6a4a08910d16374de10de4366c2195886eb61573c2ecd77a78403c47fad04e1  ./tailscale/tailscaled_riscv64_Linux
0d4db30cfdfd1cee70bb5681fe5eaa707a9c390321542268fadf9b8a2caad75f  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
16M   ./tailscale/tailscale_aarch64_arm64_Linux
7.1M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
25M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
11M   ./tailscale/tailscale_aarch64_arm64_macOS
11M   ./tailscale/tailscale_amd_geode_Linux
3.1M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.4M  ./tailscale/tailscale_amd_x86_64_Linux.upx
26M   ./tailscale/tailscale_amd_x86_64_Windows.msi
11M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.8M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.1M  ./tailscale/tailscale_i386_Linux.upx
47M   ./tailscale/tailscale_ipn_setup_Windows.exe
21M   ./tailscale/tailscale_merged_aarch64_arm64_Linux
5.4M  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
20M   ./tailscale/tailscale_merged_aarch64_arm64_macOS
22M   ./tailscale/tailscale_merged_amd_x86_64_Linux
6.4M  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
20M   ./tailscale/tailscale_merged_amd_x86_64_macOS
21M   ./tailscale/tailscale_merged_arm_Linux
5.1M  ./tailscale/tailscale_merged_arm_Linux.upx
21M   ./tailscale/tailscale_merged_i386_Linux
5.9M  ./tailscale/tailscale_merged_i386_Linux.upx
21M   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
5.2M  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
21M   ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
5.5M  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
23M   ./tailscale/tailscale_merged_s390x_Linux
17M   ./tailscale/tailscale_mips64_Linux
17M   ./tailscale/tailscale_mips64le_Linux
17M   ./tailscale/tailscale_mips_Linux
6.9M  ./tailscale/tailscale_mips_Linux.upx
17M   ./tailscale/tailscale_mipsle_Linux
6.8M  ./tailscale/tailscale_mipsle_Linux.upx
11M   ./tailscale/tailscale_powerpc64_ppc64_Linux
2.8M  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
11M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
3.1M  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
16M   ./tailscale/tailscale_riscv64_Linux
12M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
25M   ./tailscale/tailscale_x86_Windows.msi
32M   ./tailscale/tailscaled_aarch64_arm64_Linux
14M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
19M   ./tailscale/tailscaled_aarch64_arm64_macOS
20M   ./tailscale/tailscaled_amd_geode_Linux
5.7M  ./tailscale/tailscaled_amd_geode_Linux.upx
23M   ./tailscale/tailscaled_amd_x86_64_Linux
6.5M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
19M   ./tailscale/tailscaled_amd_x86_64_macOS
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
29M   ./tailscale/tailscaled_riscv64_Linux
22M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  20113724 ->   5890052   29.28%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscale_merged_i386_Linux.upx [OK]
  21024903 ->   6154884   29.27%   linux/i386    ./tailscale/tailscale_merged_i386_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  20076860 ->   5881772   29.30%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  23070392 ->   6754420   29.28%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx [OK]
  21823623 ->   5353752   24.53%   linux/ppc64   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx [OK]
  21954695 ->   5667660   25.82%  linux/ppc64le  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11530248 ->   3546800   30.76%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  32552565 ->  13861184   42.58%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15816781 ->   7099324   44.88%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10919188 ->   3161688   28.96%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  10943764 ->   3167056   28.94%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx [OK]
  11337863 ->   3170404   27.96%  linux/ppc64le  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  28947266 ->  12306304   42.51%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx [OK]
  21430407 ->   5572196   26.00%   linux/arm64   ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx [OK]
  21037191 ->   5419620   25.76%  linux/ppc64le  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  32127701 ->  12450056   38.75%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17292310 ->   7102012   41.07%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  32289403 ->  12517060   38.77%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_Linux.upx [OK]
  22311047 ->   6684848   29.96%   linux/amd64   ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx [OK]
  20971655 ->   5114184   24.39%   linux/ppc64   ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  16109208 ->   7381784   45.82%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17386548 ->   7152848   41.14%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_merged_arm_Linux.upx [OK]
  21037191 ->   5326540   25.32%    linux/arm    ./tailscale/tailscale_merged_arm_Linux.upx
testing ./tailscale/tailscale_powerpc64_ppc64_Linux.upx [OK]
  11206791 ->   2916828   26.03%   linux/ppc64   ./tailscale/tailscale_powerpc64_ppc64_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.66.1
  tailscale commit: 8494e176298ad20f25d761a4eaf5562b24538811
  other commit: 270a880d505e9fcb1dfb8f186347c9acdc2cf635
  go version: go1.22.3

The easiest, most secure way to use WireGuard.

USAGE
  tailscale [flags] <subcommand> [command flags]

For help on subcommands, add --help after: "tailscale status --help".

This CLI is still under active development. Commands and flags will
change in the future.

SUBCOMMANDS
  up          Connect to Tailscale, logging in if needed
  down        Disconnect from Tailscale
  set         Change specified preferences
  login       Log in to a Tailscale account
  logout      Disconnect from Tailscale and expire current node key
  switch      Switches to a different Tailscale account
  configure   [ALPHA] Configure the host to enable more Tailscale features
  netcheck    Print an analysis of local network conditions
  ip          Show Tailscale IP addresses
  status      Show state of tailscaled and its connections
  ping        Ping a host at the Tailscale layer, see how it routed
  nc          Connect to a port on a host, connected to stdin/stdout
  ssh         SSH to a Tailscale machine
  funnel      Serve content and local servers on the internet
  serve       Serve content and local servers on your tailnet
  version     Print Tailscale version
  web         Run a web server for controlling Tailscale
  file        Send or receive files
  bugreport   Print a shareable identifier to help diagnose issues
  cert        Get TLS certs
  lock        Manage tailnet lock
  licenses    Get open source license information
  exit-node   Show machines on your tailnet configured as exit nodes
  update      Update Tailscale to the latest/different version
  whois       Show the machine and user associated with a Tailscale IP (v4 or v6)
  drive       Share a directory with your tailnet
  completion  Shell tab-completion scripts

FLAGS
  --socket value
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.66.1
  tailscale commit: 8494e176298ad20f25d761a4eaf5562b24538811
  other commit: 270a880d505e9fcb1dfb8f186347c9acdc2cf635
  go version: go1.22.3

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

