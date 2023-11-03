
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
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=onRPvChVzWz3sHXNwXyO/Z6_DZHH_QDNeA8TbXvrB/yYoRNYKiBeWALgf_hH78/yKlmCjxwtE7NFIYZrNJJ, with debug_info, not stripped
./tailscale/tailscale_aarch64_arm64_Linux.upx:               ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_aarch64_arm64_Windows.msi:             Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Arm64;1033, Revision Number: {A3FC82B2-A331-4024-9041-B1921C5295DB}, Create Time/Date: Thu Nov  2 22:30:21 2023, Last Saved Time/Date: Thu Nov  2 22:30:21 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_aarch64_arm64_macOS:                   Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=GMa7xXPdHF-T66LRSsiV/smHQMGqjeQeKmHg8v8A0/OSzgpQOKaKfTMBjZae7e/_zGx_wZlNGWSuuyxSkHn, stripped
./tailscale/tailscale_amd_geode_Linux.upx:                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=Lb2YkdgZ9jD0aABC0N2c/4J5z1Um_bmIqXJfyh1g4/qVrTCbAAvPPcr-juLrQj/FJU6QxzieDVKhGkk5FdI, stripped
./tailscale/tailscale_amd_x86_64_Linux.upx:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_amd_x86_64_Windows.msi:                Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: x64;1033, Revision Number: {089EC28E-9062-4F2A-9ED2-0D2C7F7141C4}, Create Time/Date: Thu Nov  2 22:30:24 2023, Last Saved Time/Date: Thu Nov  2 22:30:24 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscale_amd_x86_64_macOS:                      Mach-O 64-bit x86_64 executable
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=dQ09kQrtr3dyA_baWlhv/X3YQSGz8vXuKxBSf2_vV/U7QPlivJrnBQOPSh2Gzb/6_l7owuaohG0QgOc5eD7, with debug_info, not stripped
./tailscale/tailscale_arm_abi_Linux.upx:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=Z0U1NxqtUH2JyMnSPAAc/QAmyCgocLvtHJdHPlOEv/fS9HowtIWxdtD5m3F9SY/_CAf_aP3qN6l1Rt91l6R, stripped
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
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=USRxPV-mAneid3GH7OV7/q3cqY-BJZVroJaJrrn4e/B7j-ozaWW__hy8S54eyV/3zqiIsBvUFH8Z3h5rRzx, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=FDPuBWkxJW7ZYuqVce5H/8WKrl3WNtbV8Sj4BVblE/CRmERLISWQjt34L4i3H1/ORrQwdIX3h8RztrnU4Gk, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=_2MSj31y0KqSgoBxj0S0/CjAPs0RvMKwvnjujzw5Y/71Anpz1LYHESzgou2aCv/V1WpKlcJT2QtGdwJ50wo, with debug_info, not stripped
./tailscale/tailscale_mips_Linux.upx:                        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=I4eBFia6nexpanFfVYD7/S1rXihTbiMzpUC7A2wcf/Eo85uofIaRoi8RNJZdIC/_bGzeot_HRekYiuihC1i, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux.upx:                      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=2g6REOCHT7db_Z0xx4ch/pKCh73FpAyoGENFzhFzn/C9D_JzV_zpde6UU0aVCF/JHqQXBwFlJx3DMZu2Pgf, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qvhzXOu_zRa1u0rDTGKp/ZF-mCASRuTw-QuabTciP/7z17-H8wHilfVga93M3i/ROpkSpQmtb3HMInEACKb, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=F75qlxz4tuBsMsmPHQOj/w__RZXPhRnwysU2IKnRF/ZcOh8mqOsgE8ZdfBfcmS/WMBP2x-hrlTlfzFNLkcN, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=zG8gWjQTfUYb-75ngM6o/w94kBQ0INfHIe6PNXUAz/RU7vlh6dU7UitWxpGeQT/_6nCRP8YY1t7HHQKeCcl, stripped
./tailscale/tailscale_setup_Windows.exe:                     PE32 executable (GUI) Intel 80386, for MS Windows
./tailscale/tailscale_x86_Windows.msi:                       Composite Document File V2 Document, Little Endian, Os: Windows, Version 5.0, MSI Installer, Code page: 1252, Title: Installation Database, Subject: Tailscale is a zero config VPN for building secure networks. Install on any device in minutes. Remote access from any network or physical location. Built on WireGuard.WireGuard is a registered trademark of Jason A. Donenfeld., Author: Tailscale Inc., Keywords: Installer;Tailscale;vpn;security;privacy;wireguard;networking, Comments: This installer database contains the logic and data required to install Tailscale., Template: Intel;1033, Revision Number: {0F78BCB6-3418-4D44-AC55-BA1A20330729}, Create Time/Date: Thu Nov  2 22:30:19 2023, Last Saved Time/Date: Thu Nov  2 22:30:19 2023, Number of Pages: 500, Number of Words: 2, Name of Creating Application: Windows Installer XML Toolset (), Security: 2
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=bpkt4v5FJy1KUJTVXYAp/mbN09yE1IdyQohopgVOz/11BOyvOjfFDZkpJqyJqR/wvGYJvlpjWr-9s0IziB-, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_Linux.upx:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_aarch64_arm64_macOS:                  Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=hJbbjUBpnMjoPTjEz6oJ/lJRk9AG_3M-fJcMHaZa0/6WCefggEbrl6bqiwv8Pa/uCX1SEnVTU-4RFyiZfTZ, stripped
./tailscale/tailscaled_amd_geode_Linux.upx:                  ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=Uy598ru768ZtIwywq-oF/lPP2t3gLe2uo91zEJ_QL/3R5WKJwTV6hENumJSTdD/hQi_aLN7SW7awuJciudJ, stripped
./tailscale/tailscaled_amd_x86_64_Linux.upx:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_amd_x86_64_macOS:                     Mach-O 64-bit x86_64 executable
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=a5GT-gOTh4PNFe79NG-G/VDGmzaK3j_rt5C4lIoLp/sarkJgr3VToSNBYY9P2D/FEJIyh1563UrAMU2dRmZ, with debug_info, not stripped
./tailscale/tailscaled_arm_abi_Linux.upx:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=oFA47OOF0xydxY1v8iOR/3MrV8Fy9X0XLU0vYk7DA/BeFmImHakgFUDWthAvE2/jqNEK_QRlbrebPWdfAVC, stripped
./tailscale/tailscaled_i386_Linux.upx:                       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=ujhSZCdvssVb_igZqXki/K6ryS7W_iyRWgR1wrABy/F6ms0UM2l7dXTN48PQ4D/KtvzC2wEPBQq91nSuBTO, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=I5HInyTXkyXxwoNP8Awg/ociaz8319fklL6YcPznz/6PZeqdm0Mu7o7GB97TnI/FMJdlkBYee-e7AeNbd9l, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Ws3cTxp0aNdvfyeQQpYI/VdyXZye4a2Fhweitnr6D/G6ATb6XIfb5oGkZkIi59/01HQPlXOoQxCz2OngCAw, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux.upx:                       ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Z3FjuNedBEBFQL-IjkOR/9SBvG5At3Gym2fPXCMw0/Ye0EIOU6X8co5HySkoUi/LwcEv8d83EcaFwkehMFS, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux.upx:                     ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=hskT2LZO3JUpOkxDexAp/C9rPJKpdPJqp3yt0miCf/HA4Ys59cLrbtRXuOdFED/sloWqD7uXl-hGktCOYiO, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=AK6-UpOWV3HDWNBxT91G/y8fte-ifdmLGw6JT2Vvx/8QZPXWQK8wx_80IV-njL/WACrtwiXPCQT4t5iVd2r, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=P5wILhi9yAc9auZRKhkf/T_5SSWxXwTIGBontKw5R/lcDVOQSUsp2yma2529Ap/HUhVtBZHfDkKqGJD2abe, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=2g1YmUnn1hMw62TlkGWl/aoO14quFCnPkJTOwSjcx/5hYtWQtdgncN_Z7GDAyn/2XCeJMIfut63R1dSP91B, stripped

