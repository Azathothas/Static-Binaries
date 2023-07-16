
---
- #### Download Toybox
> - This is just a mirror of : http://landley.net/toybox/bin/
> - Nothing is rebuilt/re-compiled

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
--> arm64_aarch64 || arm64 [64-bit] (SYSV)
--> armv4l || arm-linux-gnueabi [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv5l || arm-linux-gnueabi  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv7l || (Little-Endian)  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv7m || arm-linux-gnueabihf || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES} (SYSV)
--> i486 || [32-bit] (SYSV)
--> i686 || x86_64 [32-bit] (SYSV)
--> microblaze || [32-bit] (SYSV)
--> m68k || Motorola_NXP [32-bit] (SYSV)
--> mips || MIPS (Big-Endian) [32-bit] (SYSV)
--> mipsel || MIPSel (Little-Endian) [32-bit] (SYSV)
--> mips64 || MIPS (Big-Endian) [64-bit] (SYSV)
--> powerpc || cisco 4500 [32-bit] (SYSV)
--> powerpc64 || cisco 7500 || Power ELF V1 ABI [64-bit] (SYSV)
--> powerpc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
--> s390x || IBM S/390 [64-bit] (SYSV)
--> sh2eb || UCB RISC-V || RVC [32-bit] (SYSV)
--> sh4 || UCB RISC-V || RVC [64-bit] (SYSV)
--> x86_64 || [64-bit] (SYSV)

!# Export
export TOYBOX_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_$TOYBOX_ARCH"
 wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_$TOYBOX_ARCH" 
```
---
- #### Install Toybox
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move the Downloaded Toybox binary to that DIR
 mv "$Path_To_Toybox_Binary" "$HOME/bin/toybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/toybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything : https://github.com/landley/toybox/issues/155
cd "$HOME/bin" && for i in $($HOME/bin/toybox); do ln -s toybox $i; done; PATH=$PWD:$PATH

```
