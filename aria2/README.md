
---
- #### Download aria2
> - **Sources**
> > ```bash
> > --> Android:
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/aria2
> > --> Linux:
> >      - https://github.com/abcfy2/aria2-static-build [ Stable Releases + Latest Preleases ]
> >      - Binaries for s390x are compiled using dockercross
> > --> Windows:
> >      - https://github.com/abcfy2/aria2-static-build
> >      - https://github.com/repos/minnyres/aria2-windows-arm64
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
--> aria2c_aarch_arm_Android
--> aria2c_aarch64_arm64_Android
--> aria2c_x86_64_Android
--> aria2c_x86_Android

!#For Linux
--> aria2c_aarch64_arm64_musl_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> aria2c_aarch64_arm64_musl_latest_Linux
--> aria2c_aarch64_arm64_libressl_musl_Linux
--> aria2c_aarch64_arm64_libressl_musl_latest_Linux
--> aria2c_amd_x86_64_musl_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> aria2c_amd_x86_64_musl_latest_Linux
--> aria2c_amd_x86_64_libressl_musl_Linux
--> aria2c_amd_x86_64_libressl_musl_latest_Linux
--> aria2c_arm_abi_musl_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> aria2c_arm_abi_musl_latest_Linux
--> aria2c_arm_abi_libressl_musl_Linux
--> aria2c_arm_abi_libressl_musl_latest_Linux
--> //_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> // || x86_64 [32-bit] (GNU/Linux)
--> //_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> aria2c_mips_musl_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> aria2c_mips_musl_latest_Linux
--> aria2c_mips_libressl_musl_Linux
--> aria2c_mips_libressl_musl_latest_Linux
--> aria2c_mips64_musl_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> aria2c_mips64_musl_latest_Linux
--> aria2c_mips64_libressl_musl_Linux
--> aria2c_mips64_libressl_musl_latest_Linux
--> //_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> aria2c_mipsel_musl_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> aria2c_mipsel_musl_latest_Linux
--> aria2c_mipsel_libressl_musl_Linux
--> aria2c_mipsel_libressl_musl_latest_Linux
--> //powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> //riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> //riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> //s390x_Linux || IBM S/390 [64-bit] (GNU/Linux)

!# For Windows
--> aria2c_aarch64_arm64_Windows.exe || [64-bit] (PE32+) 
--> aria2c_amd_x86_x64_Windows.exe || [64-bit] (PE32+) 
--> aria2c_i686_Windows.exe || [32-bit] (PE32)
--> aria2c_i686_latest_Windows.exe


!# Export
export aria2_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"
!# For Linux : append `musl` before `_Linux` if you want the musl compiled binaries
!# Example: aria2_busybox_aarch_arm64_Linux --> aria2_busybox_aarch_arm64_musl_Linux
!# export aria2_ARCH="aria2_busybox_aarch_arm64_musl_Linux"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH"

!# Or for .base64
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH.base64"

```
---
- #### Install aria2
```bash
!# Copy downloaded aria2c binary to /usr/bin || /usr/local/bin

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded aria2 binary to that DIR
 mv "$Path_To_aria2c_Binary" "/usr/bin/aria2c"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/aria2c"
```




