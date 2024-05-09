
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=4A33FW6sDZ75LbaPP0pz/IGwc8wqmOc8Ap0iMu0NH/XWvl2JWtlhJ8SCvoaO_n/xLwyP8EWe4Q0nJ9N2Rqo, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {A05A0DFC-242E-4E83-A9E5-CEB1331955F1}, Create Time/Date: Wed May  8 21:38:24 2024, Last Saved Time/Date: Wed May  8 21:38:24 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=mW7I4khru8jFhTtT0LBR/xusAk8cLgCG6u6dNIa48/47CZO_QsyPUra9c2yD6c/VDeEOJduv6-ox3lngHgY, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=EQPj-19yNIFMeNiU8df5/WhGnRiiwv_gJnz4eKT8F/c7KrR7lRz1mCZvUpYMb-/lapzvZdENxQMUskavfOW, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {2DD737E2-6A89-47EB-93F2-DF5B8B7BE349}, Create Time/Date: Wed May  8 21:38:52 2024, Last Saved Time/Date: Wed May  8 21:38:52 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=FQN-V0xsO0J4uUnM9eYk/cGdtUGgsaA8W4o_LCdR9/Uu8S46AVdLbjbZqTDO6H/uQQCfISfPlcSevk1qNmA, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=BfarGdwDc1zjF7CkEQZ2/BT7s9KBj84jE_nMicM4T/z-ZXcH3r4SD0wsR6n2We/58FnEuw7bQ5_HzV1I2Zq, stripped
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
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=qd0vl06HanPGMIfORVAK/pfy2UnMDyGan21buhvmz/aZfQX47umq1jkCZkwEhD/WeO3fVCP3E2CBaLVDaHz, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=Qb-9yjJKsLD9-UEWqafg/HLa31e657DSbYTgsWIqp/vBaU5psRVvMqAX_Ywgeq/0nIJVxfuOGZsrcVUYeqM, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Xxaod04VVmQ7RVCHFL5P/3NMNB5edBe_JNo2QneXn/9E_SaGVkmgCAMHP0KSDy/kKMSPetuZuWbh8m_e4-n, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=OT8C9N3yFG2LzI3KaJ4p/3HY5wnzKkfziyJ0Nrc44/9ITOi9fFWSHugYWDDk8L/oGPyy7altAUIX6Ptlj7Q, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64_ppc64_Linux.upx:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx:         ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=8jSdQ9mJdM2wGaGoTCLP/58pVZB6GmJjTo2qBdvKV/BZZzg3gSqsMLAZflEWEF/jPSD1KfG4gbe-GJ3LSb6, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {6F6383BB-BB44-445A-8EE0-4410390475BF}, Create Time/Date: Wed May  8 21:38:24 2024, Last Saved Time/Date: Wed May  8 21:38:24 2024, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=CX7gswyCz-nPTxDEfPxM/2-1ksRWq0ZfsXCMYTbln/o49KQ7t7Fo8juHHDn2LQ/QUQeqZPlKlBlD7NTA-jw, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=CHrVoJnHGuMHUm3XKQsn/4XT7IWxu9o6Cy_555b6I/Xd_hXIapLt3c_USmINZb/6H7xG7ZRAjuU4-i1Ui4P, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=3W1pBtwCJR2fRjPhdsP3/BHRT4bgXnhEwWKJN3-fx/_Z-heYUTZo2JteH92-2B/fIh3oCNxsUZInG9OhHmf, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=qiTjivypJhL_vR2QmA0r/ydEHNoozea4p5SSS2_dR/alr_B3aoy6bGudnSPMI5/J2DS6-UPIh8e9h9ONavS, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=bSGHCAKe6C7ntfnuXRWK/tqOzibUeHOcCVz9K7xpw/DqJP-FXebRu0xJ9vnJFu/INzsK3TNTPTh6Yi6r_2Z, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=YpBEeEmEWXTmk1ocF0cG/L7KTOSoupl9uqZtAohPJ/APYY8sojgzmXQ-9vlJnH/2J6IzMZNdljt35d6G3jy, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=z35WklhEgAC34-TLqaGX/VVxmT84C3L1Y-X5h9awF/igfpCR1h9geuD-aWL3Ak/wAYTOXEOf0OF2dlLDvve, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=XG_qDHqlUfGwqK_vJInS/9Asd1rcS48WLb6au1c0k/6gY7CJNpzIo6Qboehw9C/Vs3K-qtqxb6Z_0gEJZau, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=-bfTU8N7Elrx5yEfcmld/1u9xVhLjhCONfCZrNEIt/fgDejsa1PFE-X5Vb47dM/Pq5pipN5HLIWpuySurvV, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64_ppc64_Linux.upx:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx:        ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=_AC8NovAsRU8iCoj4vxo/xkSIttjAvzMnkArJyuIV/Cf7Zfbx0MWZu57bS87lA/cLfE8VGm2QdSVry0lXtp, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
1536c58861785d4026a1236f17bcfdf88a5c432fba8a49a835c867d0a70e77d8  ./tailscale/tailscale_aarch64_arm64_Linux
a3ac722a661a223ba4b0b56e6bc79cac535e239f2965e4ca8faa4fa4972e1351  ./tailscale/tailscale_aarch64_arm64_Linux.upx
43a0334da64e4797cf47947af08b696be04f49478b6c1b73f5117aaa43f600a4  ./tailscale/tailscale_aarch64_arm64_Windows.msi
758bd296723a348a70f5274b294baeb4053abd2e2ce58e2220e210946b618c6f  ./tailscale/tailscale_aarch64_arm64_macOS
32a791c533f128af056e48ecc1ad6edf887292a437828cff6fde53fdb9454cbc  ./tailscale/tailscale_amd_geode_Linux
3f62e449bf18cfa29078cb57719530094b8df07041a631daf9eea7f18baa4bde  ./tailscale/tailscale_amd_geode_Linux.upx
cd776ad35930812d70269b68ff439ea46482a56785518837d7837dc00a79e3fe  ./tailscale/tailscale_amd_x86_64_Linux
c199c38afbb1a5c3203078dd36e1040a66e9582c5cad84e1ec212bbf384ad0f4  ./tailscale/tailscale_amd_x86_64_Linux.upx
1b44be2fd5329e31d03c30b30f044e4751eb33aa84f3a81b18a77c2649ddcafc  ./tailscale/tailscale_amd_x86_64_Windows.msi
248b7930c0c4c650f988bcb90a968da042066e0b826bf58efd8fe3a69fad8e7f  ./tailscale/tailscale_amd_x86_64_macOS
8d2a5f7074a66268897d27bfdac255446ac291e3cbc886d00da10fcdc6628807  ./tailscale/tailscale_arm_abi_Linux
f3c193fef1224a6192eb7792dc175ae8010dc892ec0c9c12549c9416ceb89aaf  ./tailscale/tailscale_arm_abi_Linux.upx
835ebc2a979c68c1989d41e58d57c712b06c4e417fce3ef7ae61d7e2c535b26c  ./tailscale/tailscale_i386_Linux
3f89e550bd88e81a6fee20af11d75d0c1a04a17d32d8d442bc31dd4b8384390a  ./tailscale/tailscale_i386_Linux.upx
5e0f08d9e7af5879456754e69909b27ac9366df1bb73d6b4f1ca5e4eeec85aaa  ./tailscale/tailscale_ipn_setup_Windows.exe
5d4fda87c3c897c1c042369c78f82642f5a84f3a95346f663c6ec1d3460de728  ./tailscale/tailscale_merged_aarch64_arm64_Linux
94306df3418170bac913733a565cecfcdea97d61a456d1ca63d0f2a62a462031  ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
68728bde1313493eb44dbd3be2e989eb00f60f4938d0d2845df9d45e32c25df7  ./tailscale/tailscale_merged_aarch64_arm64_macOS
7163999307e57021ec726e36216399bf0f9868d06c8d1fa5ed39b510f395e3bc  ./tailscale/tailscale_merged_amd_x86_64_Linux
94746ca37077aff5a55fbaf2dd1a8993c76e13341a22c6701c429feb942eb42c  ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
267bebcfe539dd8353add30caf55a042bf996f8e688aae7910b9ecf61714f3f8  ./tailscale/tailscale_merged_amd_x86_64_macOS
7a5f618a293a680dddec400bc863c9c9594820c4517410b852247d378efbbf60  ./tailscale/tailscale_merged_arm_Linux
91fb65d46423e26584801d1b763901f87602ec055428781f300c60719730bcc0  ./tailscale/tailscale_merged_arm_Linux.upx
f8a1c2136030cad4e477363b129f3a1df29cbf8347d257ace88157f5879b5c72  ./tailscale/tailscale_merged_i386_Linux
274793a62f578b9b49fb487fe77601d8375c51ab317f0bb88876875f5d904ddb  ./tailscale/tailscale_merged_i386_Linux.upx
3a403b1b74ebc732b40bbdf1f4fc305f5f508f5103a997c20011263a4d37eb67  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
8c39524d113eaea8ed8525cb51021ce05ed2968c6d35ec78a4cc192fe2087189  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
092ec5ddbaf9b5f20620c51850dc302ff2338aee90ce53ed2506b750c592988d  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
07b10fba2171cf48e8ffadf642867704bac2eef903d85afec501a3885d25d370  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
1b6002d37d2b94e11f255a48dd11ba7300c5df4c20711c3b58415f17c7d44070  ./tailscale/tailscale_merged_s390x_Linux
4ac2c092566eeaabe25fe992b2fdfd365fca1e0dd10a2045251561e6993e6754  ./tailscale/tailscale_mips64_Linux
5d1222425f66eb137cfc8055795a449bb6d6a0e681da88d6f1d2d01e679f18f1  ./tailscale/tailscale_mips64le_Linux
0b0551330f11da9083de1bb16ba471d04ec52b4dc8bb383c0a288f59f9a15aa6  ./tailscale/tailscale_mips_Linux
b0d4e4672e0cba38b9131c42b0cc892c9b8a48f300cb1cc10b65dd51b7068087  ./tailscale/tailscale_mips_Linux.upx
7cdb6cfbca92b119a9f01ed2d3402c3b504ed183c827be3732c41cf31788acca  ./tailscale/tailscale_mipsle_Linux
f15fe1e5758e131ac77787d7b7113c37f8d317d9e63d02627bda8e72418ec1dc  ./tailscale/tailscale_mipsle_Linux.upx
f2b0f4482d124b0ad322042bb2248866ca308d56c14d89e9f4189eabc0194518  ./tailscale/tailscale_powerpc64_ppc64_Linux
10a63f3fec8ba9d9dc05e54d4eeca45897fbc41da80a5a6df8786da820944155  ./tailscale/tailscale_powerpc64_ppc64_Linux.upx
53420bb996aad946c525c8465ff64e874aa689983443bce34bf01eef366eddd9  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
bc15ef874ea1f515192ca20082f034803eb65988fe6d292c2c4732fa30cd5d29  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
ecc96218317cf07f133d40954cfaab2ec9750a725340b441d3f30d5c913e11cb  ./tailscale/tailscale_riscv64_Linux
d8762c5723719cb9223d033675da3e2c8ddbc9ce4e6036b350f2298fd46e54ec  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
285cc55e2b31210351b4925cf91ba49de06aebf79bf6b881496586275c5ef2be  ./tailscale/tailscale_x86_Windows.msi
1f5be817ebf014e88a6c5bb30590f60221579db00864820f097ec825315da5e9  ./tailscale/tailscaled_aarch64_arm64_Linux
3b97cc213a3962673a1c9a4b62cf9e392d9f1989a8aa504d834246c0beb9ccec  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
3045786fe6191b3d64ae9d2b03b5fffcf080e3cb3073a3c2e8e69e57ea05e2cf  ./tailscale/tailscaled_aarch64_arm64_macOS
888841828f772a49e9f2aade1f2b3b87eb986d7797ff26f354bff3b8ef94ca3d  ./tailscale/tailscaled_amd_geode_Linux
bedd748cf3d3593b7842d807e97b2204e70681926fbc03733f261a501ff3d073  ./tailscale/tailscaled_amd_geode_Linux.upx
f712e352bc57efaf00d70fabecc9f36bbd48eac830de33ae9b7a18535ed911ed  ./tailscale/tailscaled_amd_x86_64_Linux
7ed2c7432e89e857362fd4fbdbfbd2776f6425e93d65f5ade5e8a3a517efc95e  ./tailscale/tailscaled_amd_x86_64_Linux.upx
b5304b43985998d94d5c2c94e0eeb9e160a76906fa0ecb224af45c3b878e684d  ./tailscale/tailscaled_amd_x86_64_macOS
f2516d821dbcb9f7673095f09b655e59f08f01a180050cc8206ba8de491c1eee  ./tailscale/tailscaled_arm_abi_Linux
f8df66a90ae03b0dfe03867a0b6c574876173e3e3102665b4878cf175a5c947b  ./tailscale/tailscaled_arm_abi_Linux.upx
84fa5a4d78488104864862dc1cea798e5c47de2ea4d8e1afba36f4cab2d60955  ./tailscale/tailscaled_i386_Linux
2438aa7ee20c4f71c0e84505605e8ebe639efcc28f3d59925f55a089045ac2b3  ./tailscale/tailscaled_i386_Linux.upx
4f0c79090a904ebf69a13d504f10dfa3dfbdac240b770e00908cf33f55b701c0  ./tailscale/tailscaled_mips64_Linux
cb32a95eac6701aa3cee7f2492c8e82ba9baa52c87d8d0831eaea4275f02cd19  ./tailscale/tailscaled_mips64le_Linux
bb35adf8a8832ed3a70438eeb5760642f0bd5aed703f3b751354de733d3e2b92  ./tailscale/tailscaled_mips_Linux
16e40e265379cc66b90f9c8d2bdef6426a28fd2d54bd3587ea29b45c7b65220c  ./tailscale/tailscaled_mips_Linux.upx
fa8e95cce0473c7a1d17c9cbdc916d3213e8b1d1f5285e8558e045bd3e2eb353  ./tailscale/tailscaled_mipsle_Linux
d192fd2302d95b3e82fadb6cc2d4eed7cc0dbe00dd70ea3e17d3dea3744cf037  ./tailscale/tailscaled_mipsle_Linux.upx
d338a9551816d5dc742557745c261f594c1547a39ba380263acb74258ebdadf0  ./tailscale/tailscaled_powerpc64_ppc64_Linux
c92b39519cd83efee4b259707ac79583d54f91c77b80bac832cb82f3f2303fb3  ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
8c123051f2c774168bd3016be617603836bc878ebf395998c4ce3a7cec068303  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
1cb048428cb651017322bff8de2b4c499f60fedb8203a74d296c9f4fb37ec6ca  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
1ca596f626773add39d3ca6e681fa60db2d467ba35cda37fd4551ed7b80f5e9f  ./tailscale/tailscaled_riscv64_Linux
1d5e5cbd2bfebf8c73e762081d915077da5ee8755b2cff3f92723220dc588cb8  ./tailscale/tailscaled_s390x_Linux
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
  20113724 ->   5892292   29.29%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscale_merged_i386_Linux.upx [OK]
  21024903 ->   6155736   29.28%   linux/i386    ./tailscale/tailscale_merged_i386_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  20076860 ->   5882332   29.30%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  23070392 ->   6754856   29.28%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx [OK]
  21823623 ->   5354140   24.53%   linux/ppc64   ./tailscale/tailscale_merged_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx [OK]
  21954695 ->   5669284   25.82%  linux/ppc64le  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11522056 ->   3545256   30.77%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  32541369 ->  13855732   42.58%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15816391 ->   7098120   44.88%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10919188 ->   3162400   28.96%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  10943764 ->   3166668   28.94%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx [OK]
  11337863 ->   3169312   27.95%  linux/ppc64le  ./tailscale/tailscale_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  28946766 ->  12303048   42.50%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx [OK]
  21430407 ->   5571616   26.00%   linux/arm64   ./tailscale/tailscale_merged_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx [OK]
  21037191 ->   5422012   25.77%  linux/ppc64le  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  32127077 ->  12446840   38.74%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17291728 ->   7100728   41.06%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  32289035 ->  12518284   38.77%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_Linux.upx [OK]
  22311047 ->   6687548   29.97%   linux/amd64   ./tailscale/tailscale_merged_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx [OK]
  20971655 ->   5113152   24.38%   linux/ppc64   ./tailscale/tailscaled_powerpc64_ppc64_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  16106978 ->   7380464   45.82%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17384250 ->   7150492   41.13%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_merged_arm_Linux.upx [OK]
  21037191 ->   5326032   25.32%    linux/arm    ./tailscale/tailscale_merged_arm_Linux.upx
testing ./tailscale/tailscale_powerpc64_ppc64_Linux.upx [OK]
  11206791 ->   2915608   26.02%   linux/ppc64   ./tailscale/tailscale_powerpc64_ppc64_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.66.0
  tailscale commit: 2b2f4268ad16fb3330ef3dea8e4df92443ade52e
  other commit: 4c86ccb9d46a4f0782acb35d8302520dc8ad5c58
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
1.66.0
  tailscale commit: 2b2f4268ad16fb3330ef3dea8e4df92443ade52e
  other commit: 4c86ccb9d46a4f0782acb35d8302520dc8ad5c58
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

