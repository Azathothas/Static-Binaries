
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=09TG3nvloZB6RAmFo-p5/L_Ndwb0IX82Pga64RNNR/sr-TCtdSWLg5OSaaOhQu/U2mVZPrgEvuUd9Xk2QPt, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {7F4CB047-5755-4D00-9F43-A23E11A61971}, Create Time/Date: Mon Aug 21 20:20:08 2023, Last Saved Time/Date: Mon Aug 21 20:20:08 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_aarch64_arm64_macOS.upx:               Mach-O 64-bit arm64 executable, flags:<|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=M4iyRSZxEchrtgxikaWE/cz6R-ykpCnP3bOBnYXAb/6aYyo0vacw4ZuF-Onlbk/gou_h15gIFL4uuyCoqhK, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=KEWhEWVxX0qqACkpHIo5/N3eezBLwrA-dEzOaCM59/xxitVaad97W_muVLrto8/pb9ExY8J4tA-g34Sf2sb, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {9F587231-63EF-4200-9FA8-6BBEB38395FD}, Create Time/Date: Mon Aug 21 20:19:57 2023, Last Saved Time/Date: Mon Aug 21 20:19:57 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_amd_x86_64_macOS.upx:                  Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=I0ZSMqUM-SWVPj7mdbbi/kHp08AOFhlcFFFOCx35N/EFCrmM53dymtQoNj7XBl/jXlHdE3n-cKwRZlHnZU6, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=3WiMUyJFGsqMcoNJretq/HqH9nvTe7mqOyucxFqL0/a8eFFAnz8QRn9ZQvstZR/Nf6m5A8Xre8oTCCS5KFN, stripped
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
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=aWeKjEucYu2oLPwlbAGl/3t9Tun4y37_ukSHnVINt/6_WWAK041UolWbe_-ruy/4K0M0F6YeBZ4Fr3e3n9N, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=7gpeZeqhZ3zKwAK8t4Sq/KAwOoiya7zCZgUS4uxCx/EhxD7nZiRlsF5kgsyzr5/AL-Ii2n3v1c1xDAi3WKu, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=04q0O584_1uZP_PxHJ0S/NLdwf0kjuIVruOSoNKix/K4a3SwgAF0aGtdlIxzdj/mnBf_sHPb80118kbhR8H, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=-hVjc89DZcFE1qe1xtA4/i0xXeFx5qims0eOqFpG_/h0-ozIpWBCZIV0-kYM2M/N8LC47xTzT6Xc-NlOGdQ, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=2g6REOCHT7db_Z0xx4ch/pKCh73FpAyoGENFzhFzn/C9D_JzV_zpde6UU0aVCF/JHqQXBwFlJx3DMZu2Pgf, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qvhzXOu_zRa1u0rDTGKp/ZF-mCASRuTw-QuabTciP/7z17-H8wHilfVga93M3i/ROpkSpQmtb3HMInEACKb, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=pG6PMUQ0QfyqA18TXv4l/XYwo9xWUOVof-sY7ecJn/vVhCJNbOeLZwfNNkblG6/5NtDlwPwP7Kzf7jrrfEp, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=zG8gWjQTfUYb-75ngM6o/w94kBQ0INfHIe6PNXUAz/RU7vlh6dU7UitWxpGeQT/_6nCRP8YY1t7HHQKeCcl, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {2B081D11-8EAF-45D2-A995-40D7A19173A3}, Create Time/Date: Mon Aug 21 20:20:05 2023, Last Saved Time/Date: Mon Aug 21 20:20:05 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=b6YUrtZyTEHf9g7sEij7/t6oCbG01p0dkckh1P6_o/AmIyV_GCJCvnd32eClW6/kHAh9yZxoLTMipInUXbx, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_aarch64_arm64_macOS.upx:              Mach-O 64-bit arm64 executable, flags:<|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=-eWwixu0liqUTQ_LrmBN/yNKfHcgYkg1a9vI65KCX/Q0J65SupBsh9w3mQF5sO/irb6vAPob0w6bH82VTOi, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=kAkLxDKt6OeTFOssOAEr/exZ6uOyttgZEy67T0Lmq/yLyDDYBrW54x27fz46KK/-3Uvc2pXcF8J_3yu2LGs, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_amd_x86_64_macOS.upx:                 Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=S-4dcCLNZOJFY6RD9e8-/-Mz7tkWjPE1p7a4NtIdl/AH0y7q9c9STp-wVVtYnd/6R2188hsvwjZeivbAxfp, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=SiIOcbWKq2YBpOfVMmXI/dDq986bBM2dWxdNRB4Ox/K1ETBAI5Qa-I0gL7iVdx/mIo6lwllbuZcgQK5i6v2, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=-plH_gSBwq39-p_YuqqH/j-yVz_4MqruWoIaizapO/xvGvYIFbX4zY2mTctUL5/TVjK71bZPb74SrXi6axH, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=0xJlTFsEO7vHu2Thbv1l/mqrqU3i-KcDoDi62h2Ul/276qpByjyMfa-SJI5OfO/lQRZbFzMlA402QlJm2DB, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=S7EzefY4zzzPk8Bx4PBU/cy7Ind8_REaDRRV9Zd2l/sRjMZnk5ZgFUxPAa1ogi/-x6UuJWrOC-rNdGrGe56, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=PEryExuaypWR6Wc1z6j_/8FRPXd74Ft7yZp_SxbwQ/aLeLHFFB9u93ghZtqM9u/Bfn46u-aEBimf63MV6Zj, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=hskT2LZO3JUpOkxDexAp/C9rPJKpdPJqp3yt0miCf/HA4Ys59cLrbtRXuOdFED/sloWqD7uXl-hGktCOYiO, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=AK6-UpOWV3HDWNBxT91G/y8fte-ifdmLGw6JT2Vvx/8QZPXWQK8wx_80IV-njL/WACrtwiXPCQT4t5iVd2r, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=MuUdGheDvhcW-AvrDInc/wAag4vcY1fqGRjDKWCHh/CEr9rHTVSx8VsxsiVA79/VY484wxO-psKno1ea2_R, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=2g1YmUnn1hMw62TlkGWl/aoO14quFCnPkJTOwSjcx/5hYtWQtdgncN_Z7GDAyn/2XCeJMIfut63R1dSP91B, stripped

