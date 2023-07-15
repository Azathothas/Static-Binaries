
---
- #### Download Toybox
> - This is just a mirror of : http://landley.net/toybox/bin/
> - Nothing is rebuild/re-compiled

```bash
!# Get CPU Arch:
 uname -m || dpkg --print-architecture

!# Index (ARCH || ALT_ARCH) 
--> aarch64 || arm64 [64-bit] (GNU/Linux)
--> arm-linux-gnueabi || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> arm-linux-gnueabihf || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES} (GNU/Linux)
--> i686-linux-gnu || x86_64 [32-bit] (GNU/Linux)
--> m68k-linux-gnu || Motorola_NXP [32-bit] (SYSV)
--> mips-linux-gnu || MIPS (Big-Endian) [32-bit] (SYSV)
--> mipsel-linux-gnu || MIPSel (Little-Endian) [32-bit] (SYSV)
--> mips64-linux-gnuabi64 || MIPS (Big-Endian) [64-bit] (SYSV)
--> mips64el-linux-gnuabi64 || MIPSel (Little-Endian) [64-bit] (SYSV)
--> powerpc-linux-gnu || cisco 4500 [32-bit] (SYSV)
--> powerpc64-linux-gnu || cisco 7500 || Power ELF V1 ABI [64-bit] (GNU/Linux)
--> powerpc64le-linux-gnu || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> riscv32-linux-gnu || UCB RISC-V || RVC [32-bit] (SYSV)
--> riscv64-linux-gnu || UCB RISC-V || RVC [64-bit] (SYSV)
--> s390x-linux-gnu || IBM S/390 [64-bit] (GNU/Linux) 
--> x86_64-linux-gnu [64-bit] (GNU/Linux)

!# Export
export TOYBOX_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Busybox-Static-Binaries/main/busybox-$BUSYBOX_ARCH"
```
---
- #### Install Busybox
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded Busybox binary to that DIR
 mv "$Path_To_Busybox_Binary" "$HOME/bin/busybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/busybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything
 cd "$HOME/bin" && "$HOME/bin/busybox" --install -s .
```
