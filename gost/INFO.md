
---
- #### Download [gost](https://github.com/ginuerzh/gost)
> - **Sources**
> > ```bash
> > --> FreeBSD || Linux || macOS || Windows:
> >      - https://github.com/ginuerzh/gost/releases
> > ```
> >
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

!# FreeBSD
--> 386 || Amd x86|| x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_386_FreeBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_FreeBSD"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_Linux"
--> Amd x86 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_Linux"
--> ARMv5 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv5_Linux"
--> ARMv6 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv6_Linux"
--> ARMv7 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv7_Linux"
--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_i386_Linux"
--> MIPS (Hard Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips_hardfloat_Linux"
--> MIPS (Soft Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips_softfloat_Linux"
--> MIPSel (Hard Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mipsle_hardfloat_Linux"
--> MIPSel (Soft Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mipsle_softfloat_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips64_Linux"
--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips64le_Linux"
--> riscv64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_riscv64_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_s390x_Linux"

!# macOS
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_x86_64_macOS"

#Windows
--> aarch64 || arm64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_Windows.exe"
--> Amd_x86 || x86 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_Windows.exe"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_Windows.exe"

```
---
- #### Install gost
```bash
!# Recommended way to install gost is:
!# Install Go
 bash <(curl -qfsSL "https://git.io/go-installer") ; export PATH="$HOME/.go/bin:$HOME/go/bin:$PATH"
!# With ROOT
 cd $(mktemp -d) && git clone https://github.com/ginuerzh/gost.git && cd ./gost/cmd/gost && "$HOME/.go/bin/go" build ; sudo mv "./gost" "/usr/local/bin/gost"
!# Or with no root
 cd $(mktemp -d) && git clone https://github.com/ginuerzh/gost.git && cd ./gost/cmd/gost && "$HOME/.go/bin/go" build -v ; mkdir -p "$HOME/go/bin" ;mv ./gost "$HOME/go/bin/"

!# Copy downloaded gost binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded gost binaries to that DIR
 mv "$Path_To_gost_Binary" "/usr/bin/gost"

!# Give Writeable Perms
 chmod +xwr /usr/bin/gost*
```
