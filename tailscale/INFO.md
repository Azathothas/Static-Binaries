
---
- #### Download tailscale
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using dockercross (Dynamic Only)
> >      - Currently this fails with: loadinternal: cannot find runtime/cgo
> > --> Linux:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
> >      - Binaries for 'ppc64' | 'ppc64le' | 's390x' are compiled using dockercross
> > --> Windows:
> >      - This rquires a GUI, so better to just download from: https://pkgs.tailscale.com/stable/#windows
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
--> tailscalec_aarch64_arm64_musl_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> tailscalec_aarch64_arm64_musl_latest_Linux
--> tailscalec_aarch64_arm64_libressl_musl_Linux
--> tailscalec_aarch64_arm64_libressl_musl_latest_Linux
--> tailscalec_amd_x86_64_musl_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> tailscalec_amd_x86_64_musl_latest_Linux
--> tailscalec_amd_x86_64_libressl_musl_Linux
--> tailscalec_amd_x86_64_libressl_musl_latest_Linux
--> tailscalec_arm_abi_musl_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> tailscalec_arm_abi_musl_latest_Linux
--> tailscalec_arm_abi_libressl_musl_Linux
--> tailscalec_arm_abi_libressl_musl_latest_Linux
--> //_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> // || x86_64 [32-bit] (GNU/Linux)
--> //_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> tailscalec_mips_musl_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> tailscalec_mips_musl_latest_Linux
--> tailscalec_mips_libressl_musl_Linux
--> tailscalec_mips_libressl_musl_latest_Linux
--> tailscalec_mips64_musl_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> tailscalec_mips64_musl_latest_Linux
--> tailscalec_mips64_libressl_musl_Linux
--> tailscalec_mips64_libressl_musl_latest_Linux
--> //_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> tailscalec_mipsel_musl_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> tailscalec_mipsel_musl_latest_Linux
--> tailscalec_mipsel_libressl_musl_Linux
--> tailscalec_mipsel_libressl_musl_latest_Linux
--> //powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> //riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> //riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> //s390x_Linux || IBM S/390 [64-bit] (GNU/Linux)


!# Export
export tailscale_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/$tailscale_ARCH"

```
---
- #### Install tailscale
```bash
!# Copy downloaded tailscale binaries to /usr/bin || /usr/local/bin

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded tailscale binaries to that DIR
 mv "$Path_To_tailscale_Binary" "/usr/bin/tailscale"
 mv "$Path_To_tailscaled_Binary" "/usr/bin/tailscaled"

!# Give Writeable Perms
 chmod +xwr /usr/bin/tailscale*
```






h
