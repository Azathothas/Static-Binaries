
---
- #### Download Wget
> - **Sources**
> > ```bash
> > --> Android:
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/wget2/dynamic
> > --> DOS:
> >      - http://mik.dyndns.pro/dos-stuff/bin
> > --> Linux:
> >      - https://github.com/moparisthebest/static-curl/releases/latest
> >      - https://github.com/stunnel/static-curl/releases
> >      - https://github.com/ryanwoodsmall/static-binaries
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
!# For Android
--> curl_armhf_arm32_Android
--> curl_arm32_Android             
--> curl_arm64_Android     
--> curl_mips_Android               
--> curl_mipsel_Android  
--> curl_x86_Android  
--> curl_x86_64_Android            
--> curl_x64_Android               
!# DOS
--> curl_DOS
--> curl_lite_DOS                  
--> curl_tiny_DOS  
!#For Linux
--> curl_aarch64_arm64_Linux       
--> curl_aarch64_arm64_http3_Linux 
--> curl_amd64_x86_64_Linux       
--> curl_amd64_x86_64_http3_Linux  
--> curl_armhf_Linux               
--> curl_armv7_Linux               
--> curl_i386_Linux                    
--> curl_or1k_OpenRISC_Linux       
--> curl_ppc64le_powerpc64le_Linux
--> curl_riscv64_Linux             
!# For Windows
--> curl_amd_x86_Windows.exe    
--> curl_amd_x86_64_Windows.exe    
--> curl_arm_x64_Windows.exe  

!# Export
export CURL_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/$CURL_ARCH"

```
---
- #### Install wget
```bash
!# Copy downloaded wget binary to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded wget binary to that DIR
 mv "$Path_To_wget_Binary" "/usr/bin/wget"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/curl"
```