--> SHA256SUM
51d998f3719497f5d966b81ab24a8ad43b6ea0ac4d885c662500dde31836f18c  ./tailscale/tailscale_aarch64_arm64_Linux
3d793364e53a15452504f6b45897b005e309ab2fed09fe36baa613a4ac11bb8b  ./tailscale/tailscale_aarch64_arm64_Linux.upx
d6dac2486b2324441b79f7d3104d7bfe1cfb4178cc71442a04797462565ddfdc  ./tailscale/tailscale_aarch64_arm64_Windows.msi
74dddcce5f5d8cc113e37fc3a114c0f6921537f66666d943ef2641dc8e3aa1f0  ./tailscale/tailscale_aarch64_arm64_macOS
d7221f81ec951f5d6ebb43a4b2af7487274e8bf2630351eb200a1edaf70face2  ./tailscale/tailscale_amd_geode_Linux
e56f7ec9c11c8dc2470e71bb496933b3a71dbc4726ce1af19812eccba81a3319  ./tailscale/tailscale_amd_geode_Linux.upx
422b04ca638240854346e22b1b1242a90a5a1549fc44b5f58ab7659924f52527  ./tailscale/tailscale_amd_x86_64_Linux
9f727925e491dd36a6e748ef57d90e941ad69a8023e5945547b9abca16440f2e  ./tailscale/tailscale_amd_x86_64_Linux.upx
78f3da14f77185608374b3b70ca3e43d39d4c58f073ba8e22e4347c2f6a746ae  ./tailscale/tailscale_amd_x86_64_Windows.msi
dcc7db674de98b242d481a13a9196a5ac9787f3eca1a2f54b8042ec15e6bceff  ./tailscale/tailscale_amd_x86_64_macOS
e754eace94e3be3719870b8fe23199d80ab9d1a54171da5e56c152b4b8b53528  ./tailscale/tailscale_arm_abi_Linux
19dffc612832dcf1c819a51cee5b6d95ab897420ff2746a2340aa9f27387f423  ./tailscale/tailscale_arm_abi_Linux.upx
726aa44c8e3c11016af212aeb3b9ed49c52beab5a82dfc03c41a4d8c25f904af  ./tailscale/tailscale_i386_Linux
036e87299317fd16dfea6e9e866a4d95efef17e673e1fd3d9e204114cfe80577  ./tailscale/tailscale_i386_Linux.upx
8b135f776d2703360ae10d9854aa6a868dfd750678832e92ce0f08766eaa69bc  ./tailscale/tailscale_ipn_setup_Windows.exe
9605b59aecb09e76811d923104a9e74a63cd5e59d4dd34a1655832f3a526f82e  ./tailscale/tailscale_merged_aarch64_arm64_Linux
ba5c19c108bbfab32360328c793aa2632db68999e2f69d3f6731d5a50b2d83d2  ./tailscale/tailscale_merged_aarch64_arm64_macOS
075b1f20fd81e45edc168edcd1fe5b2f4e5a1c68965fe359498077dd14cb07e8  ./tailscale/tailscale_merged_amd_x86_64_Linux
45874677df374dcbad09671cd9e821d65a8ff060d1041cb57b1c79d808beee07  ./tailscale/tailscale_merged_amd_x86_64_macOS
a23d5fdc6a4c5688e830790fc0b1424bde7c3040ec0c45e74834abf88d90ef83  ./tailscale/tailscale_merged_arm_Linux
4403a7196256361c2d1fbdca43596cd6d044641f0e23eca1b728446070bc21c6  ./tailscale/tailscale_merged_i386_Linux
f20ae47045af2b2dec76b0b26dd960e7f3ffe2e27ef71cc12552622157cace0f  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
0ea5dbb0e64f13df5c8a187160818d39f5ecd64937b8fcd1e12afbbc607f248d  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
7aac28eebe7aab5d11b38c231740e137b99cff909eab74aa94e50d5126c84087  ./tailscale/tailscale_merged_s390x_Linux
1161cb5b7157402f8252860f48f2bc1302366b947d24ab35d31ea000b149965e  ./tailscale/tailscale_mips64_Linux
66eda8bb9807a894d1612124e280e523e3c63617011ef032b6622195483f928e  ./tailscale/tailscale_mips64le_Linux
942a24f0d9dba2ab0cc425903d2dd85e2b0d36521c62ef9afcdb57bfafdeef64  ./tailscale/tailscale_mips_Linux
2c3c8a94e3c09dab229f502fdc095592072fecb4ed7cdc5fe5acab7b8c1f2891  ./tailscale/tailscale_mips_Linux.upx
d5a9e1da0ea0ca230b5d67899cd53daf6058b7475a476bc869b96f5391bf950f  ./tailscale/tailscale_mipsle_Linux
388be80dfe2348ca02c2f84827c7afe1cfc49f8b7df5f18b6388103419b1433b  ./tailscale/tailscale_mipsle_Linux.upx
78e238bd1e809da67bcf8b5b584c360c22acb58ee488157dfb91fa1f74860a63  ./tailscale/tailscale_powerpc64_ppc64_Linux
1f2f108654738d9beecddd0232eb656713d97fe2954e38fd119eef79064d1fdb  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
4d6cc6a200f83a7b3ada8087f7aac4e335b70fbf781ba96cb4bf74025d0c3d19  ./tailscale/tailscale_riscv64_Linux
dc6754eeacef5a079115d864cbc0e73882cdc6621642323bba827434e1c99769  ./tailscale/tailscale_s390x_Linux
64a8ad28cbb67a6171236abe39f75a039a761a0e1aacdef75b26781887cef9a8  ./tailscale/tailscale_setup_Windows.exe
65c985d5da0aab8074b7ac632fb54b6ea420d678cc575c9971b86b2d5d00397e  ./tailscale/tailscale_x86_Windows.msi
042d9ab5dfbf1f119ab5d1cb550740ee55674a11e513d6ffb2daa5c477de4cf2  ./tailscale/tailscaled_aarch64_arm64_Linux
2888cdbfb3ec247812e1c217a3c8fbe4e82cb06564764d079614d5476da5f6cc  ./tailscale/tailscaled_aarch64_arm64_Linux.upx
1259d0cd171bb6ad403f5a8094eecdbf09174de9e2046c3999e474713ac4f25f  ./tailscale/tailscaled_aarch64_arm64_macOS
9f6849b0c7494ff340482fd809f7db39b8255bde58ae41198bf46cdf43e79aea  ./tailscale/tailscaled_amd_geode_Linux
5f3f7bed448a117787bfe8db163215cf9d49e14669791328ef1d9dc630982aa7  ./tailscale/tailscaled_amd_geode_Linux.upx
7aad94742f579654fc79f8af843f8da84851f3a7ebef9dd2978d13e5e6e0cbd7  ./tailscale/tailscaled_amd_x86_64_Linux
96470eaab9be80fa4b79eb96e9c06900caaf89502c771aed2f3c1d03ff10120e  ./tailscale/tailscaled_amd_x86_64_Linux.upx
d6e29ccbc5942413b011480586f9f1638e6388577323b3cf1241d877c4794b0c  ./tailscale/tailscaled_amd_x86_64_macOS
c79810a63b673441ed1a9cd1a614c303cb8f8f517dd0ec829b45d7581877bf24  ./tailscale/tailscaled_arm_abi_Linux
e4b910f56c3192550bec2b3695e5d97f7777d0745cf14ed86e3c673742269b6d  ./tailscale/tailscaled_arm_abi_Linux.upx
d34e28f413eb7193420fa9c335ce6bf5b2da534a1d7445365ea02c75386545f1  ./tailscale/tailscaled_i386_Linux
308d0a436319feb8f12c4446fa3798447a8571944413def2b58f7b8d30d6ff35  ./tailscale/tailscaled_i386_Linux.upx
dc4524f4b231e00ea0aaee77fd5620aef1ccd1903849ab141c719a0d04fcad0b  ./tailscale/tailscaled_mips64_Linux
331d670e2c14552504fdf8d53b0db48554b0221e6ae5530767d0bc94cdb0b60b  ./tailscale/tailscaled_mips64le_Linux
d5ce3f79a3d1894a85812c54e7479aa786349f8c2246a19be3f8f385099b3423  ./tailscale/tailscaled_mips_Linux
1e6deacddf1105171966f72d22052cf6a6635ddd81be238e36b8b80fc2bc652e  ./tailscale/tailscaled_mips_Linux.upx
0992733a13db14bad87db45270b18168688ac2f071b0126c632733b690e0f527  ./tailscale/tailscaled_mipsle_Linux
52ce52fafc3ce4a447ae2567e52135d9f7d7f1347ac268739fae4ebbb620cf50  ./tailscale/tailscaled_mipsle_Linux.upx
d10c502148c6010b33b39eead9e39925918ec9f9de024ebc45fdde3a8a4ae7d8  ./tailscale/tailscaled_powerpc64_ppc64_Linux
263cb6854e8661e0388ed477813f0b74d062c10bde5b874b32b4afbbffa4c8be  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
286106b3dfd21a8f8046ef1c66c15d37c8449201104217eb7b59f549d0d0938b  ./tailscale/tailscaled_riscv64_Linux
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
3.0M  ./tailscale/tailscale_amd_geode_Linux.upx
11M   ./tailscale/tailscale_amd_x86_64_Linux
3.5M  ./tailscale/tailscale_amd_x86_64_Linux.upx
21M   ./tailscale/tailscale_amd_x86_64_Windows.msi
13M   ./tailscale/tailscale_amd_x86_64_macOS
16M   ./tailscale/tailscale_arm_abi_Linux
6.8M  ./tailscale/tailscale_arm_abi_Linux.upx
11M   ./tailscale/tailscale_i386_Linux
3.0M  ./tailscale/tailscale_i386_Linux.upx
42M   ./tailscale/tailscale_ipn_setup_Windows.exe
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
20M   ./tailscale/tailscale_x86_Windows.msi
28M   ./tailscale/tailscaled_aarch64_arm64_Linux
12M   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
17M   ./tailscale/tailscaled_aarch64_arm64_macOS
19M   ./tailscale/tailscaled_amd_geode_Linux
4.9M  ./tailscale/tailscaled_amd_geode_Linux.upx
20M   ./tailscale/tailscaled_amd_x86_64_Linux
5.8M  ./tailscale/tailscaled_amd_x86_64_Linux.upx
18M   ./tailscale/tailscaled_amd_x86_64_macOS
27M   ./tailscale/tailscaled_arm_abi_Linux
12M   ./tailscale/tailscaled_arm_abi_Linux.upx
19M   ./tailscale/tailscaled_i386_Linux
5.4M  ./tailscale/tailscaled_i386_Linux.upx
31M   ./tailscale/tailscaled_mips64_Linux
31M   ./tailscale/tailscaled_mips64le_Linux
30M   ./tailscale/tailscaled_mips_Linux
12M   ./tailscale/tailscaled_mips_Linux.upx
30M   ./tailscale/tailscaled_mipsle_Linux
12M   ./tailscale/tailscaled_mipsle_Linux.upx
19M   ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M   ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
29M   ./tailscale/tailscaled_riscv64_Linux
20M   ./tailscale/tailscaled_s390x_Linux
```

---

- #### UPX
```console

