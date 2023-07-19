
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
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_musl_Linux ./wget/wget_busybox_aarch_arm64_musl_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_musl_Linux ./wget/wget_busybox_amd_x86_64_musl_Linux.base64 ./wget/wget_busybox_arm_armv6_musl_Linux ./wget/wget_busybox_arm_armv6_musl_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_musl_Linux ./wget/wget_busybox_mips_musl_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_musl_Linux ./wget/wget_busybox_mipsel_musl_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_musl_Linux ./wget/wget_busybox_powerpc64le_musl_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_musl_Linux ./wget/wget_busybox_riscv32_musl_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_musl_Linux ./wget/wget_busybox_riscv64_musl_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_musl_Linux ./wget/wget_busybox_s390x_musl_Linux.base64
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
./wget/wget_busybox_amd_x86_64_Linux:                       ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a671823475d19cbab9b2deec3cd8bacdee22e49f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_musl_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_musl_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_armv6_musl_Linux:                   ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=12207e38ed83060d73c7f1efe8916ef2b5bfb83f, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_arm_armv6_musl_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=13772ac18d8901efd8198d756d0e0f9ec9ce41be, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=6dd8cc5a2cd631f800fcde836ab681ebbba94d0f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux:        ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                             ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=0ea298656d62305efd004438dbd3756442a8b9cd, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                        ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                             ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=f3d6dc087c5843689245a3ba5b66938fb22dcf11, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                           ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=9a95f68157add4114daf1c2fe560dd3276059c10, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                         ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=0dfabe55982f0e021848f57cb7226c4b9db8c536, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                             ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e3d64259eb5570c0ca8998c5f5d420a2d4edd18a, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_musl_Linux:                        ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, BuildID[sha1]=d02a4fe26ef968433b387fd9e389841bec5c8172, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_mips_musl_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                           ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=4fa879c179b3aeb3c9493ea9576eef3cd13b6d34, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_musl_Linux:                      ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_musl_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=6d6003efc8b3377bab10972eaf0ccc7f671accb0, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:                      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1bc2ea04f3fdceffd91672fc74e15a2d48d208dd, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_musl_Linux:                 ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=3885870e362573e8260d8f00c403b7d5bbe0977c, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_powerpc64le_musl_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=08b0bf9e2578854dcca3c64f03ce2d81d89ae85f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                          ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_musl_Linux:                     ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=ca71386cf510cdc22ad65e5b05b06c1767230615, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                          ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=bd06df1dbd3abb8dedf874ffa42c0acfc9a47bd1, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_musl_Linux:                     ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=6fd0a117c2187a520ad87ea7e4953b0d0e607d8b, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv64_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                            ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=3d3f91d3ab056c854a808ebff0a02adc35c11ae7, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_musl_Linux:                       ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=db18a9bdc28cdd2ff0c326b5c23e0cf358b94a32, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_s390x_musl_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_aarch_arm64_musl_Linux ./wget/wget_busybox_aarch_arm64_musl_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_amd_x86_64_musl_Linux ./wget/wget_busybox_amd_x86_64_musl_Linux.base64 ./wget/wget_busybox_arm_armv6_musl_Linux ./wget/wget_busybox_arm_armv6_musl_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mips_musl_Linux ./wget/wget_busybox_mips_musl_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_mipsel_musl_Linux ./wget/wget_busybox_mipsel_musl_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc64le_musl_Linux ./wget/wget_busybox_powerpc64le_musl_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv32_musl_Linux ./wget/wget_busybox_riscv32_musl_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_riscv64_musl_Linux ./wget/wget_busybox_riscv64_musl_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64 ./wget/wget_busybox_s390x_musl_Linux ./wget/wget_busybox_s390x_musl_Linux.base64
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
326d04d26674c9f8d2bd6298fd98f6df6fe466fde413b9baaaeff8d8c0f61d45  ./wget/wget_busybox_amd_x86_64_Linux
0efa4841330eb6bd881faff82cf476a769d5659b0f4ec409a1606431b320aa43  ./wget/wget_busybox_amd_x86_64_Linux.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
32c6fc4ec58bb605b31c17e772180f58efa27755fc825e19c4a673203e2bb35e  ./wget/wget_busybox_amd_x86_64_musl_Linux
e340081292270b1a69d665ac59611da747e24d4331b5f9f98bbfae6e6a45c4b7  ./wget/wget_busybox_amd_x86_64_musl_Linux.base64
6243b50dc96c49cb3c487f67336a29a6ec63dfa64d638dc29702c2afae71e1b8  ./wget/wget_busybox_arm_armv6_musl_Linux
32d8a23220c4301caab896a899157c5acd7979c625d38bc3a6852c38091e7e40  ./wget/wget_busybox_arm_armv6_musl_Linux.base64
ef5f3841d57140c039169f5fd3023d1b5b93c36114121de094842938d8b6bef9  ./wget/wget_busybox_arm_gnueabi_Linux
7265d2a7797e5e535a33ad3a9c146430cd1a79c70825b433a25529a69d9fa598  ./wget/wget_busybox_arm_gnueabi_Linux.base64
884eef7294295f4820b96b3a620c5f71a82254ac0f1f82ad4509f0e3c00925dc  ./wget/wget_busybox_arm_gnueabihf_Linux
13dec361a9e15975521f1703f2ef032b791a33c0c2291b9fdf8dc3897cb97469  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
6c2275f0b91350c3906c4e2104c644a33a78a38fc64130cb454a7facbe04de66  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux
ee01ddafe8bcf04f4d70d4f149250a5c160a65864e954fe4fa02b299fbfb7a40  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64
2815b786311a385025179c8f740f7d6f40d0ba738e4227098a27fe75150d6586  ./wget/wget_busybox_i686_Linux
a423e8ea9f8e45e3d86b7095875336fdf57ce990c1b2ef233c36b5d973274e5f  ./wget/wget_busybox_i686_Linux.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
fd37269c6cdb5943908cdf3daa222aa7ee720261ebd77146e8c00c407ecc5ab1  ./wget/wget_busybox_m68k_Linux
3bc9cfd2d367e4604435ee72bbc84b7c98ab0478e71ed8829352a29498df48bd  ./wget/wget_busybox_m68k_Linux.base64
8b1e252fe0f21a88c5092d459991ef81660f86047c27a27ca96684e8291ae431  ./wget/wget_busybox_mips64_Linux
14c295d2e9e9544f462ade4cd4fa6d54c57374ceb82299ad5585ee04eb74b6f8  ./wget/wget_busybox_mips64_Linux.base64
693c1608876615ca2653c8c4bdeeb02538aeb486be9cef40e4d70acf89ddb2aa  ./wget/wget_busybox_mips64el_Linux
9df84f8023ad1b22647e61126b2892c6fb1990bf6596200293d06d4e3c6166df  ./wget/wget_busybox_mips64el_Linux.base64
50e96ee937a0865c40c822c7151c8d5e9281adc2719439d4a43fd9cd771b8493  ./wget/wget_busybox_mips_Linux
777719207a9f65fee87bf02be1d2e53d411383b4986c54b01a3ae5aba1710fe7  ./wget/wget_busybox_mips_Linux.base64
5d9806af491ec6df08f386148fad3785375e6c6556731f082340d76c4b7c82e0  ./wget/wget_busybox_mips_musl_Linux
b1f68460670bf5a4b7d245a0a082b31dbb077afb0c93732ece4c91efbc86670e  ./wget/wget_busybox_mips_musl_Linux.base64
2654f805076d54f49f1ad7b857bb4130d537ca4029c412fca3c0656d634e39e2  ./wget/wget_busybox_mipsel_Linux
0db40720dde6973dbb71aab227fcd5325f822e709c1f3435761277def2b9cd9f  ./wget/wget_busybox_mipsel_Linux.base64
d169d54ea696a7121f882b4f4bd705dc205ee97148f85a333d042ae7ed671e5a  ./wget/wget_busybox_mipsel_musl_Linux
8576591aaf6a5b3d0e0f46d2154d7d9d0bad2e5b35541beb1cd3416ab229cfae  ./wget/wget_busybox_mipsel_musl_Linux.base64
3322fda84f69c07e7cd0d1106329bc179a92f282ae4892cd4b0111de9bb1e7bc  ./wget/wget_busybox_powerpc64_Linux
aa917e0bd97a6ca19cfe050930047584374cc0eec1b25a7017fdefbb7f24fe52  ./wget/wget_busybox_powerpc64_Linux.base64
3baea747580f295432f3f3fe9a675c6155afad6cedaf353d1c813804ea2de108  ./wget/wget_busybox_powerpc64le_Linux
105055a41aab9d7777dee948b9f01080814402e6c65ee34c3dde04b74870478e  ./wget/wget_busybox_powerpc64le_Linux.base64
ec5e5c3f661747ee51d643250c2a48a8e0e9dd8fdb4759442ed8a9712a9f4a7f  ./wget/wget_busybox_powerpc64le_musl_Linux
c9aaccc27da01894cc0b109fab1f985b44d3ed64f3ee4f492546d96502e80cfd  ./wget/wget_busybox_powerpc64le_musl_Linux.base64
7b3017fd6b10e44bba9775afee734a8c7a9ea69eae1bab26dbf95ffa5eb77344  ./wget/wget_busybox_powerpc_Linux
89dee424615323b55014c2b9d756bed3e9ad2b5f2b1f01ebaaaf79360ed70d8c  ./wget/wget_busybox_powerpc_Linux.base64
e5d947703ea1ee6792f538f116b6c2830745692e0241286eb47279273f1b68a9  ./wget/wget_busybox_riscv32_Linux
0467a751d22dd424f60d51596dc231500eb448cc2249fd009ec86b2392498d9d  ./wget/wget_busybox_riscv32_Linux.base64
2fcf8c8222b8d516f34f1522c2ddab5159931dc665c74fd9d7a225cefd26cca0  ./wget/wget_busybox_riscv32_musl_Linux
21589f09b6698db65abcdcb3101bc4d8635668f46f6b33127047ba6bc898c6cd  ./wget/wget_busybox_riscv32_musl_Linux.base64
70e0912a2ee3640c4cdea838d3883646178d2cd4a52540f6187bb56b3d2cf724  ./wget/wget_busybox_riscv64_Linux
194810cfccc0af930d6f8afd6b08271786184f87b36c6666ed893128b150d8f4  ./wget/wget_busybox_riscv64_Linux.base64
713536694ec8af0dea8f5877ed045bbe15b8d85f07cc540f05b284b3a8cd5da8  ./wget/wget_busybox_riscv64_musl_Linux
5ec8ada756ab3dd1f74053b0f1e1930214fc47f71c6e65974d532f8cd568c6da  ./wget/wget_busybox_riscv64_musl_Linux.base64
d903945ea8e487a0c96cd82da2ce5c075eb5633996be40759efa84966487e54f  ./wget/wget_busybox_s390x_Linux
07f79c480c9a989605af6fec03c5f23b5cb7897611caf315d2ba0d6cd0b9bf94  ./wget/wget_busybox_s390x_Linux.base64
3fe244c9b1ea4f70bb6f10fac48db893c21db9cd3cc1174af48dfbd25fadcec1  ./wget/wget_busybox_s390x_musl_Linux
a474318202de799a296c96bfaba3e3f3e12f0c0b262a8ccc4c8ee611a0b8b0b7  ./wget/wget_busybox_s390x_musl_Linux.base64

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
