
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

!# Download
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


---
```console
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Linux.base64.base64 ./wget/wget_busybox_i686_Linux.base64.base64.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux.base64.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_m68k_Linux.base64.base64 ./wget/wget_busybox_m68k_Linux.base64.base64.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64_Linux.base64.base64 ./wget/wget_busybox_mips64_Linux.base64.base64.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_Linux.base64.base64 ./wget/wget_busybox_mips_Linux.base64.base64.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_Linux.base64.base64 ./wget/wget_busybox_s390x_Linux.base64.base64.base64
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:                      PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe:                             PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe.base64.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe.base64.base64.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe:                         PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64.base64:    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux:                            ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1d54a02d6b79b2b7471c4f3b0d630a33ddc79b2a, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux.base64.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:                             ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=787f5720cba02eb52a67a03b103c340e5cf8731f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux.base64.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux.base64.base64.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:                        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:                            ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=016b4824b9cf6ee98d5536f495e0b02f3a8cb86c, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux.base64.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:                          ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=1fdb6ed12164ed5c85b4350f5b5d14e28b1008f7, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64.base64:     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                                   ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=036a2050870a400f46eaf8a850fad59ff8f644fc, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:                            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux.base64.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux.base64.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                              ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:                       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux.base64.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                                   ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=53632a3fcfe864990cbb2d2aeb471bd2613a8af3, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:                            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux.base64.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux.base64.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                                 ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=46db95be20d8a0a96803989305973bad6ec3035b, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:                          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux.base64.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux.base64.base64.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                               ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=df59a214a2badf59fbe905efae815ae6dcad117d, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:                        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux.base64.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux.base64.base64.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                                   ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=14ec121b759de79c3748581619c2f8a849390d75, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:                            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux.base64.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux.base64.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                                 ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=909c85e2b4a507fab4dfbc32bd18d63902a70c00, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:                          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux.base64.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux.base64.base64.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                              ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=4e0d296a38843be22802b4beabef771db68639e0, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:                       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux.base64.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux.base64.base64.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:                            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=c1a189cf596bc0546820cc658007e133dcdb465b, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux.base64.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                                ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=e0906e747ad7468d77f937bc09d75e8e0f50979b, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:                         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux.base64.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux.base64.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                                ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:                         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux.base64.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux.base64.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                                ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=0f8eb3e11c90350e39f70ced421418cfb9679c15, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:                         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux.base64.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux.base64.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                                  ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=6ca7d4e6571e0c4c55b574688e9480b1169a0770, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:                           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux.base64.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux.base64.base64.base64:             ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Linux.base64.base64 ./wget/wget_busybox_i686_Linux.base64.base64.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux.base64.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_m68k_Linux.base64.base64 ./wget/wget_busybox_m68k_Linux.base64.base64.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64_Linux.base64.base64 ./wget/wget_busybox_mips64_Linux.base64.base64.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_Linux.base64.base64 ./wget/wget_busybox_mips_Linux.base64.base64.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_Linux.base64.base64 ./wget/wget_busybox_s390x_Linux.base64.base64.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
10581dcecf0e22bebb6a1750dc54b94f3833e51fdee6cbba9ab1c76544343fd2  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64
1636354d3ecd9a0e1d2665893ebda2af7dbf6e0c8d9c5e92f3a886744cc86d5d  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
8dffd093b6a9ac353debadb13242b2078e7647767b755978e31d62a15b1ac804  ./wget/wget_amd_x86_lite_Windows.exe.base64.base64
044a09f18c85512746385b4df0145cbf8af663219a142d140d70737e1097b660  ./wget/wget_amd_x86_lite_Windows.exe.base64.base64.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
84327a2b7814a7e16db460f4db4b63504139148b3e1bffc9c7c76de388a016fa  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64
b6c955abcd62ca17eb86033c0794c80ef46ed839d1a9ea101085b0b9d6c66303  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64.base64
e5cfbd3d68dc24f682435abbfddd77faec27ed23275dc39e63ffc84fecf71982  ./wget/wget_busybox_aarch_arm64_Linux
944a26ab5df482432e1c2e49a3503b5fe51a35ab49368920b75025dd63d6c30c  ./wget/wget_busybox_aarch_arm64_Linux.base64
47777e80dd0f71f50df08adf09e8acffc4b6516c2ee15467dd33de505da7046b  ./wget/wget_busybox_aarch_arm64_Linux.base64.base64
cf33519e66dd547cef010b16c005370a821bcc0dc2678913f4c1fe5ec956c083  ./wget/wget_busybox_aarch_arm64_Linux.base64.base64.base64
0e1520200dcfc0a37adfee0811f2da3ecbc4f3ed836a1d6306bc2fd21e7cc875  ./wget/wget_busybox_amd_x86_64_Linux
c59b9b488f2621b718f97175434c2921c3cfa2cae8a26592e979360a268fbb7d  ./wget/wget_busybox_amd_x86_64_Linux.base64
a11faed70875d77e81dfde79ebcf1190023720606b62752bf07ba8421276a6fd  ./wget/wget_busybox_amd_x86_64_Linux.base64.base64
f468010ca3e17183ecbeb834bb0def31a3c0f2b2b5e68b0b841b91820f8943ff  ./wget/wget_busybox_amd_x86_64_Linux.base64.base64.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
c82b169c4aac640b09d045804c48c769e187f2ae7b519c08e8fd79b45ad3239a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64.base64
7bbbc773d0e872f8d0581f4e33f7ea77d1ba616ea62da90b93c18f42120942f4  ./wget/wget_busybox_arm_gnueabi_Linux
9b45e7b49d6cc664f7255197e0883fd82134e183e5e1bb994c3cb2a323dd334a  ./wget/wget_busybox_arm_gnueabi_Linux.base64
fcd5e923bc81f67cbd21144c73eb78442c36344d55d710fc488b945d62d9fc0e  ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64
6b29a1c0f8213b19757021fe02423a323acf09e786cb559bbb33b43755649796  ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64.base64
c4baf16dbb68e1140c86eb6e29c59a7fc265246aa0484f6f10b71c2ddbf52d12  ./wget/wget_busybox_arm_gnueabihf_Linux
67c646597fbf61537912702ec5980f7349a51c85f43a9d04ec23c13f5bda9746  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
da018da34fd2d35e0c3a9158785cab7533321c1f611056274ffd6e5d64e72195  ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64
8d3c6376109749ffa3c876b954d1401fceceaa00edc4e09f09f4ef9acc56452a  ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64.base64
4827ae61a143806febb50b43214ae3ab1272f1c860c45a21e494f1a5c35d044b  ./wget/wget_busybox_i686_Linux
a708162b58c52b050d3bee9ebb901afeedc621ee1c55126ee637cd3b23aec52a  ./wget/wget_busybox_i686_Linux.base64
1cfc22a95a616b222d4b9543f880649aa6efe8b16c59c0a79573728b6245cb3e  ./wget/wget_busybox_i686_Linux.base64.base64
ecae3cb1d08e45e6d5a5428c0e03c833f941ce4fd6ac55c8160d56364cc698cf  ./wget/wget_busybox_i686_Linux.base64.base64.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
f0334708adf12f115f75bfaf8113e51fa94e6626601f5c6afcf6352747f32447  ./wget/wget_busybox_i686_Tiny_Linux.base64.base64
3c0ee0cbf3d41a5c7c571ae55b7ea6488783dc522c90121528b9d13ada2efcba  ./wget/wget_busybox_m68k_Linux
c7b30219f64be77248c6f0cecbdc2676ac835b370751c3e9066a85291ece93e5  ./wget/wget_busybox_m68k_Linux.base64
61bbfd096bcfdc0effefa7c503c8ae25d3fedab3cee57484a29fd8ce3fbb4c60  ./wget/wget_busybox_m68k_Linux.base64.base64
1fef85c8e6f4385c69808752ee5dc47be085b18ce3d7060cf92afe3c9138cb6d  ./wget/wget_busybox_m68k_Linux.base64.base64.base64
cc9780f9b75585a31e9b37ea7dbffb7499946d13b42389edd8637ba2b37bacc1  ./wget/wget_busybox_mips64_Linux
0e535b5e074b368bac27cce1bbd08f66e4953b869323627e9e53105042851ff2  ./wget/wget_busybox_mips64_Linux.base64
9acb46ec4f0baacbd0e892e3c2d132a60535d65e6a0c30f7f1e92e4bff3d3ace  ./wget/wget_busybox_mips64_Linux.base64.base64
b7d8fddbe2a45156fd228e14e6beac138f9fdf14e20af9e06cb6b7e42901ddcb  ./wget/wget_busybox_mips64_Linux.base64.base64.base64
1bc0261fd9b32c9d745893860dab4ecdade2f6abb396ae5bf020dba092a8ddf1  ./wget/wget_busybox_mips64el_Linux
1a82b1cb2aedf7dfb08ff631ebf36d565ba03e32376495c6b3819dc4e87a2b6a  ./wget/wget_busybox_mips64el_Linux.base64
c2ea2bed1a6ed33f2326c65c874b2b10c2d0e88793b4deec8cecdd7782c499d4  ./wget/wget_busybox_mips64el_Linux.base64.base64
b858446e0c0bca504e92e898127903e58ffedef4ea799c7c4234fc4c3d03b3d2  ./wget/wget_busybox_mips64el_Linux.base64.base64.base64
e8ad290a5f03bcd77303c17e5e9c067942bcaca3ce540fd337177b9a35615038  ./wget/wget_busybox_mips_Linux
30d2b2ac403238c403241ee0ab56cf5316d8899c3e8d2a0104c6ca21f427bd0d  ./wget/wget_busybox_mips_Linux.base64
90f3c6b692317936cf16c4295a818805c3d70c6f14651775fddc324996e0f23a  ./wget/wget_busybox_mips_Linux.base64.base64
6d0e4715d38d143cad934ac17074654675b3a5892660b92f8e8eb3cdd2492d70  ./wget/wget_busybox_mips_Linux.base64.base64.base64
5f6ad7c488ab4a23cfee0c7508052805e3602534f140ed63e276f6a58e790ae0  ./wget/wget_busybox_mipsel_Linux
2e6c48d2d100a978125fb6938452e60d94183d486ea3fcc7fb7b4e6b85ff9835  ./wget/wget_busybox_mipsel_Linux.base64
75a93937990c0434b42137f9f81ebfcb62f4818fcbbdb7e371028ec16eddc523  ./wget/wget_busybox_mipsel_Linux.base64.base64
c90f6b796a24a75a27295aa53b019f95731d9deadb09f90ab3564e922a747008  ./wget/wget_busybox_mipsel_Linux.base64.base64.base64
20c7b5e51b331c4ef4ab4a5c8dab59505196ea03a7122684013a4cd4810e6d06  ./wget/wget_busybox_powerpc64_Linux
9a9f122ff8119ac2ccb5af71ac1950a2712debfca49a66f6a0af096824ad2b23  ./wget/wget_busybox_powerpc64_Linux.base64
b39a5169ef7eae29942fda4366dac38b3e53f92c87a27815a0d5cf585891c744  ./wget/wget_busybox_powerpc64_Linux.base64.base64
9897d2a00be9fcaabfee87b441d1478481107e290d5e1ba89fb67df4b28ef387  ./wget/wget_busybox_powerpc64_Linux.base64.base64.base64
020a63df97e1ceea674daef30bf8f036f87c1a09574972f73145096a4a6e0c63  ./wget/wget_busybox_powerpc64le_Linux
171e02d8791321b6c54f6aa552e1da41dffcf03225e9eefd92a3f0a2a27eda07  ./wget/wget_busybox_powerpc64le_Linux.base64
4455c3b0e145511d446b4cb2ead12db12ebf44bce27b0350efd895dbd9fa3262  ./wget/wget_busybox_powerpc64le_Linux.base64.base64
556188886414cfe8232b50194c5ac865a93037e0ae4bedca888919ae75329568  ./wget/wget_busybox_powerpc64le_Linux.base64.base64.base64
f2e97adb12736d253797e920876b0d80fd7d8f163ae7d711f48d2dcdfb3a7f37  ./wget/wget_busybox_powerpc_Linux
6b027fd461b88c241deee86ce38d28a40b5bed4062481b75accce7d54bf555f9  ./wget/wget_busybox_powerpc_Linux.base64
805fa191dceab4725b84c0a0a126f2de85bd4a4c8b5d885e860e86303a94f195  ./wget/wget_busybox_powerpc_Linux.base64.base64
977ac9e3a3c70bca5b394bd637ca0da71eb8376281bf65dd1503004f31020598  ./wget/wget_busybox_powerpc_Linux.base64.base64.base64
27faae245879105735d2f50757e65357f920e04d1b13fdd52456d9308331d9d9  ./wget/wget_busybox_riscv32_Linux
d75d5e78779d19e0831035fb1930eff77ba05e15a95aa00b9e6a2806e82691fa  ./wget/wget_busybox_riscv32_Linux.base64
9aa4abc9c02c26e429ae04a8ce8655e77972877bdd6070540654bc91fb477051  ./wget/wget_busybox_riscv32_Linux.base64.base64
74a010f8c6bea3403b4956c3cc6ffca318829c95f14dc78e8a1fcf059e05a3ce  ./wget/wget_busybox_riscv32_Linux.base64.base64.base64
9da89f101ae027af1316656795f5bd58f1dd998ad7737b5ef9f445bf0ab355d1  ./wget/wget_busybox_riscv64_Linux
3aa14336dd9aaaafa7f343ddec0585c4b8d0b9a303fe37ab76f7aa3ccfeee150  ./wget/wget_busybox_riscv64_Linux.base64
5f5d75ada04a49f9a77c2854af7779ae056489b1c32d9a2aa33f0bb0ae6b9c0e  ./wget/wget_busybox_riscv64_Linux.base64.base64
f50fb0873d8f23dbac9061c114c8635e0ae63dfe1ac0d5e1554cffe56587c229  ./wget/wget_busybox_riscv64_Linux.base64.base64.base64
b0bb758f4de0cf6b8f0a12b6ab1feb2d3ac8651ee0797edc7abe55c6514633bd  ./wget/wget_busybox_s390x_Linux
6ce85aaccc2cf37f2fa23170a2fff4590065fefb5a1928399f726e1b8d7b9712  ./wget/wget_busybox_s390x_Linux.base64
f83554641c3e45f7a61851fdb94ae5e37097151066004feedbbb3785a55e3994  ./wget/wget_busybox_s390x_Linux.base64.base64
4409884316c02d308d35fbb0078c613db8abd35f6086fd5d8ce104efd04f5831  ./wget/wget_busybox_s390x_Linux.base64.base64.base64
```


---
- #### Flags
```console
$ qemu-aarch64-static ./wget/wget_busybox_aarch_arm64_Linux
Usage: wget [-cqS] [--spider] [-O FILE] [-o LOGFILE] [--header STR]
	[--post-data STR | --post-file FILE] [-Y on/off]
	[--no-check-certificate] [-P DIR] [-U AGENT] [-T SEC] URL...

Retrieve files via HTTP or FTP

	--spider	Only check URL existence: $? is 0 if exists
	--header STR	Add STR (of form 'header: value') to headers
	--post-data STR	Send STR using POST method
	--post-file FILE	Send FILE using POST method
	--no-check-certificate	Don't validate the server's certificate
	-c		Continue retrieval of aborted transfer
	-q		Quiet
	-P DIR		Save to DIR (default .)
	-S    		Show server response
	-T SEC		Network read timeout is SEC seconds
	-O FILE		Save to FILE ('-' for stdout)
	-o LOGFILE	Log messages to FILE
	-U STR		Use STR for User-Agent header
	-Y on/off	Use proxy
