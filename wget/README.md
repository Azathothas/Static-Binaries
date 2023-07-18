
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
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:        PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe:               PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe:           PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe.base64:    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux:              ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=f7b70ca055505ff775dc425afc5221b30d759189, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=5dee697fccdf05f4a29d16b8e2a3e654d70cc679, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=4702c83bfa51c5da6d123bb677001b50b7ce9665, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=2f99b1976b80a67562c922791c1d0834a3b875a5, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=b46b9dc9ee7a99efda1c82f37d9a68eee3176733, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                     ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=e990fe7da991ec816a47f187f595706a49ec6a05, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                   ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=18a27b3cbb891235e0c251badd011a67a7c52690, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                 ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=6af62fe13124b476121ba88911fe49dc7eb7aea8, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                     ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e3d64259eb5570c0ca8998c5f5d420a2d4edd18a, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                   ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=1b44ff229e2322edc6f895932cd0cf7dc538e374, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1201c8505d3a155952306024fb35c379ce96ff77, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:              ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=30aa79f09eda9abe46c731fa3ca2d8ee013d44da, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                  ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=17db850f6be626d3725bda30d81624810863de88, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                  ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                  ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=e091b6e76a49ce3eea2f14a1626bb556fe409498, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=6fd63acc8ec198964d5079677e944331d8f5e3bc, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
af5c6d5340f3790b7bae847d0c0c393d104ea7eb0a241b1dbfa6940dd3fcaa1a  ./wget/wget_busybox_aarch_arm64_Linux
83273e34d54bee8eea3af3d8b3e0e2ac31e04d884b76f480abba32213659283f  ./wget/wget_busybox_aarch_arm64_Linux.base64
39a79d7f49824cc4b2a032a11e487480d6fc25da23e24b6a055c7b942251f586  ./wget/wget_busybox_amd_x86_64_Linux
6ebb5041195e3c67f3bd8aef4d5247f6f153b47e9d3a599242dfcb738b6caed0  ./wget/wget_busybox_amd_x86_64_Linux.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
93a3f7c20d6612007c87c9e03d7a389adb56a24b2e7d1ce3e97ca519cafec944  ./wget/wget_busybox_arm_gnueabi_Linux
1f2abbfc3c25d3143ac481858f4d20669992322f76ca7d607c75452ec28fc403  ./wget/wget_busybox_arm_gnueabi_Linux.base64
016aae31f5a8807c38c426eb1c1def4b391cb237c53d1a1518f5dd4a9dceae53  ./wget/wget_busybox_arm_gnueabihf_Linux
467d516d3914c5bb169d4a818641eca04df3a7a1611bca7ca63d86e41343d313  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
c3b8fe9fb375b04042b3c9cceb28a84efcfc4a9aac46125c3e933ea4763207a9  ./wget/wget_busybox_i686_Linux
a006c9300e17bb5242aaca5af333a1265fa5f0111d7d93f73560e60d5366e980  ./wget/wget_busybox_i686_Linux.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
8f430ab54894589873261092fe3a65acb206cb55b479cc2bfaeab9ed51b05036  ./wget/wget_busybox_m68k_Linux
4ae68780b488a84d327d09fa9caff794bd039e481a15b69904edb68345383f39  ./wget/wget_busybox_m68k_Linux.base64
8447adacab46c6df99c6f17efb528b60161f435329efc082f522cca680d86482  ./wget/wget_busybox_mips64_Linux
4711ba331c3ee9eee532eef6247f2c03854c8f9d8d8b17520fd60a3582b10759  ./wget/wget_busybox_mips64_Linux.base64
072cb239038d67c52d0e17f0c47a215e38a0043fc84bf97266c9db23903c0bd0  ./wget/wget_busybox_mips64el_Linux
a5ea01b1fa97c6863cf53d7a77400a0dfff8e5152f4acdcffcdffb8b0eed0227  ./wget/wget_busybox_mips64el_Linux.base64
50e96ee937a0865c40c822c7151c8d5e9281adc2719439d4a43fd9cd771b8493  ./wget/wget_busybox_mips_Linux
777719207a9f65fee87bf02be1d2e53d411383b4986c54b01a3ae5aba1710fe7  ./wget/wget_busybox_mips_Linux.base64
969ca9606dbe7a57c0bfe7217f42061d44af977400238f516346462e5251583b  ./wget/wget_busybox_mipsel_Linux
d7d10f2c4ec4c4708de5131984fe39f931cb28d2ed385eb7b150cabc1ad92514  ./wget/wget_busybox_mipsel_Linux.base64
42a90a00032ba0cdccadade3a69b0c76349e839679b5b02d5d07357d3ba4a25f  ./wget/wget_busybox_powerpc64_Linux
a4e3aa88484102c6736097118e7762a3a622dbf093b27d45d60310019af5a24d  ./wget/wget_busybox_powerpc64_Linux.base64
fdab38e3f4dc8965aa3e6a949480f75dde43e39385923b00e95c230b6725bb4c  ./wget/wget_busybox_powerpc64le_Linux
5964807216f0e5a4a812a1b9cb1f4dcad1500ecae98b39eecf8e0cf5f20a356e  ./wget/wget_busybox_powerpc64le_Linux.base64
c2c74793d2af156a8c3a88ff71fba0d7894441f2cc04516d03a94a1674c21892  ./wget/wget_busybox_powerpc_Linux
b4198ad83ba05ecef26dbe6a85a2fe17e288f6caba7986c5d230b8c3448d2c31  ./wget/wget_busybox_powerpc_Linux.base64
03ed74c239999c2db1632937835a99a496cc7cb2f226db9a2c75207637db3348  ./wget/wget_busybox_riscv32_Linux
dace4c3fdcf22994a39d1cc2f9c36e70be0f62c0d0c95bb6f305741b48f0a7cc  ./wget/wget_busybox_riscv32_Linux.base64
5b201a7d000872896810653a16938ee548394747103f94876b709e41e931802a  ./wget/wget_busybox_riscv64_Linux
7c7292eec72e00502ac7fd59f27ca7643f56091a0938b7b85c3f9684b4886fb6  ./wget/wget_busybox_riscv64_Linux.base64
7c5a49bba8977cfec687bec8b8450af08a2466e250372f5d0ff3f7973de0a607  ./wget/wget_busybox_s390x_Linux
68abbd858c0077630cb3357c06c66f821fcbd69034d5ff677dd2d673af2d5fcf  ./wget/wget_busybox_s390x_Linux.base64

