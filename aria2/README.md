
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
./aria2/aria2c_mips_musl_Linux:                          ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_musl_latest_Linux:                   ELF 32-bit MSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_libressl_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_libressl_musl_latest_Linux:        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_musl_Linux:                        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_musl_latest_Linux:                 ELF 32-bit LSB pie executable, MIPS, MIPS-II version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_x86_64_Android:                           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./aria2/aria2c_x86_Android:                              ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
$ sha256sum ./aria2/aria2c_aarch64_arm64_Android ./aria2/aria2c_aarch64_arm64_Windows.exe ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux ./aria2/aria2c_aarch64_arm64_musl_Linux ./aria2/aria2c_aarch64_arm64_musl_latest_Linux ./aria2/aria2c_aarch_arm_Android ./aria2/aria2c_amd_x86_64_libressl_musl_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux ./aria2/aria2c_amd_x86_64_musl_Linux ./aria2/aria2c_amd_x86_64_musl_latest_Linux ./aria2/aria2c_amd_x86_x64_Windows.exe ./aria2/aria2c_amd_x86_x64_latest_Windows.exe ./aria2/aria2c_arm_abi_libressl_musl_Linux ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux ./aria2/aria2c_arm_abi_musl_Linux ./aria2/aria2c_arm_abi_musl_latest_Linux ./aria2/aria2c_i686_Windows.exe ./aria2/aria2c_i686_latest_Windows.exe ./aria2/aria2c_mips64_libressl_musl_Linux ./aria2/aria2c_mips64_libressl_musl_latest_Linux ./aria2/aria2c_mips64_musl_Linux ./aria2/aria2c_mips64_musl_latest_Linux ./aria2/aria2c_mips_libressl_musl_Linux ./aria2/aria2c_mips_libressl_musl_latest_Linux ./aria2/aria2c_mips_musl_Linux ./aria2/aria2c_mips_musl_latest_Linux ./aria2/aria2c_mipsel_libressl_musl_Linux ./aria2/aria2c_mipsel_libressl_musl_latest_Linux ./aria2/aria2c_mipsel_musl_Linux ./aria2/aria2c_mipsel_musl_latest_Linux ./aria2/aria2c_x86_64_Android ./aria2/aria2c_x86_Android
cb2bd8beafb566ef55d217837edff00e3f660aa6050927b5f9b68651ff4ba51a  ./aria2/aria2c_aarch64_arm64_Android
8aeaf6bcf7f4e897acbfc5dde154e1894403aa89722bddc45468d4e6a734d50f  ./aria2/aria2c_aarch64_arm64_Windows.exe
58e68bf7fb255e0d775f056fc8595acaea5985e89b0735609b4b7b0b5a340d49  ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux
5fbd5927d6e63024d8a7f3afd0637cea4737bfa672669bda1150ce617be12e62  ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux
fbc44931d8e8545e34f3cb2a1cc9586dbc60c1dd7189e398c643f318f1ee706d  ./aria2/aria2c_aarch64_arm64_musl_Linux
f2457c987c132e54b8de6d032a5c80bcbd921679fa4e1056b8e086d872d16afc  ./aria2/aria2c_aarch64_arm64_musl_latest_Linux
793502af1321f715dff1b19fe6a3c686d71be83c52fa017868d30b31eb8f02b7  ./aria2/aria2c_aarch_arm_Android
4d1b9e7ea2da74b0fc24953a19650b5f27c21808de6cb9a4b3b2eb453e5bb703  ./aria2/aria2c_amd_x86_64_libressl_musl_Linux
a6f7bff6098a5a6414e49e1362604e0582989c186a8863f224da41f0bcc5c133  ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux
783d59dc2b8d32d692c5e6c0a22f8fb332e56cf1d372f8b84c56fe31e2bc067c  ./aria2/aria2c_amd_x86_64_musl_Linux
19b49ff008815a3fecd799e7d5f5fda49a8890437868995ffb08bc82c533fbfb  ./aria2/aria2c_amd_x86_64_musl_latest_Linux
fb58da27a9dda5b6a7137283770a5a041158f1676c4bdd33762987b5e6cad179  ./aria2/aria2c_amd_x86_x64_Windows.exe
956cfb09b1632451b91c5e78818c5d474b984bbd58811e3e6dd1d07be6f4a5e0  ./aria2/aria2c_amd_x86_x64_latest_Windows.exe
5c2ba029680e708d7e907f93d7e9f5baf56d071133197633b729147648d4ce52  ./aria2/aria2c_arm_abi_libressl_musl_Linux
509f00be93c84d1f10d458abb402870693854ed2800940547389804697b75579  ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux
ee1240c2c540a7090bfaf67f1498d2796a3ffa4f3638ceff2f386299c9a947ad  ./aria2/aria2c_arm_abi_musl_Linux
ef18c3989de62b90dbcc3e92ea8726cf328a7b999fcd8dedec3a5da2abced707  ./aria2/aria2c_arm_abi_musl_latest_Linux
0b51fc224b746751c5145137b917af324d7fc7dc5618441aa68cf224488a4f2f  ./aria2/aria2c_i686_Windows.exe
2060729271cd38f2032200e4860b56f5281c3cff773432322ce7117b865359e7  ./aria2/aria2c_i686_latest_Windows.exe
cb3971ee4a2451452e93287fb9fe7cfda9ca333bc982a794d1227db04745ad1f  ./aria2/aria2c_mips64_libressl_musl_Linux
91af0937f5a724f31c783cc430a0fd64b71edac1e5c7e60f9b24f708964da2a0  ./aria2/aria2c_mips64_libressl_musl_latest_Linux
e27ae3b371d7bfb9659cd4e7615aea591796405a57e1419cca862f8f77ec01cc  ./aria2/aria2c_mips64_musl_Linux
46191b323ecaf58ebf928016a5e52eb132344030d0e2762e81ee48a51cbd61e5  ./aria2/aria2c_mips64_musl_latest_Linux
5789b94318fc8e90711aac9f4bea07f2900c421337088cde3f2362eea474377c  ./aria2/aria2c_mips_libressl_musl_Linux
0eaf4996b67425df2eff1fd3bb5f1a678d64d54a6855a2e40b73e00b38f4dd32  ./aria2/aria2c_mips_libressl_musl_latest_Linux
f3fddc6e3c061a3ec092f8ca9b8c33199ce6fc8bcc14bd1b798072d29973e525  ./aria2/aria2c_mips_musl_Linux
6fbada23b0ce77dcf467913216ed54a9a1c2fe9f37cea51645f2a4cd3eb27c17  ./aria2/aria2c_mips_musl_latest_Linux
d4ec61b175594dbac6f165fabef1e639b614814bfeb72163dd1f2a05758a7533  ./aria2/aria2c_mipsel_libressl_musl_Linux
e75081a6522a2151662214fd8de67bc7d013c6ef6c2ebcc9164bcf45ef458f8e  ./aria2/aria2c_mipsel_libressl_musl_latest_Linux
a1ecad6cc1962ebbce92c31bc52756b89aaf0e71c983efa051ff6d8649b2e40a  ./aria2/aria2c_mipsel_musl_Linux
0a400958bfc94fa506fab09ac69426592d52bc39efeea1dc838015365c4d4391  ./aria2/aria2c_mipsel_musl_latest_Linux
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
8.1M  aria2c_aarch64_arm64_libressl_musl_latest_Linux
11M   aria2c_aarch64_arm64_musl_Linux
11M   aria2c_aarch64_arm64_musl_latest_Linux
7.5M  aria2c_aarch_arm_Android
8.3M  aria2c_amd_x86_64_libressl_musl_Linux
8.3M  aria2c_amd_x86_64_libressl_musl_latest_Linux
11M   aria2c_amd_x86_64_musl_Linux
11M   aria2c_amd_x86_64_musl_latest_Linux
5.9M  aria2c_amd_x86_x64_Windows.exe
5.8M  aria2c_amd_x86_x64_latest_Windows.exe
6.8M  aria2c_arm_abi_libressl_musl_Linux
6.8M  aria2c_arm_abi_libressl_musl_latest_Linux
8.5M  aria2c_arm_abi_musl_Linux
8.5M  aria2c_arm_abi_musl_latest_Linux
5.9M  aria2c_i686_Windows.exe
6.3M  aria2c_i686_latest_Windows.exe
12M   aria2c_mips64_libressl_musl_Linux
12M   aria2c_mips64_libressl_musl_latest_Linux
14M   aria2c_mips64_musl_Linux
14M   aria2c_mips64_musl_latest_Linux
11M   aria2c_mips_libressl_musl_Linux
11M   aria2c_mips_libressl_musl_latest_Linux
14M   aria2c_mips_musl_Linux
13M   aria2c_mips_musl_latest_Linux
11M   aria2c_mipsel_libressl_musl_Linux
11M   aria2c_mipsel_libressl_musl_latest_Linux
14M   aria2c_mipsel_musl_Linux
13M   aria2c_mipsel_musl_latest_Linux
9.5M  aria2c_x86_64_Android
11M   aria2c_x86_Android
7     version.txt
```

---

- #### Flags
```console
$ qemu-aarch64-static ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux --version
aria2 version 1.36.0
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
Libraries: zlib/1.2.13.zlib-ng libxml2/2.11.5 sqlite3/3.42.0 OpenSSL/2.0.0 c-ares/1.19.1 libssh2/1.11.0
Compiler: gcc 11.2.1 20211120
  built by  x86_64-pc-linux-gnu
  targeting aarch64-unknown-linux-musl
  on        Aug 12 2023 01:06:56
System: Linux 5.15.0-1042-azure #49-Ubuntu SMP Tue Jul 11 17:28:46 UTC 2023 aarch64

Report bugs to https://github.com/aria2/aria2/issues
Visit https://aria2.github.io/

```

---

