
---
- #### Download Wget
> - **Sources**
> > ```bash
> > --> Android:
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/wget2/dynamic
> > --> Linux:
> >      - Cross Compiled & Stripped from BusyBox Applets
> > --> Windows:
> >      - https://github.com/lifenjoiner/wget-for-windows
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
!#For Linux
--> wget_busybox_aarch_arm64_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> wget_busybox_amd_x86_64_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> wget_busybox_arm_gnueabi_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> wget_busybox_arm_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> wget_busybox_i686_Linux || x86_64 [32-bit] (GNU/Linux)
--> wget_busybox_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> wget_busybox_mips_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> wget_busybox_mips64_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> wget_busybox_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> wget_busybox_mipsel_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> wget_busybox_powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> wget_busybox_powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> wget_busybox_powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> wget_busybox_riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> wget_busybox_riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> wget_busybox_s390x_Linux || IBM S/390 [64-bit] (GNU/Linux) 
!# For Windows
--> wget_amd_x86_lite_Windows.exe || [32-bit] (PE32)
--> wget_amd_x86_WinTLS_lite_Windows.exe || [32-bit] (PE32)
--> wget_amd_x86_x64_lite_Windows.exe || [64-bit] (PE32+) 

!# Export
export WGET_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"
!# For Linux : append `musl` before `_Linux` if you want the musl compiled binaries
!# Example: wget_busybox_aarch_arm64_Linux --> wget_busybox_aarch_arm64_musl_Linux
!# export WGET_ARCH="wget_busybox_aarch_arm64_musl_Linux"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/$WGET_ARCH"

!# Or for .base64
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/$WGET_ARCH.base64"

```
---
- #### Install wget
```bash
!# Copy downloaded wget binary to /usr/bin || /usr/local/bin
!# For `.base64`
 base64 -d "$BIN.base64" > "$BIN"

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded wget binary to that DIR
 mv "$Path_To_wget_Binary" "/usr/bin/wget"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/wget"

```