testing ./tailscale/tailscaled_amd_x86_64_Linux.upx [OK]
  20590616 ->   6004052   29.16%   linux/amd64   ./tailscale/tailscaled_amd_x86_64_Linux.upx
testing ./tailscale/tailscaled_arm_abi_Linux.upx [OK]
  28223968 ->  11908860   42.19%    linux/arm    ./tailscale/tailscaled_arm_abi_Linux.upx
testing ./tailscale/tailscaled_mips_Linux.upx [OK]
  31242580 ->  12054360   38.58%   linux/mips    ./tailscale/tailscaled_mips_Linux.upx
testing ./tailscale/tailscale_mips_Linux.upx [OK]
  17290604 ->   7074484   40.92%   linux/mips    ./tailscale/tailscale_mips_Linux.upx
testing ./tailscale/tailscaled_i386_Linux.upx [OK]
  19555932 ->   5560308   28.43%   linux/i386    ./tailscale/tailscaled_i386_Linux.upx
testing ./tailscale/tailscale_mipsle_Linux.upx [OK]
  17204521 ->   7037708   40.91%  linux/mipsel   ./tailscale/tailscale_mipsle_Linux.upx
testing ./tailscale/tailscale_arm_abi_Linux.upx [OK]
  15869299 ->   7038368   44.35%    linux/arm    ./tailscale/tailscale_arm_abi_Linux.upx
