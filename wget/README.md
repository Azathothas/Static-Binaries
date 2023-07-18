
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
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Linux.base64.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_m68k_Linux.base64.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64_Linux.base64.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_Linux.base64.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_Linux.base64.base64
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:               PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe:                      PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe.base64.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe:                  PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64:    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux:                     ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=ab5b21d733b47404da72e32b9df1251f77427c9b, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=4355f51005f306e76611ec9ece55ba6be085506e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux.base64.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:                 ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=ab17afa089fb7f5b8f13c21731d822965d2a74be, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:                   ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=b773b3b1069149ff420d513c8f1208b6ab25d8e1, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64:     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=93ae9d93c8ddec43ba0b79e0757b725181c81b6f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                            ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=56c9ffb346ebbc52ff253255686e357948bb3a88, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=a83328a8412d216df7b43903ada722b33c91ddab, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux.base64.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=cf5ce17aee373fa087b76fd28bb341a43de4d334, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux.base64.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=3e949f26cb6b7aa6e71956a7e35ba13e534f7300, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux.base64.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=252c61fc98de33c97739e8a0817704cbb96ea674, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux.base64.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                       ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=92fdfedfd1b437dbf978b5a69ed69c1505b00689, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux.base64.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:                     ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=edcfa0a04399308ac8f64f998d9aee87f7e9a11c, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux.base64.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                         ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=9bf36fb0dfde3b288c568515e1529f8ebb0b4cfe, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                         ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=d042409111fe7ef0f2b89be9494c9ea14b05d629, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux.base64.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=d756d73d6e47297e3088ab7751a50aab552807fe, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux.base64.base64:             ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe.base64.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux.base64.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Linux.base64.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_m68k_Linux.base64.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64_Linux.base64.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips64el_Linux.base64.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_Linux.base64.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_Linux.base64.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64_Linux.base64.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux.base64.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_powerpc_Linux.base64.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_Linux.base64.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_Linux.base64.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_Linux.base64.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
10581dcecf0e22bebb6a1750dc54b94f3833e51fdee6cbba9ab1c76544343fd2  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
8dffd093b6a9ac353debadb13242b2078e7647767b755978e31d62a15b1ac804  ./wget/wget_amd_x86_lite_Windows.exe.base64.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
84327a2b7814a7e16db460f4db4b63504139148b3e1bffc9c7c76de388a016fa  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64.base64
e23e3963f2adce28aecfcadc6ee76869f7003be2a820149e65b12d1eebd8319b  ./wget/wget_busybox_aarch_arm64_Linux
7739f1ba22db19c9a0fc291e112fd8a29f427a9e8286d5d430c17ff4ea1f4123  ./wget/wget_busybox_aarch_arm64_Linux.base64
cde82982405fb86f3009c0cd4f8f27b667c2862ceed847998a31a23fa87fb5e4  ./wget/wget_busybox_aarch_arm64_Linux.base64.base64
7c6733bdd0109998134296c32f879c272510647884db13f8d0f78b29ac039c8d  ./wget/wget_busybox_amd_x86_64_Linux
d9c53a2c717cc1c0931827d46474ed5ecf19e8914f17f88bcf094839c3b9bfe7  ./wget/wget_busybox_amd_x86_64_Linux.base64
03aab221c63ab0578980aee01525cc3e7c990b42c9ff86497fc74b7896df2466  ./wget/wget_busybox_amd_x86_64_Linux.base64.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
3d8da9413fce9c94b93379df80c89357855b95bf1a9e1c616c7d5286767c037e  ./wget/wget_busybox_arm_gnueabi_Linux
981d3986c14ef4ba68ac0c564b85986d964a3eb1bbc9c2ab9be5b37380cebed6  ./wget/wget_busybox_arm_gnueabi_Linux.base64
415be86b8edf5e2e94a0e3f0eed91ad1f58eb8c863ce983c0e59ad80731c7e2a  ./wget/wget_busybox_arm_gnueabi_Linux.base64.base64
5f90fb47dc4949f9cfe55730f659c1c0a886aeb7a4cf2e53f04fbe5a6537226f  ./wget/wget_busybox_arm_gnueabihf_Linux
443a7f0c8fa6b2098bc603e46f14767e8c0d1c314a14e5d8ec7dbb0111e531f7  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
e4775d4792424d48436d75aaa5566ad58856253f36213102883fb542cb934fcc  ./wget/wget_busybox_arm_gnueabihf_Linux.base64.base64
45c064b16829a990a7aac44d7aa65cdef6317a08c892dce9059a5d96e95b41d8  ./wget/wget_busybox_i686_Linux
24e623242fa0acdc85b38789e8e0601f867dc52fe47f6366c848e9b82171762c  ./wget/wget_busybox_i686_Linux.base64
bb48acc142e5ead95f84036f9498cacc83c0247a8778206283e462ec1af4a4bc  ./wget/wget_busybox_i686_Linux.base64.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
e53874ece0cb0fed6db6c2cbf463eb75e60e9a7ffafa994ea00825b7e959879d  ./wget/wget_busybox_m68k_Linux
6deb1a8fb434459b78e7e35146c0969addf0595e928c6a6672fac34bbf47da83  ./wget/wget_busybox_m68k_Linux.base64
8d62e5c84fc05d742f7b977ba81eb9ea75f224fd3bb4035b13fb22d232d79020  ./wget/wget_busybox_m68k_Linux.base64.base64
b6da36ec591234fad84706b488de237d7692d7a67988301c857db169bcf206f6  ./wget/wget_busybox_mips64_Linux
b8d316319d9f82b711843d374c9d37e3aab74056d4f0019c7813b922e48f93cd  ./wget/wget_busybox_mips64_Linux.base64
a670b22ec2213ab927819b07cc1260bafa4c17785db44f8babc6dd4060757462  ./wget/wget_busybox_mips64_Linux.base64.base64
c32559726c51deae8dcf02bdb682aa28997e129c0bfcf0f2554726e789e25875  ./wget/wget_busybox_mips64el_Linux
d6976c359bd8f6a3827fc57a84d60fae0509c4bd0dd58815681acbd23deccf81  ./wget/wget_busybox_mips64el_Linux.base64
c050a8750dcef4496557f80a8ca7eed640e9032fe204e606142aad4879fbabf0  ./wget/wget_busybox_mips64el_Linux.base64.base64
2aecef46fe2c240fd2a20d82f791493d94df677a905412dbd9ce74287a9f9234  ./wget/wget_busybox_mips_Linux
fe6b0519fd72165eb835c886e4ce18a6aa8c0a7ad8679237559fe03662fff4f1  ./wget/wget_busybox_mips_Linux.base64
296068e3c5b2e1c92a36ce74d30512bde8c326a0460811da4ca2c83996ae8a47  ./wget/wget_busybox_mips_Linux.base64.base64
da44f2c79fb4ffb4d203038859f0f5fe4f5c039d1a51fe3e2db5a83a8da82de8  ./wget/wget_busybox_mipsel_Linux
04858b5f10ba7394a535eec55c2f642cf72afb2d7a31ec4769b473e456e60c50  ./wget/wget_busybox_mipsel_Linux.base64
623fc27eb7e506816db4e92a397501481b6003d498ca65f19526ba505a36d621  ./wget/wget_busybox_mipsel_Linux.base64.base64
d5432a81400047e218a0e3a7a6b8232b2e288c9736a1d9c8aeb10c33f33997b5  ./wget/wget_busybox_powerpc64_Linux
54844594c20025648527defe77bcc0ae8b1457910a2a69f7480df8d54b9186bf  ./wget/wget_busybox_powerpc64_Linux.base64
9ab0e1ecdfe8a7502189b1d8ff5ffffa60890a5caab54f9589a402a87febba25  ./wget/wget_busybox_powerpc64_Linux.base64.base64
cbf6f0a445de10be99e592131737bd26127adb801e26bfe7b67a0c1d2d0e176a  ./wget/wget_busybox_powerpc64le_Linux
688157c8620d88939dc84411acff7af89bdd15d7d67e0ffbdfee124d2cccc983  ./wget/wget_busybox_powerpc64le_Linux.base64
f51ed3a61597dd49797d8ff1d4c80e28bdac4961789ab1026c32fdfee09496bf  ./wget/wget_busybox_powerpc64le_Linux.base64.base64
b19e85b82050e0529bb89e7913f235d35799336d4133d68c5248bcdf98b6a006  ./wget/wget_busybox_powerpc_Linux
02de28065e18b5a57d46dced23b0585850dffaa1d8598ad64d1d2ba45fabcc6b  ./wget/wget_busybox_powerpc_Linux.base64
2c8cc7f0716514812b15cc3401a33c3bd8280121f3ee66c03f908a3cfbe26bda  ./wget/wget_busybox_powerpc_Linux.base64.base64
a5a58f580cdeb1306a393022c32d26ad2da3463c0174b1e48245f0dd3edde834  ./wget/wget_busybox_riscv32_Linux
fc7362d696055039dea91c56ebd24220806b21926622113482ba311e4a3a1f40  ./wget/wget_busybox_riscv32_Linux.base64
c5e90f8f3c590dd297b23c0cb346f4d50ac03ecd54cb991a882a1d7db096a4e8  ./wget/wget_busybox_riscv32_Linux.base64.base64
5d01236d9b535d564e9d4356317e09ebb8cb3c8b5cb8eae88f2cba65e4b914d1  ./wget/wget_busybox_riscv64_Linux
2fb3d37265cd1a3b81de8c5b7e06ac39226286629b7095e9dcb46f0270701571  ./wget/wget_busybox_riscv64_Linux.base64
2fa8c97167149ab2b435095a92c17f048764fe9be8586a596c09df3d128aa0ff  ./wget/wget_busybox_riscv64_Linux.base64.base64
78225126708124212c314afca5d93d9e4861b6039c551e8993d8960a6f42aea6  ./wget/wget_busybox_s390x_Linux
526e8dd4cddcdee3b1afb628cd017b0ae079cc438e11ec1363cea7e8c5673bf0  ./wget/wget_busybox_s390x_Linux.base64
fd2bd50a264b3d6fd54bc152ee22fd43d542afa5b35210686d166498d74b688b  ./wget/wget_busybox_s390x_Linux.base64.base64
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
