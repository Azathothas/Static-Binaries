
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


---
```console
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_musl_Linux ./wget/wget_busybox_aarch_arm64_musl_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_musl_Linux ./wget/wget_busybox_amd_x86_64_musl_Linux.base64 ./wget/wget_busybox_arm_armv6_musl_Linux ./wget/wget_busybox_arm_armv6_musl_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_i686_musl_Linux ./wget/wget_busybox_i686_musl_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_musl_Linux ./wget/wget_busybox_mips_musl_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_musl_Linux ./wget/wget_busybox_mipsel_musl_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_musl_Linux ./wget/wget_busybox_powerpc64le_musl_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_musl_Linux ./wget/wget_busybox_riscv32_musl_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_musl_Linux ./wget/wget_busybox_riscv64_musl_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_musl_Linux ./wget/wget_busybox_s390x_musl_Linux.base64
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:                PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe:                       PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe:                   PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux:                      ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=f7b70ca055505ff775dc425afc5221b30d759189, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_musl_Linux:                 ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_aarch_arm64_musl_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:                       ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a4d5e7d4903fa9ccd8d0db8eb27125d1206e3c20, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_musl_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_musl_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_armv6_musl_Linux:                   ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=a0939ab8760a326e2a6502adae98374657a45fe2, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_arm_armv6_musl_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=3d9680d6728a9f1f1f130e42e41528f4521da869, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=afface6656d3b94f08999586717dec40139afc51, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux:        ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                             ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=b87f9c95658150f471a55ade5542d6fb6a92a6e1, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                        ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_musl_Linux:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, for GNU/Linux 4.4.255, stripped
./wget/wget_busybox_i686_musl_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                             ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=a0c4f988ca84c8a5bdb48dcd3a71d9b0193e9a2f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                           ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=f8e40629cf4541c46afab9fc376a6749087b5c48, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                         ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=14ccc3e73173b1b5d040d5724732cf34931bb8d2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                             ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e3d64259eb5570c0ca8998c5f5d420a2d4edd18a, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_musl_Linux:                        ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, BuildID[sha1]=4a70da615e8e42d97cc47a81fb717c397613575a, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_mips_musl_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                           ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=c41c27d1c4d061d52078a486f67e1a83d4764ab6, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_musl_Linux:                      ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_musl_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=64e96ebedfdb6e04f231deed3de32a0d7b02dcb6, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:                      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=97a1b077a82d1ffd034675d8e810c3a93b918672, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_musl_Linux:                 ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=cfaf87f13518426eb6395536032ca778605677df, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_powerpc64le_musl_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=8ee23aba779bacfc6865683430df5fe8927b7552, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                          ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_musl_Linux:                     ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=291d59f87f80f7f8f7b000e95d262cde19afe916, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                          ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=97b8d2fd34b00f04462d4c1bc2cd636d6864b22a, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_musl_Linux:                     ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=f385a71ac9f643b2436461bf96d0def777f85901, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv64_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                            ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a6d08f95224e13b1e5a6e8bbfbd01273d0eae47e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_musl_Linux:                       ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=fc5afb30bfed1bfec47611711151baf816768590, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_s390x_musl_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_musl_Linux ./wget/wget_busybox_aarch_arm64_musl_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_musl_Linux ./wget/wget_busybox_amd_x86_64_musl_Linux.base64 ./wget/wget_busybox_arm_armv6_musl_Linux ./wget/wget_busybox_arm_armv6_musl_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_i686_musl_Linux ./wget/wget_busybox_i686_musl_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_musl_Linux ./wget/wget_busybox_mips_musl_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_musl_Linux ./wget/wget_busybox_mipsel_musl_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_musl_Linux ./wget/wget_busybox_powerpc64le_musl_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_musl_Linux ./wget/wget_busybox_riscv32_musl_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_musl_Linux ./wget/wget_busybox_riscv64_musl_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_musl_Linux ./wget/wget_busybox_s390x_musl_Linux.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
af5c6d5340f3790b7bae847d0c0c393d104ea7eb0a241b1dbfa6940dd3fcaa1a  ./wget/wget_busybox_aarch_arm64_Linux
83273e34d54bee8eea3af3d8b3e0e2ac31e04d884b76f480abba32213659283f  ./wget/wget_busybox_aarch_arm64_Linux.base64
fd049465c8d498d6b922e7c64f6851646b7310726271f11a1fd596b652d31241  ./wget/wget_busybox_aarch_arm64_musl_Linux
f71cb93de6fd48e07c5d7a502b9abb59d3f6b549401eb8823738c4085716aa6f  ./wget/wget_busybox_aarch_arm64_musl_Linux.base64
e7c5a55a654283612c5fe4e82d411362187fcdab119c2e168b581dac9a85de05  ./wget/wget_busybox_amd_x86_64_Linux
7f4f9bde5baf00fffa988e18057052243221adf6fa4e94450d8c404344617de0  ./wget/wget_busybox_amd_x86_64_Linux.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
32c6fc4ec58bb605b31c17e772180f58efa27755fc825e19c4a673203e2bb35e  ./wget/wget_busybox_amd_x86_64_musl_Linux
e340081292270b1a69d665ac59611da747e24d4331b5f9f98bbfae6e6a45c4b7  ./wget/wget_busybox_amd_x86_64_musl_Linux.base64
eeb3791681bc16eaa79597982e8bd673eea27975f4fef1e97e0757a9ad99eb83  ./wget/wget_busybox_arm_armv6_musl_Linux
32b8b40d09321f204b2da9b62c3571efdad7c4a7554bef183c9315ace6390ee2  ./wget/wget_busybox_arm_armv6_musl_Linux.base64
9c1cd77184259e90293461600484e960ece1563b6105e3668fb6947ef97613a3  ./wget/wget_busybox_arm_gnueabi_Linux
c2d52127ebffab4884b9bdee57d2d2851a48cee802a4052107c733c8f703c15f  ./wget/wget_busybox_arm_gnueabi_Linux.base64
3640548428e46dc8b0b89563e59cc78bcb9fc5ebbc148e32f1cf2f61888dee5a  ./wget/wget_busybox_arm_gnueabihf_Linux
da28b4a4cec3c626d88bbd483d1d55873625c33d386c55fedb28c710710530d3  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
6c2275f0b91350c3906c4e2104c644a33a78a38fc64130cb454a7facbe04de66  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux
ee01ddafe8bcf04f4d70d4f149250a5c160a65864e954fe4fa02b299fbfb7a40  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64
8964d4bbed4f645541c1440365fdf89c45be441c70c9ec1351f1073740c8f286  ./wget/wget_busybox_i686_Linux
4d7fb9647c53ecc58501319edb02d62581462a18300fc43e60007a43db2214cd  ./wget/wget_busybox_i686_Linux.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
3e7551e67e7ed2e6796b1df63d3b107a21872a516fdd38a755f3b033c7c56dce  ./wget/wget_busybox_i686_musl_Linux
72856e3e56e624899d2a931ea6a6cd821712195820f2361c4d813e863ca0436b  ./wget/wget_busybox_i686_musl_Linux.base64
34b3e3dc1b4f112d928c172f4c56aea9a068d80581c53f0dc7d6825f511292b8  ./wget/wget_busybox_m68k_Linux
5b96bfa770ac47f6548c355e9d9192100283cb47f67eee73e53db6d0d5620503  ./wget/wget_busybox_m68k_Linux.base64
ac6301c486124f5ead806381dcbf7450624f6bd364f681392b5d444bf5239794  ./wget/wget_busybox_mips64_Linux
3efbd90514152a7bbeffc4b7f029c802effe7840c0aba631531250b7de29792c  ./wget/wget_busybox_mips64_Linux.base64
26607fbea36fe219206b212797b35fbd998a3b1c51a350f90996d0badd660d68  ./wget/wget_busybox_mips64el_Linux
7ebc58abbfeb5b167f84ee66bd5d44eec95df07b8e10e828ee866f74b2f82d00  ./wget/wget_busybox_mips64el_Linux.base64
50e96ee937a0865c40c822c7151c8d5e9281adc2719439d4a43fd9cd771b8493  ./wget/wget_busybox_mips_Linux
777719207a9f65fee87bf02be1d2e53d411383b4986c54b01a3ae5aba1710fe7  ./wget/wget_busybox_mips_Linux.base64
e6f60abf76af7bf1d0203aa69074c246829fda20e2fa545b9aea5b711fce9bb1  ./wget/wget_busybox_mips_musl_Linux
ae7f12b1297f7ae28dab7bd05195152a05be615a31760ac27a1d9583f1f4aa09  ./wget/wget_busybox_mips_musl_Linux.base64
167d3968a296f0641cb3c4235ef2bda5b0b17f34d25c36665f7f2fcf9d076a5a  ./wget/wget_busybox_mipsel_Linux
d7ff032fada1d022a24058e8d58f3d9e527d2d9e45f3075bc076a2c3a06be6a2  ./wget/wget_busybox_mipsel_Linux.base64
2bd03e4b74af6b2536de3c9f0818b2972839b4c5ea2e969f94f9a787677d6804  ./wget/wget_busybox_mipsel_musl_Linux
2aeccfbe0492d382596149103cabc612d32661e913cbcbceb39755c0a758ef74  ./wget/wget_busybox_mipsel_musl_Linux.base64
30e91f3ada54b5ee0b94158080e19975b48469ee125fcc5cb1a5d8e867adfae0  ./wget/wget_busybox_powerpc64_Linux
12158ca9a2763adc56fc4cdc77bf596d64ecfb83c2999a35ccf07dfe64a2fdf1  ./wget/wget_busybox_powerpc64_Linux.base64
270909f3f7ae5a4bb41f4a2b719c802d690567246eb6dbac6e4e83b081c1a606  ./wget/wget_busybox_powerpc64le_Linux
8df4979f5029bd4b09e9e3ee1a713e1ad35e498133c745a6587b2263e2fa4d06  ./wget/wget_busybox_powerpc64le_Linux.base64
e2fa780262eec2c193b50d44c57b4d434ae7006b62b5114beec9eb5a4b5dce81  ./wget/wget_busybox_powerpc64le_musl_Linux
4a8dd0b486b7edda3fe3a3551a132c7cb0993893d2838214282c30303d130c3d  ./wget/wget_busybox_powerpc64le_musl_Linux.base64
bd84358f5961bd5842bba66f041bd873daf15f8ee552388f147042ecfa6e69f5  ./wget/wget_busybox_powerpc_Linux
74987a10c3b18c617d4884c40a63749dd1a11784c1f0de03b92e17347c2524c6  ./wget/wget_busybox_powerpc_Linux.base64
edf8f2d0a24d14acefa756ed7bd86a871da1f46e9ceeca6929f7b430d11f2373  ./wget/wget_busybox_riscv32_Linux
5df2757ef25547b48dafa83306ff23a6fb2592f5631ed8c7c48f65f1faf2febc  ./wget/wget_busybox_riscv32_Linux.base64
142fb9529fb0db3387c4311ce34e915084c3db12c670657ef3a05ef292040da9  ./wget/wget_busybox_riscv32_musl_Linux
730d97a4dbc7edda61bb806eba1042cd0eb040f3e2d1a76f91720f3b60184a63  ./wget/wget_busybox_riscv32_musl_Linux.base64
de3aa73440b7c934d0aeacd6c9a48a2bbc2d632f4b712b5cdc744fee880e5b42  ./wget/wget_busybox_riscv64_Linux
df6dd71516dc986e4cfeca1c7b6fe1657a8865f84bbbd883702f123348f324c4  ./wget/wget_busybox_riscv64_Linux.base64
3b567c86d3b530554300695d4ab7e10d06e965ddbd75cc220a14844e90c325bf  ./wget/wget_busybox_riscv64_musl_Linux
ee7f1f838644c4045cc8a2b87631eac264b170996fa6b3a6ebf5c748b24c2c85  ./wget/wget_busybox_riscv64_musl_Linux.base64
633cc5761479812f1e47f73df50b82c14cc0b044c273d4da55d433bbc64664fd  ./wget/wget_busybox_s390x_Linux
7151ec023d97323f49355d0e4258af6bc369a12f24eda6c34be7d478aa327a10  ./wget/wget_busybox_s390x_Linux.base64
1f3835df09a0005f281b9873d862f2e043d50af1c39aa1a6612424e3949c0a79  ./wget/wget_busybox_s390x_musl_Linux
a1d2eabf3a5cc9f337823f40cd1ed4b01ce50aabba54967c5436230c1b6540d5  ./wget/wget_busybox_s390x_musl_Linux.base64

--> Sizes
535K   ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
714K   ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
653K   ./wget/wget_amd_x86_lite_Windows.exe
871K   ./wget/wget_amd_x86_lite_Windows.exe.base64
612K   ./wget/wget_amd_x86_x64_lite_Windows.exe
816K   ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
875K   ./wget/wget_busybox_aarch_arm64_Linux
1.2M   ./wget/wget_busybox_aarch_arm64_Linux.base64
115K   ./wget/wget_busybox_aarch_arm64_musl_Linux
153K   ./wget/wget_busybox_aarch_arm64_musl_Linux.base64
1.3M   ./wget/wget_busybox_amd_x86_64_Linux
1.7M   ./wget/wget_busybox_amd_x86_64_Linux.base64
98K    ./wget/wget_busybox_amd_x86_64_Tiny_Linux
130K   ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
122K   ./wget/wget_busybox_amd_x86_64_musl_Linux
163K   ./wget/wget_busybox_amd_x86_64_musl_Linux.base64
722K   ./wget/wget_busybox_arm_armv6_musl_Linux
962K   ./wget/wget_busybox_arm_armv6_musl_Linux.base64
819K   ./wget/wget_busybox_arm_gnueabi_Linux
1.1M   ./wget/wget_busybox_arm_gnueabi_Linux.base64
591K   ./wget/wget_busybox_arm_gnueabihf_Linux
788K   ./wget/wget_busybox_arm_gnueabihf_Linux.base64
114K   ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux
152K   ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64
1.2M   ./wget/wget_busybox_i686_Linux
1.6M   ./wget/wget_busybox_i686_Linux.base64
97K    ./wget/wget_busybox_i686_Tiny_Linux
129K   ./wget/wget_busybox_i686_Tiny_Linux.base64
862K   ./wget/wget_busybox_i686_musl_Linux
1.2M   ./wget/wget_busybox_i686_musl_Linux.base64
757K   ./wget/wget_busybox_m68k_Linux
1009K  ./wget/wget_busybox_m68k_Linux.base64
1.1M   ./wget/wget_busybox_mips64_Linux
1.5M   ./wget/wget_busybox_mips64_Linux.base64
1.1M   ./wget/wget_busybox_mips64el_Linux
1.5M   ./wget/wget_busybox_mips64el_Linux.base64
1.1M   ./wget/wget_busybox_mips_Linux
1.4M   ./wget/wget_busybox_mips_Linux.base64
966K   ./wget/wget_busybox_mips_musl_Linux
1.3M   ./wget/wget_busybox_mips_musl_Linux.base64
1.1M   ./wget/wget_busybox_mipsel_Linux
1.4M   ./wget/wget_busybox_mipsel_Linux.base64
839K   ./wget/wget_busybox_mipsel_musl_Linux
1.1M   ./wget/wget_busybox_mipsel_musl_Linux.base64
1.4M   ./wget/wget_busybox_powerpc64_Linux
1.9M   ./wget/wget_busybox_powerpc64_Linux.base64
1.4M   ./wget/wget_busybox_powerpc64le_Linux
1.9M   ./wget/wget_busybox_powerpc64le_Linux.base64
1.3M   ./wget/wget_busybox_powerpc64le_musl_Linux
1.7M   ./wget/wget_busybox_powerpc64le_musl_Linux.base64
1.1M   ./wget/wget_busybox_powerpc_Linux
1.5M   ./wget/wget_busybox_powerpc_Linux.base64
663K   ./wget/wget_busybox_riscv32_Linux
884K   ./wget/wget_busybox_riscv32_Linux.base64
634K   ./wget/wget_busybox_riscv32_musl_Linux
845K   ./wget/wget_busybox_riscv32_musl_Linux.base64
668K   ./wget/wget_busybox_riscv64_Linux
890K   ./wget/wget_busybox_riscv64_Linux.base64
629K   ./wget/wget_busybox_riscv64_musl_Linux
839K   ./wget/wget_busybox_riscv64_musl_Linux.base64
983K   ./wget/wget_busybox_s390x_Linux
1.3M   ./wget/wget_busybox_s390x_Linux.base64
973K   ./wget/wget_busybox_s390x_musl_Linux
1.3M   ./wget/wget_busybox_s390x_musl_Linux.base64

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
