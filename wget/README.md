
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
./wget/wget_busybox_amd_x86_64_Linux:                       ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=336aeb7c5b6a1af5e19598c49802d54f337c9c37, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:                ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_musl_Linux:                  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_musl_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_armv6_musl_Linux:                   ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=ea33ecc6e1b0235db64caa306f194ec321645b2e, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_arm_armv6_musl_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=370fefa8c2ed5b9e3b4af3b0da7a2393cbf497b2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:                    ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=5f91da61638d61506eec6f29e89fd57dd87b6948, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux:        ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                             ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=0c4c22e75aefd515366afc54f96bb797a4ba9217, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                        ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_musl_Linux:                        ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, for GNU/Linux 4.4.255, stripped
./wget/wget_busybox_i686_musl_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                             ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=7c62a4f4a555abaa52e423624f25521c4aeb4f5e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                           ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=bddaabb18d892811852d562476e8db4f07eac710, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                         ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=d009a5db9c60646571dc9ca0c5ba7b10fea03f45, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:                  ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                             ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e3d64259eb5570c0ca8998c5f5d420a2d4edd18a, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:                      ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_musl_Linux:                        ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, BuildID[sha1]=b8aebb29c676e3a7603de7b39829a4ee5d0f3666, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_mips_musl_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                           ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=bccb28a3e4faab5ad95724c4b5fc8fabd72b06e2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:                    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_musl_Linux:                      ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_musl_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=2662c41a3d0f32aba797d5de3ea1fadbbf1308fd, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:                 ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:                      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=dd7338622aa3edafbf7d2f8a0d7771560efdb7d1, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:               ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_musl_Linux:                 ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=9d39f7c884ac32f819d23da62048bdeb37d7f645, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_powerpc64le_musl_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=9faa503fe02ba93e08da280d56ff054b4f358e39, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                          ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_musl_Linux:                     ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=68f6e1e50922215428e6925077466c8505519589, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                          ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=bb757b74d78242f05416267341d426cd787646cc, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:                   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_musl_Linux:                     ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=393244c68a5573373e5467a51880ee34c261ce60, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv64_musl_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                            ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=63793e1e7d8781b93e51469476b4c9221455e478, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:                     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_musl_Linux:                       ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=5fa2ec4ce963c949e4018ff4d96d72d510f17641, for GNU/Linux 5.4.0, stripped
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
ae4b250031054dd72ac20a841c408ee5aa95b418c9822ce06c28cfb452643f88  ./wget/wget_busybox_amd_x86_64_Linux
d1ae73525bd561449ff4841937d3188c2518c6b419b1907be0cda7bc73baf47d  ./wget/wget_busybox_amd_x86_64_Linux.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
32c6fc4ec58bb605b31c17e772180f58efa27755fc825e19c4a673203e2bb35e  ./wget/wget_busybox_amd_x86_64_musl_Linux
e340081292270b1a69d665ac59611da747e24d4331b5f9f98bbfae6e6a45c4b7  ./wget/wget_busybox_amd_x86_64_musl_Linux.base64
b24bd5f245004dea1c1568c08bc0206a147993de346ce795ca09a3ccf0100a10  ./wget/wget_busybox_arm_armv6_musl_Linux
37a27864c5e7bf2f000ff75c25cd7370bedc27807b52a8ee95269671795896fe  ./wget/wget_busybox_arm_armv6_musl_Linux.base64
10f204f132727b9d4625e9563ee8db0139df9619bb53d30c2fe4e77a0ea9a110  ./wget/wget_busybox_arm_gnueabi_Linux
3a32d8c110a91334573597878a1223aaf36ecbb90b33ea90a65d3e9f2e329921  ./wget/wget_busybox_arm_gnueabi_Linux.base64
fd67388e7b8d9aba22410b89ae8fab6caad9338311fb8893e2e3b815a5d064c9  ./wget/wget_busybox_arm_gnueabihf_Linux
a47137c23ab0a9110236c42ac299b9e90b4d81d71566d4232e00c88cbaa7aaab  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
6c2275f0b91350c3906c4e2104c644a33a78a38fc64130cb454a7facbe04de66  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux
ee01ddafe8bcf04f4d70d4f149250a5c160a65864e954fe4fa02b299fbfb7a40  ./wget/wget_busybox_arm_gnueabihf_armv7l_musl_Linux.base64
9bef9b9f2e98d24c723bb46efc010abc8397d91da30ba004af3eefc66ef7aef0  ./wget/wget_busybox_i686_Linux
2a5374c620b54b2e0bc16c07e905948db9081c48810794ed49c9f291bfec9e9c  ./wget/wget_busybox_i686_Linux.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
a7cba203d696bc25de5f45550cdd4e8456c463ff7efc6705805a8d6c5e6a73fb  ./wget/wget_busybox_i686_musl_Linux
d86ae0ea07226cb526ee1e399ff999932225fa53a744c292a28a6f087cda2dac  ./wget/wget_busybox_i686_musl_Linux.base64
099af2d095222d809c3c227d330c25f3e80c41d3d7aeb1c23edc89d0e6ff9e57  ./wget/wget_busybox_m68k_Linux
e0c597ce01baba4cbdb7b874963d8dba534d59ecd96e36077b01af95aedc0635  ./wget/wget_busybox_m68k_Linux.base64
e5d1e9a3b1e35321d854809cdbf8358de5985b752ca3d5e8f24e383cecb39be1  ./wget/wget_busybox_mips64_Linux
ba898698e6fb05977729f1f38cec246be949fbede91072995bc5e3ff7bc6db6d  ./wget/wget_busybox_mips64_Linux.base64
79a31d290c0832e407d9857ee8f3ac054dbb7c589e496d4a420eabf3bcdb791c  ./wget/wget_busybox_mips64el_Linux
4168155c9c4173000821174766a3816db836149eb3cf5496ffb8ff57a52a6f12  ./wget/wget_busybox_mips64el_Linux.base64
50e96ee937a0865c40c822c7151c8d5e9281adc2719439d4a43fd9cd771b8493  ./wget/wget_busybox_mips_Linux
777719207a9f65fee87bf02be1d2e53d411383b4986c54b01a3ae5aba1710fe7  ./wget/wget_busybox_mips_Linux.base64
3b7be4dbf99ed5f3d638dd980657e7c8fdd82d4bd3d5626e323ea1190ec7d00c  ./wget/wget_busybox_mips_musl_Linux
4e18a85fc19504e1c2e3952d95ed8000d32d0fdf904425d3d2a332bb2fa3c411  ./wget/wget_busybox_mips_musl_Linux.base64
94f16a0614793664bc8f94c85d6dd464d0bb613be977fa0f792aadc7e4bd398a  ./wget/wget_busybox_mipsel_Linux
812ff2fb6752bd031e9f65a219f04718db5c57834d65022a6439e8d1cce01a15  ./wget/wget_busybox_mipsel_Linux.base64
55364a841bf494b2d2dc5cdfed130bd912388822d52d4c67cc8e1e629ddec341  ./wget/wget_busybox_mipsel_musl_Linux
652f452ce1fcac48c213567abf0e02a3be68d412541d74ccccaab60737d66d6e  ./wget/wget_busybox_mipsel_musl_Linux.base64
c7d98247919840d775ecd5657b504eae276165f9d40af0fbf3d1162d0f3bb0b1  ./wget/wget_busybox_powerpc64_Linux
8cbba942d0fcad3aa20c302d862cf3a12430b77e41888f3c230c02aee69af829  ./wget/wget_busybox_powerpc64_Linux.base64
a26593e971e66d70f7117ddb210e1912f5ed2b1fb3985781dbed26b758ec2f7d  ./wget/wget_busybox_powerpc64le_Linux
d3240456f1a2d49404dbbd0bb356ae7b7931364d0b10966eddc26a723d066969  ./wget/wget_busybox_powerpc64le_Linux.base64
3f7b27854d073c2c60fb2597d20f9ae3a86875efafc93c56ba3a0cf480f421c2  ./wget/wget_busybox_powerpc64le_musl_Linux
cb016294f468bf52b84962f061a8a29c203667f4abad99dba72ddc9ef11368b8  ./wget/wget_busybox_powerpc64le_musl_Linux.base64
a35e577350e10f1917a2c28e3fade1ce7749297eb31bf79b0cada3e1d8bcc4b9  ./wget/wget_busybox_powerpc_Linux
920d306e90f299eb860a7523ace8a92b9f53d8a3c24303433c2f74be3c50d6ac  ./wget/wget_busybox_powerpc_Linux.base64
7821eb56b20bcc4e68094468336a2ec8f8b9193ffcdc40db1211079a7b69a6fb  ./wget/wget_busybox_riscv32_Linux
df356d9405813e0ad83d67c8dec3b1d5751a262b153e4367769ed71379a808cd  ./wget/wget_busybox_riscv32_Linux.base64
cbdd4e1c80f866e43483fbaf9dbea068a4d353a482383aab70a103c3e7179c0a  ./wget/wget_busybox_riscv32_musl_Linux
37d4dee812646cb18751c643eac22871f3e38a298ab4f3c727ca96921eac2dec  ./wget/wget_busybox_riscv32_musl_Linux.base64
530ccbb24c749edc1be769f6e79608de472c39617a52db8390a46dc6b3bdf419  ./wget/wget_busybox_riscv64_Linux
98e0a2b12776422bfcaf1d44848f5c5a1c292cde853c31302bc821b55a431171  ./wget/wget_busybox_riscv64_Linux.base64
1d8e72789b2d2772159b7dac031e81a3b798fd49719fd09af5fea135aaf82796  ./wget/wget_busybox_riscv64_musl_Linux
e9fe0095174c87d2e82b0a814f393abf49b26cfb59c108eff13dc9ab36b866b3  ./wget/wget_busybox_riscv64_musl_Linux.base64
d99808872ccdf2291bfe0aa2f2229c004afb68465c561338be954624f3846b31  ./wget/wget_busybox_s390x_Linux
d75973bbdfc469137a4415eef42d57e114e018779a2621264f1aca5de53bdbbe  ./wget/wget_busybox_s390x_Linux.base64
c942975f88659d7a0d57396688ebe52a4be59afab797318e6dbe954891eb7a1e  ./wget/wget_busybox_s390x_musl_Linux
53afe9314b8847338f5c71c3d856e98affd7faf051e8b35ada239cdcd63ee98b  ./wget/wget_busybox_s390x_musl_Linux.base64

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
