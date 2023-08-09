
---
- #### Download wget
> - **Sources**
> > ```bash
> > --> Linux:
> >      - Extracted from wget_busybox (Built & Compiled from source : 'https://git.wget_busybox.net/wget_busybox/')
> >        - GCC (Natively using Cross Toolchains)
> >        - MUSL
> >           - 'https://hub.docker.com/r/abcfy2/muslcc-toolchain-ubuntu'
> >           - 'https://hub.docker.com/r/blackdex/musl-toolchain'
> > --> Windows:
> >       - https://github.com/lifenjoiner/wget-for-windows
> > ```
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
!# For '.base64', simply append it at the end of the url
!# --> curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux"
!# --> curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux.base64"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_wget_busybox_aarch64_arm64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_64_musl_Linux"
--> ARM_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abi_musl_Linux"
--> ARM_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abihf_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abihf_musl_Linux"
--> ARMv7_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abi_musl_Linux"
--> ARMv7l_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abihf_musl_Linux"
--> i586 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_i586_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_i586_musl_Linux"
--> i686 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_i686_gcc_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips_musl_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mipsel_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mipsel_musl_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64_musl_Linux"
--> MIPS64el || MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64el_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64el_musl_Linux"
--> powerpc || ppc || cisco 4500 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox/wget_busybox_powerpc_musl_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox/wget_busybox_powerpc64_musl_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64le_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64le_musl_Linux"
--> riscv32 || CB RISC-V || RVC [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv32_gcc_Linux"
--> riscv64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv64_musl_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_s390x_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_s390x_musl_Linux"


!# Windows
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_WinTLS_lite_Windows.exe" 
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_WinTLS_lite_Windows.exe" -OutFile "wget_wintls.exe"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_x64_lite_Windows.exe"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_x64_lite_Windows.exe" -OutFile "wget.exe"
--> Amd x86_64 || x86_64 [32-bit] 
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_lite_Windows.exe"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_lite_Windows.exe" -OutFile "wget.exe"

```
---
- #### Install wget
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded wget_busybox binary to that DIR
 mv "$Path_To_wget_busybox_Binary" "$HOME/bin/wget_busybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/wget_busybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything
 cd "$HOME/bin" && "$HOME/bin/wget_busybox" --install -s .
```
****