---
```console
$ file ./aria2/aria2c_aarch64_arm64_Android ./aria2/aria2c_aarch64_arm64_Windows.exe ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux ./aria2/aria2c_aarch64_arm64_musl_Linux ./aria2/aria2c_aarch64_arm64_musl_latest_Linux ./aria2/aria2c_aarch_arm_Android ./aria2/aria2c_amd_x86_64_libressl_musl_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux ./aria2/aria2c_amd_x86_64_musl_Linux ./aria2/aria2c_amd_x86_64_musl_latest_Linux ./aria2/aria2c_amd_x86_x64_Windows.exe ./aria2/aria2c_amd_x86_x64_latest_Windows.exe ./aria2/aria2c_arm_abi_libressl_musl_Linux ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux ./aria2/aria2c_arm_abi_musl_Linux ./aria2/aria2c_arm_abi_musl_latest_Linux ./aria2/aria2c_i686_Windows.exe ./aria2/aria2c_i686_latest_Windows.exe ./aria2/aria2c_mips64_libressl_musl_Linux ./aria2/aria2c_mips64_libressl_musl_latest_Linux ./aria2/aria2c_mips64_musl_Linux ./aria2/aria2c_mips64_musl_latest_Linux ./aria2/aria2c_mips_libressl_musl_Linux ./aria2/aria2c_mips_libressl_musl_latest_Linux ./aria2/aria2c_mips_musl_Linux ./aria2/aria2c_mips_musl_latest_Linux ./aria2/aria2c_mipsel_libressl_musl_Linux ./aria2/aria2c_mipsel_libressl_musl_latest_Linux ./aria2/aria2c_mipsel_musl_Linux ./aria2/aria2c_mipsel_musl_latest_Linux ./aria2/aria2c_x86_64_Android ./aria2/aria2c_x86_Android
./aria2/aria2c_aarch64_arm64_Android:                    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./aria2/aria2c_aarch64_arm64_Windows.exe:                PE32+ executable (console) Aarch64, for MS Windows
./aria2/aria2c_aarch64_arm64_libressl_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_musl_Linux:                 ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_musl_latest_Linux:          ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch_arm_Android:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./aria2/aria2c_amd_x86_64_libressl_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_musl_Linux:                    ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_musl_latest_Linux:             ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_x64_Windows.exe:                  PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./aria2/aria2c_amd_x86_x64_latest_Windows.exe:           PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./aria2/aria2c_arm_abi_libressl_musl_Linux:              ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_arm_abi_libressl_musl_latest_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_arm_abi_musl_Linux:                       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_arm_abi_musl_latest_Linux:                ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_i686_Windows.exe:                         PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./aria2/aria2c_i686_latest_Windows.exe:                  PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./aria2/aria2c_mips64_libressl_musl_Linux:               ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips64_libressl_musl_latest_Linux:        ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips64_musl_Linux:                        ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips64_musl_latest_Linux:                 ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_libressl_musl_Linux:                 ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_libressl_musl_latest_Linux:          ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_musl_Linux:                          ELF 32-bit MSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_musl_latest_Linux:                   ELF 32-bit MSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_libressl_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_libressl_musl_latest_Linux:        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_musl_Linux:                        ELF 32-bit LSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_musl_latest_Linux:                 ELF 32-bit LSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_x86_64_Android:                           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./aria2/aria2c_x86_Android:                              ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
$ sha256sum ./aria2/aria2c_aarch64_arm64_Android ./aria2/aria2c_aarch64_arm64_Windows.exe ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux ./aria2/aria2c_aarch64_arm64_musl_Linux ./aria2/aria2c_aarch64_arm64_musl_latest_Linux ./aria2/aria2c_aarch_arm_Android ./aria2/aria2c_amd_x86_64_libressl_musl_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux ./aria2/aria2c_amd_x86_64_musl_Linux ./aria2/aria2c_amd_x86_64_musl_latest_Linux ./aria2/aria2c_amd_x86_x64_Windows.exe ./aria2/aria2c_amd_x86_x64_latest_Windows.exe ./aria2/aria2c_arm_abi_libressl_musl_Linux ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux ./aria2/aria2c_arm_abi_musl_Linux ./aria2/aria2c_arm_abi_musl_latest_Linux ./aria2/aria2c_i686_Windows.exe ./aria2/aria2c_i686_latest_Windows.exe ./aria2/aria2c_mips64_libressl_musl_Linux ./aria2/aria2c_mips64_libressl_musl_latest_Linux ./aria2/aria2c_mips64_musl_Linux ./aria2/aria2c_mips64_musl_latest_Linux ./aria2/aria2c_mips_libressl_musl_Linux ./aria2/aria2c_mips_libressl_musl_latest_Linux ./aria2/aria2c_mips_musl_Linux ./aria2/aria2c_mips_musl_latest_Linux ./aria2/aria2c_mipsel_libressl_musl_Linux ./aria2/aria2c_mipsel_libressl_musl_latest_Linux ./aria2/aria2c_mipsel_musl_Linux ./aria2/aria2c_mipsel_musl_latest_Linux ./aria2/aria2c_x86_64_Android ./aria2/aria2c_x86_Android
cb2bd8beafb566ef55d217837edff00e3f660aa6050927b5f9b68651ff4ba51a  ./aria2/aria2c_aarch64_arm64_Android
8aeaf6bcf7f4e897acbfc5dde154e1894403aa89722bddc45468d4e6a734d50f  ./aria2/aria2c_aarch64_arm64_Windows.exe
a43651c11aaf39847a9ac860da9908e14764129e13777b5ba24ae8678124e59b  ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux
d4e8c1f43a74a07ac9b64b15899ab9a5c3730366266205b85ff600f1494ee5df  ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux
bcf59dd2ba97a0f55a6950a34af00bf12494a92757608aa2eea4508c59a89842  ./aria2/aria2c_aarch64_arm64_musl_Linux
72975c2f8c4aead0d1a2180232517f6f16268858428c36f05126162185e38986  ./aria2/aria2c_aarch64_arm64_musl_latest_Linux
793502af1321f715dff1b19fe6a3c686d71be83c52fa017868d30b31eb8f02b7  ./aria2/aria2c_aarch_arm_Android
3e5575d7798a6cd363454e303b9bb7850753df67a80edeb824ccf6f778e20227  ./aria2/aria2c_amd_x86_64_libressl_musl_Linux
a750d89b4ef8dfe0a234bc055a3484c776ca07c911122155e8ba71f47a0266c3  ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux
2359b539e6e23e4845f02208d0b4cc4f550da19d5f4fa02d3be5a5846a172748  ./aria2/aria2c_amd_x86_64_musl_Linux
e0d3d5ef3b678b26c0024f47fe76eba28d4dd3a3bb51a37224fe8cdaa6cda474  ./aria2/aria2c_amd_x86_64_musl_latest_Linux
fb58da27a9dda5b6a7137283770a5a041158f1676c4bdd33762987b5e6cad179  ./aria2/aria2c_amd_x86_x64_Windows.exe
2dc6fa7440534f70b3fd66246eaaf5324ba96a4df77a122af4576ac60c0c2e03  ./aria2/aria2c_amd_x86_x64_latest_Windows.exe
c98f6511e54e85f84f378c3878524fe0bb3f14bfa67a6c9ebc1ead5cac4ab378  ./aria2/aria2c_arm_abi_libressl_musl_Linux
3af45263e8d89a1d9989dd4af18728c3b8825d359c3694ef42d10446c2e2211e  ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux
6cf66e155511050228dfa45e5f6bd5c8edb6a338beabe32a223889ae413319ab  ./aria2/aria2c_arm_abi_musl_Linux
2f88267f020ab5047aaf95a2c8edf320d9a08b99b1ff2f13c2181919bbaf7a64  ./aria2/aria2c_arm_abi_musl_latest_Linux
0b51fc224b746751c5145137b917af324d7fc7dc5618441aa68cf224488a4f2f  ./aria2/aria2c_i686_Windows.exe
55bacf77dbad50f1a4f714419bce400289b82526dbde7db4a4a1cacec2dd994a  ./aria2/aria2c_i686_latest_Windows.exe
e9367d848b900c6de2337f70faa38c4b2055c8fcf252ec1a2bbdd986ac87f0fd  ./aria2/aria2c_mips64_libressl_musl_Linux
e1e7b1445e721476d7b2c711e8e85918ee2ef4937ddcc5cae482a9185b151956  ./aria2/aria2c_mips64_libressl_musl_latest_Linux
b8ae9210c0ac3cad8df247ed5f749ef8cedc0df5c152c8c55ddb55251a5d5e9f  ./aria2/aria2c_mips64_musl_Linux
060a554a4c6566d61f311038e4d6ba03033f04b13affe5116cd0729ff8706791  ./aria2/aria2c_mips64_musl_latest_Linux
6f178b057c16feb597e3b9ce8d6be258bdc1d4ef5bf86b8661ef10dbcac14d5c  ./aria2/aria2c_mips_libressl_musl_Linux
bb45dd3fc23fc94b7766f32ee067a06c8e067231fe987c6bbd1f0cc293e5b925  ./aria2/aria2c_mips_libressl_musl_latest_Linux
45748825f3c36a17c6893d66f6f977a5f076bae2cf5b839279b5c9dea2fca901  ./aria2/aria2c_mips_musl_Linux
1b260d3fbecacb497d543bca94ea424e06868e84d0d38a78cecde26d2a2e4c37  ./aria2/aria2c_mips_musl_latest_Linux
355d7a460d4481984d871007f3e8a23a58125d260fa1b023488f35aa71c5df09  ./aria2/aria2c_mipsel_libressl_musl_Linux
902f8e87043eb51dba602b97ec1502c4bd848028dd9f7462c900c674d29c8684  ./aria2/aria2c_mipsel_libressl_musl_latest_Linux
c63eeda047fcbed2008438ca45673941a696dbfd723ec0f741c64f474e8bdf61  ./aria2/aria2c_mipsel_musl_Linux
e6b5ad0e49b4bbd23ac9379fee01080b5ace27218b6b81c20e8a4bd96d99eb83  ./aria2/aria2c_mipsel_musl_latest_Linux
312cd572799d01f6986ed769ea36f7477adeeceed43c25ea3159b304070eb357  ./aria2/aria2c_x86_64_Android
a10f9dce07065edd25b832d653b0e0949e4a498d738bc5903013dea981b50054  ./aria2/aria2c_x86_Android
```


