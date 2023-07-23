
---
- #### Download aria2
> - **Sources**
> > ```bash
> > --> Android:
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/aria2
> > --> Linux:
> >      - https://github.com/abcfy2/aria2-static-build [ Stable Releases + Latest Preleases ]
> >      - Binaries for s390x are compiled using dockercross
> > --> Windows:
> >      - https://github.com/abcfy2/aria2-static-build
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
--> aria2_busybox_aarch_arm64_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> aria2_busybox_amd_x86_64_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> aria2_busybox_arm_gnueabi_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> aria2_busybox_arm_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> aria2_busybox_i686_Linux || x86_64 [32-bit] (GNU/Linux)
--> aria2_busybox_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> aria2_busybox_mips_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> aria2_busybox_mips64_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> aria2_busybox_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> aria2_busybox_mipsel_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> aria2_busybox_powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> aria2_busybox_powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> aria2_busybox_powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> aria2_busybox_riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> aria2_busybox_riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> aria2_busybox_s390x_Linux || IBM S/390 [64-bit] (GNU/Linux) 
!# For Windows
--> aria2_amd_x86_lite_Windows.exe || [32-bit] (PE32)
--> aria2_amd_x86_WinTLS_lite_Windows.exe || [32-bit] (PE32)
--> aria2_amd_x86_x64_lite_Windows.exe || [64-bit] (PE32+) 

!# Export
export aria2_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"
!# For Linux : append `musl` before `_Linux` if you want the musl compiled binaries
!# Example: aria2_busybox_aarch_arm64_Linux --> aria2_busybox_aarch_arm64_musl_Linux
!# export aria2_ARCH="aria2_busybox_aarch_arm64_musl_Linux"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH"

!# Or for .base64
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH.base64"

```
---
- #### Install aria2
```bash
!# Copy downloaded aria2 binary to /usr/bin || /usr/local/bin
!# For `.base64`
 base64 -d "$BIN.base64" > "$BIN"

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded aria2 binary to that DIR
 mv "$Path_To_aria2_Binary" "/usr/bin/aria2"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/aria2"

```