testing ./tailscale/tailscale_aarch64_arm64_Linux.upx [OK]
  15918931 ->   7235440   45.45%   linux/arm64   ./tailscale/tailscale_aarch64_arm64_Linux.upx
testing ./tailscale/tailscale_i386_Linux.upx [OK]
  10904468 ->   3071980   28.17%   linux/i386    ./tailscale/tailscale_i386_Linux.upx
testing ./tailscale/tailscaled_mipsle_Linux.upx [OK]
  31088529 ->  11994100   38.58%  linux/mipsel   ./tailscale/tailscaled_mipsle_Linux.upx
testing ./tailscale/tailscale_amd_x86_64_Linux.upx [OK]
  11403848 ->   3595532   31.53%   linux/amd64   ./tailscale/tailscale_amd_x86_64_Linux.upx
testing ./tailscale/tailscale_amd_geode_Linux.upx [OK]
  10937236 ->   3079436   28.16%   linux/i386    ./tailscale/tailscale_amd_geode_Linux.upx
testing ./tailscale/tailscaled_aarch64_arm64_Linux.upx [OK]
  28973964 ->  12461788   43.01%   linux/arm64   ./tailscale/tailscaled_aarch64_arm64_Linux.upx
testing ./tailscale/tailscaled_amd_geode_Linux.upx [OK]
  19588732 ->   5091684   25.99%   linux/i386    ./tailscale/tailscaled_amd_geode_Linux.upx

```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.52.1
  tailscale commit: 75d3c93858d7c9f80495fdae9e88967382ea333e
  other commit: 3e9627f3b3d109a0d99699a683cf457e99379215
  go version: go1.21.3

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
1.52.1
  tailscale commit: 75d3c93858d7c9f80495fdae9e88967382ea333e
  other commit: 3e9627f3b3d109a0d99699a683cf457e99379215
  go version: go1.21.3

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