---

- #### Sizes

```console
3.8K  INFO.md
15K   README.md
8.6M  aria2c_aarch64_arm64_Android
4.4M  aria2c_aarch64_arm64_Windows.exe
8.1M  aria2c_aarch64_arm64_libressl_musl_Linux
8.0M  aria2c_aarch64_arm64_libressl_musl_latest_Linux
11M   aria2c_aarch64_arm64_musl_Linux
12M   aria2c_aarch64_arm64_musl_latest_Linux
7.5M  aria2c_aarch_arm_Android
8.3M  aria2c_amd_x86_64_libressl_musl_Linux
8.3M  aria2c_amd_x86_64_libressl_musl_latest_Linux
12M   aria2c_amd_x86_64_musl_Linux
13M   aria2c_amd_x86_64_musl_latest_Linux
5.9M  aria2c_amd_x86_x64_Windows.exe
5.9M  aria2c_amd_x86_x64_latest_Windows.exe
6.8M  aria2c_arm_abi_libressl_musl_Linux
6.8M  aria2c_arm_abi_libressl_musl_latest_Linux
8.6M  aria2c_arm_abi_musl_Linux
9.0M  aria2c_arm_abi_musl_latest_Linux
5.9M  aria2c_i686_Windows.exe
6.4M  aria2c_i686_latest_Windows.exe
12M   aria2c_mips64_libressl_musl_Linux
12M   aria2c_mips64_libressl_musl_latest_Linux
14M   aria2c_mips64_musl_Linux
15M   aria2c_mips64_musl_latest_Linux
11M   aria2c_mips_libressl_musl_Linux
11M   aria2c_mips_libressl_musl_latest_Linux
14M   aria2c_mips_musl_Linux
14M   aria2c_mips_musl_latest_Linux
11M   aria2c_mipsel_libressl_musl_Linux
11M   aria2c_mipsel_libressl_musl_latest_Linux
14M   aria2c_mipsel_musl_Linux
14M   aria2c_mipsel_musl_latest_Linux
9.5M  aria2c_x86_64_Android
11M   aria2c_x86_Android
7     version.txt
```

---

- #### Flags
```console
$ qemu-aarch64-static ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux --version
aria2 version 1.37.0
Copyright (C) 2006, 2019 Tatsuhiro Tsujikawa

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

** Configuration **
Enabled Features: Async DNS, BitTorrent, Firefox3 Cookie, GZip, HTTPS, Message Digest, Metalink, XML-RPC, SFTP
Hash Algorithms: sha-1, sha-224, sha-256, sha-384, sha-512, md5, adler32
Libraries: zlib/1.3.0.zlib-ng libxml2/2.12.6 sqlite3/3.45.3 OpenSSL/2.0.0 c-ares/1.28.1 libssh2/1.11.0
Compiler: gcc 11.2.1 20211120
  built by  x86_64-pc-linux-gnu
  targeting aarch64-unknown-linux-musl
  on        May 11 2024 01:11:30
System: Linux 6.5.0-1021-azure #22~22.04.1-Ubuntu SMP Tue Apr 30 16:08:18 UTC 2024 aarch64

Report bugs to https://github.com/aria2/aria2/issues
Visit https://aria2.github.io/

```

---