--> Sizes
535K   ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
714K   ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
653K   ./wget/wget_amd_x86_lite_Windows.exe
871K   ./wget/wget_amd_x86_lite_Windows.exe.base64
612K   ./wget/wget_amd_x86_x64_lite_Windows.exe
816K   ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
875K   ./wget/wget_busybox_aarch_arm64_Linux
1.2M   ./wget/wget_busybox_aarch_arm64_Linux.base64
1.3M   ./wget/wget_busybox_amd_x86_64_Linux
1.7M   ./wget/wget_busybox_amd_x86_64_Linux.base64
98K    ./wget/wget_busybox_amd_x86_64_Tiny_Linux
130K   ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
819K   ./wget/wget_busybox_arm_gnueabi_Linux
1.1M   ./wget/wget_busybox_arm_gnueabi_Linux.base64
591K   ./wget/wget_busybox_arm_gnueabihf_Linux
788K   ./wget/wget_busybox_arm_gnueabihf_Linux.base64
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
1.1M   ./wget/wget_busybox_mipsel_Linux
1.4M   ./wget/wget_busybox_mipsel_Linux.base64
1.4M   ./wget/wget_busybox_powerpc64_Linux
1.9M   ./wget/wget_busybox_powerpc64_Linux.base64
1.4M   ./wget/wget_busybox_powerpc64le_Linux
1.9M   ./wget/wget_busybox_powerpc64le_Linux.base64
1.1M   ./wget/wget_busybox_powerpc_Linux
1.5M   ./wget/wget_busybox_powerpc_Linux.base64
663K   ./wget/wget_busybox_riscv32_Linux
884K   ./wget/wget_busybox_riscv32_Linux.base64
668K   ./wget/wget_busybox_riscv64_Linux
890K   ./wget/wget_busybox_riscv64_Linux.base64
983K   ./wget/wget_busybox_s390x_Linux
1.3M   ./wget/wget_busybox_s390x_Linux.base64

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