---
```console
$ file ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:        PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64: ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_lite_Windows.exe:               PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_amd_x86_x64_lite_Windows.exe:           PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe.base64:    ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_aarch_arm64_Linux:              ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=4001cc89f73d2047fa85f2ce92432b4c1f105392, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=9e08d58a83fabef42d7fb8af750b2910d085dfa2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=f31b3be7c3aef5bbdb9da05604faa53776fcdc26, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=b0948a5191bb7d5f8893dd08d4b49e616170ae22, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1c5a437fef09a1051766afa71a211a0b3a45032c, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                     ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=0fdbfbcd05049e036ed99d4be30174d9f2c8187e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                   ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=1e2e7bf9505a2897ddc01852d0c8cbbbf8163aef, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                 ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=90fa716cda24c2119b6e05621b650b68b96080fc, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                     ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=0318ee4eea54ab6ab8b9a3d5eb2a7263d4d919b1, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                   ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=46a93e5ee3d98cd9932de9a6d714f469e83229ed, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=f178da73bce4e5cc39a6853a225f3b3a8cf70fda, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:              ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=449dca25bf8763c583e5aba7b51d5432c426f4c9, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                  ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=f6993833d78b11f5d1e8d0b26d3b34e5f2ba6593, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                  ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                  ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=21c5b77ca039c5ad8b267e0cd2be04ee91043891, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=26113d271133f691ad59c71ed8036a33283a8820, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
4566788738afd7111bb7f2f8989fb1e6357c356c104220e7d08d0faaf5a66446  ./wget/wget_busybox_aarch_arm64_Linux
999c00f6436a0fc66505e0263974735d24bbd3f794048be09eaa6540f2c9f2b0  ./wget/wget_busybox_aarch_arm64_Linux.base64
c6bd33d4057d9fcf370ae7d5e3218cea73d460914b24956fbf686a07587e2b3f  ./wget/wget_busybox_amd_x86_64_Linux
a216481b8c498fe941440674d7bb0214b3e7c8e0dc1ee557756f7de251fb4a25  ./wget/wget_busybox_amd_x86_64_Linux.base64
ccfc596c1b05229ca2f08bd2d6fb5722cdbe40201e10ab75e82b0fcd8515a3d9  ./wget/wget_busybox_arm_gnueabi_Linux
12842f533f5b3d5af99d8215c9b8b5181582e4608ecfd46ae863756c8749839e  ./wget/wget_busybox_arm_gnueabi_Linux.base64
e0339a9e6fb1c1bc54bb5e0fc56354bbc3f622bed01288bd7c7f4f164cf43394  ./wget/wget_busybox_arm_gnueabihf_Linux
582699eae420769a351feb475a956051d1d8fa7e0188630ed5a774f874af2e08  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
1f76c35f2c3b70671d4065af52148d98b0a971d91cf26f553839b6dcb8639494  ./wget/wget_busybox_i686_Linux
335c78b97f8fd249e5bea56326bee7838716c975ec45d58c2a5a4211cd7ab17c  ./wget/wget_busybox_i686_Linux.base64
676b49df7b212cbcfd8735985e6975c972c818a521d1d4bc7f372b42735e162e  ./wget/wget_busybox_m68k_Linux
965414ae576e0b887223d11926b1ddd296321424b74f73fa4025ce2b70d031bf  ./wget/wget_busybox_m68k_Linux.base64
b96243bdf50c785d3ecd13576eb9d1a11a9213289bb45bbef755d097c9434ff3  ./wget/wget_busybox_mips64_Linux
580b834167ae1bbd4143c0a2d0dcfca3659823c4d70ddfc6788e5220353bb1f3  ./wget/wget_busybox_mips64_Linux.base64
38bf7d6d0ec6b2e7d21d31c9b89750ae890b3af9feb896061a0e4102c1ed53eb  ./wget/wget_busybox_mips64el_Linux
150a11a571c3917d86b7eab734099cdb6fa881ce46fdb1a041d955e7709e81be  ./wget/wget_busybox_mips64el_Linux.base64
f1cb0e880a161e5f65654a3b99cfb09f2fa6628a36c40a4569bb10011dc0fcb3  ./wget/wget_busybox_mips_Linux
8d43f539848c1170a548c98b3af6981112c9030c64caf8fb1d561166ac0427c7  ./wget/wget_busybox_mips_Linux.base64
3413984007ae8616ab5c073f7e1d8f3580408ba3c621db503402b268513144bb  ./wget/wget_busybox_mipsel_Linux
72382930164481b89200d690970bacfe84d8e7a39893a037f221094efda2674d  ./wget/wget_busybox_mipsel_Linux.base64
02a05af72cc306c980c1eebe65fc4f6bde33a1a7d6206e41e366f78ba57b3aa0  ./wget/wget_busybox_powerpc64_Linux
a01e1b843dbd7bb4e0fd86eff6195f1a06e44f94f045e5b97ce5e7715ce62fc1  ./wget/wget_busybox_powerpc64_Linux.base64
409729fb584b7006f0cb75ed779e923f2f1ab475816b94f58477e4579876625b  ./wget/wget_busybox_powerpc64le_Linux
5a836ee4c238150112b5a07fae501184ddb5e9066314d713bc8d95a6291d777b  ./wget/wget_busybox_powerpc64le_Linux.base64
8687b10d123468be100610d96ce1699ad55bbba0c0b78586ad490ee863c40e9e  ./wget/wget_busybox_powerpc_Linux
0900e2c00a281c80d6f7e1ed92e68d32f105c53790771952a37784e568a2791a  ./wget/wget_busybox_powerpc_Linux.base64
a974b0e514fec0153e1ebf0b7f86d004edc89060e4b7feb922e8a85584a518d0  ./wget/wget_busybox_riscv32_Linux
5c6b11a5874941138776b3d7ff434b85ec61c69858a3580342f0a11f83fc8f0a  ./wget/wget_busybox_riscv32_Linux.base64
b48974423150ab5de585e4a6815fc32a4fecc546698aa49dce642c2b8071a7c1  ./wget/wget_busybox_riscv64_Linux
7adb4a31468a54e99a58c97369842e902fa35c40c5fefd788dd979a2658323ad  ./wget/wget_busybox_riscv64_Linux.base64
91bf3af32141df4d4a1f6f4f044369040cdaafbf5db7f1e338cdb4b28e549e03  ./wget/wget_busybox_s390x_Linux
aaf8c8165de4f12398a654ba3058c54806304fb10fe239b03f47495e00119595  ./wget/wget_busybox_s390x_Linux.base64
```


---
- #### Flags
```console
$ qemu-aarch64-static ./wget/wget_aarch64_arm64_Linux -V