--> SHA256SUM
989a04702448241f88be6bb9eb161bcd6037a557faf7428c9432bc7f49bcaab8  ./tailscale/tailscale_aarch64_arm64_Linux
f7de705bedf370c61adb79544aef8f0e7cb36019c84dbedfe3876dee64f8b785  ./tailscale/tailscale_aarch64_arm64_Linux.upx
b67010fee1c92839023ca633886ddda23d5e66762571c270723a38ff911dbf07  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
1ca4dc9717861d0cbc61682447f6f24d44ff789d0d91b3beb65d197b6837f6bf  ./tailscale/tailscale_aarch64_arm64_macOS.upx
988e175a95b98cee5da7a2b7d75d5d2c2d81863e7e1cd296e79a6cdadfc90e34  ./tailscale/tailscale_amd_geode_Linux
73a610371e21fe16b7a7812e3786b1868dbf3de5675be3afe788d970eb68341b  ./tailscale/tailscale_amd_geode_Linux.upx
8c2455dc0fb7d6d6f4ef205262396b69a6f4493afab19a7df944eb5adf2ca049  ./tailscale/tailscale_amd_x86_64_Linux
457bc0adf92456cc84fe29f1e471562818be14944a50f050d9cfdf91ad927929  ./tailscale/tailscale_amd_x86_64_Linux.upx
cf10ec1f07b54bd3b456e750e13f24313f8b27186f651d35546844e383104b54  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
9bb5ddba5e09e4992ccb946d89aa49d6397da4731601e74c2220ff618f3b4bc0  ./tailscale/tailscale_amd_x86_64_macOS.upx
cd3787bebf54286d97cb7eb4c61b3bbcabcb195bef51ceaaa812c1e0b0b24481  ./tailscale/tailscale_arm_abi_Linux
c710ec579d45f12797cce36da7645a2baadc5cf4abe9cffc0700b68b894368e3  ./tailscale/tailscale_arm_abi_Linux.upx
31cc0c6b34a11e448e5c2d5c5fe4c37f88720f910c417f3f55bf8474d07545cc  ./tailscale/tailscale_i386_Linux
6d6e28c6db42172066f20fee6f8cef41ca878626fc468242264b2d166b33d26e  ./tailscale/tailscale_i386_Linux.upx
7b30eccc0ee37ef1482f1cbe7680083b2abc00dcd229f7d02ea43a1a3937cb47  ./tailscale/tailscale_ipn_setup_Windows.exe
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
0016ba404a58daac6d43caa18be8bac79f36abd6937377f6216cacac3eec4c4a  ./tailscale/tailscale_mips64_Linux
49bc4a8cf8f0aaf59a7205728d33c3d3089469181a0089d6d21ed638b42fa73d  ./tailscale/tailscale_mips64le_Linux
37a0e727e18073bf9d61be3ddd216a0f158c87eacfd386068c156b211fcecfbf  ./tailscale/tailscale_mips_Linux
099165ec53963973369f4f3910d516514c3eb2c397e4038fae97a1b8637fb59a  ./tailscale/tailscale_mips_Linux.upx
8b5d29a5925cd7143741d34de6c27c377b9b2ce81689714e1ebaf3350d64fd9c  ./tailscale/tailscale_mipsle_Linux
852612c9fe034fd32136002fccc521d73368d2f8764390b6e22be72d38c92b24  ./tailscale/tailscale_mipsle_Linux.upx
78e238bd1e809da67bcf8b5b584c360c22acb58ee488157dfb91fa1f74860a63  ./tailscale/tailscale_powerpc64_ppc64_Linux
1f2f108654738d9beecddd0232eb656713d97fe2954e38fd119eef79064d1fdb  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
185b45f273f7253788bc3426ec3d75ccbb0cc4146bc751d7d0cdf69761861273  ./tailscale/tailscale_riscv64_Linux
dc6754eeacef5a079115d864cbc0e73882cdc6621642323bba827434e1c99769  ./tailscale/tailscale_s390x_Linux
ed8db7dae63b56c89a588160fc32444c2055827e4a746271b36c74b3724f0c9c  ./tailscale/tailscale_setup_Windows.exe
c542e95eff1079afc2df31db14b2954a07acfe0c62abebebd5e8648c50e437c7  ./tailscale/tailscale_x86_Windows.msi
fd09f7d052b47a305771f5c00c8740b59dcf7d96a2af5c342b672622ec7caddd  ./tailscale/tailscaled_aarch64_arm64_Linux
334f3f14b459f6606cde65c27e54bfb0c89cd7845beb72ffa296ef86529561a0  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
fe787c215a47ea086e19aa4d8b50dfda9f559902362d314ed205b1da1c9d331f  ./tailscale/tailscaled_aarch64_arm64_macOS.upx
2baf1919985234037a43691795072cbf9cc3e3ce824ff56f4a8e95969121355c  ./tailscale/tailscaled_amd_geode_Linux
ed74dcb06a8fd5e79a31ec2dc2c38988bb277ad384dcc1dc7f28cbe680e9705c  ./tailscale/tailscaled_amd_geode_Linux.upx
74c35a5b89519aadf715979b2f8b8fedd441f3c0aebc6668c27530f89f47994b  ./tailscale/tailscaled_amd_x86_64_Linux
bf34963c095a75b2bba4159af08c47b2d33af882a996c920a272c77a3266a2fc  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
871fdb97f2eb296fb47716d77d9b5f23b0c7a7430eb1411f3a4907e5ee7a5fcd  ./tailscale/tailscaled_amd_x86_64_macOS.upx
586c6445745f3968b0a0087e3c28950f0c36b887e037826b1c1a0c927029361b  ./tailscale/tailscaled_arm_abi_Linux
f90ead0feaee86ddfd67fa81aacb661f56b05a654d63b3f3e8ad90a21f8a47d5  ./tailscale/tailscaled_arm_abi_Linux.upx
cce543a6435fe5cf9b7addeb4bc736cb670461626dae21bf5f04f4e2a72484a3  ./tailscale/tailscaled_i386_Linux
6b653375b4734daa1b5b9485d331bab94d3e7379e16468e4feecf165b4c9623a  ./tailscale/tailscaled_i386_Linux.upx
81dab3510a7d40e3957b43d036ca2de2822ddb3a9786c11f936554601801f6eb  ./tailscale/tailscaled_mips64_Linux
9fa9239225ccdc970bbeb0419aa914e844cb93f1518f145c43de22f18aa26875  ./tailscale/tailscaled_mips64le_Linux
464468b968023871c5ceb9cce68f629c2aa06c8c24c3a6bcd0715cd9388a011b  ./tailscale/tailscaled_mips_Linux
2f3cebdd17a5c3e72a0d672a7a0d1d601d19c2d9e9acf4294944fca39307f498  ./tailscale/tailscaled_mips_Linux.upx
18cfe57cbc1ba97cc2f23126b7bbadf2ef2aada030100ec63eb6c663acf30286  ./tailscale/tailscaled_mipsle_Linux
3cd072289d07d2716a628b9b7b47f3bbdd620026b91369085b7f0b1b82e3123b  ./tailscale/tailscaled_mipsle_Linux.upx
d10c502148c6010b33b39eead9e39925918ec9f9de024ebc45fdde3a8a4ae7d8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
263cb6854e8661e0388ed477813f0b74d062c10bde5b874b32b4afbbffa4c8be  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
84ee55ab52457b90821f36f6d622fd368c82149d43ba65e1aca6124febf8328c  ./tailscale/tailscaled_riscv64_Linux
b20e24c5b7a5a71e66141143a1edc070cafc41b6ed0eb202bf0affc63a251839  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
17M   ./tailscale/tailscale_aarch64_arm64_Linux
7.5M  ./tailscale/tailscale_aarch64_arm64_Linux.upx
20M   ./tailscale/tailscale_aarch64_arm64_Windows.msi
12M   ./tailscale/tailscale_aarch64_arm64_macOS
3.2M  ./tailscale/tailscale_aarch64_arm64_macOS.upx
12M   ./tailscale/tailscale_amd_geode_Linux
3.2M  ./tailscale/tailscale_amd_geode_Linux.upx
12M   ./tailscale/tailscale_amd_x86_64_Linux
3.7M  ./tailscale/tailscale_amd_x86_64_Linux.upx
21M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
3.6M  ./tailscale/tailscale_amd_x86_64_macOS.upx
17M   ./tailscale/tailscale_arm_abi_Linux
7.2M  ./tailscale/tailscale_arm_abi_Linux.upx
12M   ./tailscale/tailscale_i386_Linux
3.2M  ./tailscale/tailscale_i386_Linux.upx
42M   ./tailscale/tailscale_ipn_setup_Windows.exe
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
19M   ./tailscale/tailscale_mips64_Linux
19M   ./tailscale/tailscale_mips64le_Linux
19M   ./tailscale/tailscale_mips_Linux
7.3M  ./tailscale/tailscale_mips_Linux.upx
19M   ./tailscale/tailscale_mipsle_Linux
7.2M  ./tailscale/tailscale_mipsle_Linux.upx
12M   ./tailscale/tailscale_powerpc64_ppc64_Linux
12M   ./tailscale/tailscale_powerpc64le_ppc64le_Linux
18M   ./tailscale/tailscale_riscv64_Linux
13M   ./tailscale/tailscale_s390x_Linux
51M   ./tailscale/tailscale_setup_Windows.exe
20M   ./tailscale/tailscale_x86_Windows.msi
27M   ./tailscale/tailscaled_aarch64_arm64_Linux
12M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
4.4M  ./tailscale/tailscaled_aarch64_arm64_macOS.upx
18M   ./tailscale/tailscaled_amd_geode_Linux
4.7M  ./tailscale/tailscaled_amd_geode_Linux.upx
19M   ./tailscale/tailscaled_amd_x86_64_Linux
5.6M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
4.9M  ./tailscale/tailscaled_amd_x86_64_macOS.upx
26M   ./tailscale/tailscaled_arm_abi_Linux
11M   ./tailscale/tailscaled_arm_abi_Linux.upx
18M   ./tailscale/tailscaled_i386_Linux
5.1M  ./tailscale/tailscaled_i386_Linux.upx
30M   ./tailscale/tailscaled_mips64_Linux
30M   ./tailscale/tailscaled_mips64le_Linux
29M   ./tailscale/tailscaled_mips_Linux
12M   ./tailscale/tailscaled_mips_Linux.upx
29M   ./tailscale/tailscaled_mipsle_Linux
11M   ./tailscale/tailscaled_mipsle_Linux.upx
19M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
28M   ./tailscale/tailscaled_riscv64_Linux
20M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  29901381 ->  11586184   38.75%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  27081648 ->  11443268   42.25%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_macOS.upx [OK]
  12760544 ->   3743760   29.34%   macho/amd64   ./tailscale/tailscale_amd_x86_64_macOS.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  18986154 ->   7526264   39.64%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  27883058 ->  11988700   43.00%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  11959572 ->   3267444   27.32%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  17555390 ->   7772948   44.28%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  18787708 ->   4904140   26.10%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_macOS.upx [OK]
  12433954 ->   3293200   26.49%   macho/arm64   ./tailscale/tailscale_aarch64_arm64_macOS.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  12579528 ->   3841492   30.54%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_macOS.upx [OK]
  17712050 ->   4554768   25.72%   macho/arm64   ./tailscale/tailscaled_aarch64_arm64_macOS.upx
testing ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx [OK]
  22822594 ->   7766032   34.03%   macho/arm64   ./tailscale/tailscale_merged_aarch64_arm64_macOS.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  29754982 ->  11531032   38.75%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  11992340 ->   3274064   27.30%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  19759832 ->   5773596   29.22%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  17386028 ->   7526264   43.29%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscaled_amd_x86_64_macOS.upx [OK]
  18032448 ->   5115920   28.37%   macho/amd64   ./tailscale/tailscaled_amd_x86_64_macOS.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  19085093 ->   7568860   39.66%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscale_merged_amd_x86_64_macOS.upx [OK]
  23125488 ->   6275088   27.13%   macho/amd64   ./tailscale/tailscale_merged_amd_x86_64_macOS.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  18746748 ->   5345400   28.51%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.48.1
  tailscale commit: 528f95da6a5e12961b36a39bb3fa512c093d2330
  other commit: c4e4acad7220e23eb6f835e2b846c0378612d43a
  go version: go1.21.0

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

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
1.48.1
  tailscale commit: 528f95da6a5e12961b36a39bb3fa512c093d2330
  other commit: c4e4acad7220e23eb6f835e2b846c0378612d43a
  go version: go1.21.0

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

