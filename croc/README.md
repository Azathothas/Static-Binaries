
---
- #### Download [croc](https://github.com/schollz/croc#install)
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using dockercross (Dynamic Only)
> >      - Currently this fails with: loadinternal: cannot find runtime/cgo
> >
> > --> DragonFlyBSD:
> >      - https://github.com/schollz/croc/releases
> > 
> > --> FreeBSD:
> >      - https://github.com/schollz/croc/releases
> > 
> > --> Linux:
> >      - https://github.com/schollz/croc/releases
> >      - Binaries for '386' | 'loong64' | 'mips' | 'mipsle' | 'mips64' | 'mips64le' |'ppc64' | 'ppc64le' | 'riscv64' | 's390x' are crosscompiled
> > 
> > --> NetBSD:
> >      - https://github.com/schollz/croc/releases
> > 
> > --> macOS:
> >      - https://github.com/schollz/croc/releases
> > 
> > --> OpenBSD:
> >      - https://github.com/schollz/croc/releases
> > 
> > --> Windows:
> >      - https://github.com/schollz/croc/releases
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

!# DragonFlyBSD
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_DragonFlyBSD"

!# FreeBSD
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_aarch64_arm64_FreeBSD"
--> Amd x86|| x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_FreeBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_FreeBSD"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_aarch64_arm64_Linux"
--> Amd x86 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_Linux"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_arm_abi_Linux"
--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_i386_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_mips_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_mipsle_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_mips64_Linux"
--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_mips64le_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_powerpc64_ppc64_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_powerpc64le_ppc64le_Linux"
--> risc64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_riscv64_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_s390x_Linux"

!# macOS
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_x86_64_macOS"

!# NetBSD
--> Amd x86 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_NetBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_NetBSD"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_arm_abi_NetBSD"

!# OpenBSD
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_aarch64_arm64_OpenBSD"
--> Amd x86 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_OpenBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_OpenBSD"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_arm_abi_OpenBSD"

#Windows
--> aarch64 || arm64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_aarch64_arm64_Windows.exe"
--> Amd_x86 || x86 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_Windows.exe"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_amd_x86_64_Windows.exe"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) 
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/croc/croc_arm_Windows.exe"

```
---
- #### Install croc
```bash
!# Recommended way to install croc is:
 curl https://getcroc.schollz.com | bash
!# Compile Dynamically using go
  go install github.com/schollz/croc/v9@latest

!# Copy downloaded croc binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded croc binaries to that DIR
 mv "$Path_To_croc_Binary" "/usr/bin/croc"

!# Give Writeable Perms
 chmod +xwr /usr/bin/croc*
```

---
```console

--> METADATA
./croc/croc_386_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=LPp8VbkuqmM8PQHCvFWO/nZyaKqwDi9bFGx_M68Nc/H8UWJjBssXufvEam61jT/TM28y9UomDQF2gsvTHYZ, stripped
./croc/croc_aarch64_arm64_FreeBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=AWYCymn4KFlnJGjccv_J/_Olax0AxhSw3PifLUaib/e8EH9_sqUp9CVJk2cpOe/t312tRG1XLmcPZ9KYc2p, stripped
./croc/croc_aarch64_arm64_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=VLgqFwpCQ3RJE-ZMEsgF/RBWMLdmFBAiFdDOk6fac/yAA5pKShcUhXSHdUXWTS/z-9wArQG1js_wzDIYxo0, stripped
./croc/croc_aarch64_arm64_OpenBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=L1pq7RI-niVXkVsoMo_5/SOAoXLDl0VJwX45yTbsS/YsJW0mG4I-eofl9thWfh/eHG85dbVuLQUiG0ldUVu, stripped
./croc/croc_aarch64_arm64_Windows.exe: PE32+ executable (console) Aarch64, for MS Windows
./croc/croc_aarch64_arm64_macOS:       Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./croc/croc_amd_x86_64_DragonFlyBSD:   ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=m1TmhqIeX32du4rhR0QP/CjEk6LlG1Cn0DC-dcvYb/K-F5SjZP2s6HqXU5UWKp/_Did2GpSkR7HvtuDsjJX, stripped
./croc/croc_amd_x86_64_FreeBSD:        ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=zVpHbHsfsMPwXBeRVFtb/ns-TV3eSIjbKj6Gd-UT0/r6nw5MEm_wJ9S79xdOhE/VasRtN7ql4XcIf00PRb2, stripped
./croc/croc_amd_x86_64_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=KJUX_XoG3GVLIxoXYtti/15qaIEq5gNk8-D7oG-ol/Pdg7S09yeL0ayrIBnprc/5-tqEfOoLtuMm6gQ83Qk, stripped
./croc/croc_amd_x86_64_NetBSD:         ELF 64-bit LSB executable, x86-64, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=-kFw7WHmLjBcwO7FJ5L4/30F3uFqToABwuo3mr7Fl/Udi4lAR6u-i2AQ5jGx0Y/Sylztg7T_-GX56x_BaOr, stripped
./croc/croc_amd_x86_64_OpenBSD:        ELF 64-bit LSB executable, x86-64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=uknQb7EG3DxLyOi22dzV/cdKh97lttqYgSRWrpK72/ufbKBA9qrV6N7j0m99KH/686Z0ry4nJsY3KFkmJRI, stripped
./croc/croc_amd_x86_64_Windows.exe:    PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./croc/croc_amd_x86_FreeBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=pzNrEUJBJW2rS8WbBo1i/efB3Y9OPU_FNUsEveobp/eHFP7W8to9BzwgUQ0dYW/9Bo7qlkEzoieE5kfcHL3, stripped
./croc/croc_amd_x86_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=c8qy_UtlusBus4TRUE4N/1qy1TqFp0gcKSl29Qu8y/Xorl7BVZoO_0mVpHCffn/R7zmoP2X4Ywp2QQPaoDp, stripped
./croc/croc_amd_x86_NetBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=DmbyOB7CTWHmdHB4ByTP/KCm2UO0GwaxNZ24ggb5r/ImFeBAUaaofNH4LJPCqK/3gfOJYWwfwcXIzEMTYvF, stripped
./croc/croc_amd_x86_OpenBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=QJxeN-dGsKofnMKOHiqI/-nycADcw5xsi0Hxak8HL/DuUbViwnVIXgJHYxTg-F/NnSTXqNJaWdfOy8QkASY, stripped
./croc/croc_amd_x86_Windows.exe:       PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./croc/croc_arm_Windows.exe:           PE32 executable (console) ARMv7 Thumb, for MS Windows
./croc/croc_arm_abi_NetBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=8uSMKwcUg1iN7BfQ7wYN/hwB71Wn3g4HL1_ZEyTkC/u3lfuo7obGubolbbz-Zc/SWAXosYtZD8AfdJ-u9b_, stripped
./croc/croc_arm_abi_OpenBSD:           ELF 32-bit LSB executable, ARM, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=KEk2TdQLPEAlnn114S38/p1hVwSb4OB8mvl4t8V8s/I7pHswwhjFgaHMUbyvpF/sfMTszszjzGjmte8nIul, stripped
./croc/croc_loong64_Linux:             ELF 64-bit LSB executable, LoongArch, version 1 (SYSV), statically linked, Go BuildID=rot73Q1Y9dmlphjTlwck/eBqJU6FxQtF6QEd1EPhg/seNxuAVlcXQGNTeOopF3/zY9HTWdxh-ZfuZf66ws1, stripped
./croc/croc_mips64_Linux:              ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=E-9jmnysNA7GUm66gt-2/4wx4S92l9nu6hwUQS-7t/pV5ZClvNCmDYNuDYKT37/iBUVv9vaJwpTgbyW5Yby, stripped
./croc/croc_mips64le_Linux:            ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=vGGanL5MsqtIj1plbK9J/tnrsm-rx1gjjmO62tTlU/jDtJi0UMzqwvTBC4SWqj/_GDWiUkQ_GPNo1qDTpJW, stripped
./croc/croc_mips_Linux:                ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=QdbJW4q3Y2Mvp0vxgST0/GcnEb50cR4koAQQxeH7q/NDSuXCe2IESWF7j68aHq/6oEqdYl7CzDLdO4aw_PU, stripped
./croc/croc_mipsle_Linux:              ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=8TAnZA8UZzstsWDKKAVO/KlHFD00EFkDl0msgC7XY/d3mpnPaq039hQAO9fVNo/FX4sN_WHroV5oMKe5gBt, stripped
./croc/croc_powerpc64_ppc64_Linux:     ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=_WS1r69uNBP3E3XXtfzG/77gW_N-_gPTQbTcU-YND/n8W2lx4SOmQ82KgZOyuV/UdaIVpIa_dXEiPBlZ74j, stripped
./croc/croc_powerpc64le_ppc64le_Linux: ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=zSVp0BacNKoPul2RXyvl/xewxlXvCydrhbWTOaZS9/prHiUBHHGrqgCDsSINuC/q4iZfPqp32A2LrMhHdpD, stripped
./croc/croc_riscv64_Linux:             ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=2tDmkMVAmPkScsW1bzQ-/ijr3MKLEQkwYtorsD-E7/_FPNr8iFJHNOtwR42UIs/mMNf6JLLQHojHy11X_RJ, stripped
./croc/croc_s390x_Linux:               ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=W7rW_vWaSL1fYVHYOvc3/S-uHBqxnyceoK2XQqQkI/tIFUxHFz8CuqVfsZ1eGn/9ka2uqVUB0iN29gPKH6S, stripped
./croc/croc_x86_64_macOS:              Mach-O 64-bit x86_64 executable

--> SHA256SUM
c1370558a2e2fbe2fe51ac5627249455fe5b4f2c545a67686f06ce7764565ade  ./croc/croc_386_Linux
27d56a3c4ca3764a5fecf4b6c5f48ec1acc036f9e4f18fefc44b2423d9a7a004  ./croc/croc_aarch64_arm64_FreeBSD
c110c384712a51f397f2a67880f2d1722b03f8b56eacdcff8ab72b96a9c86334  ./croc/croc_aarch64_arm64_Linux
87eebe7bfe292c15cac45acc325a1eb9edf44207a19f0cd1a633fb26b9319f6a  ./croc/croc_aarch64_arm64_OpenBSD
0b2b543335dc7c77c5432711ccdbb360c247647304a72904b0b38379224eff74  ./croc/croc_aarch64_arm64_Windows.exe
1974fd5c174f603d4dd806c24bcde02c2bc79b2d7ca5125cf9ca3f14497f7903  ./croc/croc_aarch64_arm64_macOS
e7b53b11a8c23db87f88c4a58a2dab5ab51ee76fe22daca283bd504f14b35719  ./croc/croc_amd_x86_64_DragonFlyBSD
8a32a4ec548364d508e46a5be832a2426b3051b4e2260f2c7bbfb0bb19fecc4c  ./croc/croc_amd_x86_64_FreeBSD
6687cdae112883ba81118b919382ffb4e3c141141c92a6250c33f1bb6de3066f  ./croc/croc_amd_x86_64_Linux
f33d4f9fb9c92f783b96cec7b286024a9662c389825ee0d16cb83fcd429355a7  ./croc/croc_amd_x86_64_NetBSD
4e95f475edbf4a410a8e56021d284d9185f148c54b838f1c516458e257b4cac1  ./croc/croc_amd_x86_64_OpenBSD
5dcd92d60333edb45f2a05b1b419132a7833fcd4f101f84e005e0674c7905eef  ./croc/croc_amd_x86_64_Windows.exe
7ff1b6c223ed59e440118debc349e65254d507e82865377f3e2904184258b08e  ./croc/croc_amd_x86_FreeBSD
032af8fcf9d3ccc2a3758140269669fce8002168d7053049f164bac210138176  ./croc/croc_amd_x86_Linux
06d896ee75561fce48d22f965bdbe2d296b0b85bf35f89d3b20503c3a9a5e37e  ./croc/croc_amd_x86_NetBSD
9964c8ee5e7abcce36d282ccadeae66e1f2244bcff4befdb2b2bf9f974da957d  ./croc/croc_amd_x86_OpenBSD
25f4bb297b4c85b2b94f78cbf52698bd53ff8a6f2c58a4ef30fc345481445619  ./croc/croc_amd_x86_Windows.exe
144d4cfd271e44d4b5ac491dad33746924a81d9aa2a96bf4e0d6ae52457818bb  ./croc/croc_arm_Windows.exe
2419b6a55fc015b0548bc9ce29c849bb9baf346889d459f463ac0dbe8575a48f  ./croc/croc_arm_abi_NetBSD
b6f4ae2184afec08f332e4bae80293eac0f9004b25e0bac46639e66a713b3cb2  ./croc/croc_arm_abi_OpenBSD
3142c12d6139e09fd939e888a5877204a5f0e7325b0e91ba269eaef5159fc181  ./croc/croc_loong64_Linux
0197cd565c6dc73ab64eaa97df20bdf5fcdf1b68f9703c8dd5feaac1ddfac917  ./croc/croc_mips64_Linux
9775b98512de7300cf5d6df27f1eeccc3d1d31b450288bc98e62f086c39849ac  ./croc/croc_mips64le_Linux
3748da590aa6f7abbd08441e5da8b250517db45e3b92676ae23fd62b852b392a  ./croc/croc_mips_Linux
737f597bd278c6ced7301ee7dc323e4ea29b3fa80cf46f642c7f45ca48d01d3a  ./croc/croc_mipsle_Linux
88b71c3836fbb58c275a09a77bf9bc04b594c4b0b927479f5fc3052615ab6740  ./croc/croc_powerpc64_ppc64_Linux
ec55a45ed5cd369ec5ea85a48cca285793e6a099bdd15632eeb2c95cc4d7e6f6  ./croc/croc_powerpc64le_ppc64le_Linux
65dbd565ebdcf2355a6ca1649178deb7bd036db9ab031f9ca14665cc8b9efd71  ./croc/croc_riscv64_Linux
eb4df86bb514ed4f646aca3a893eda866dbc0f3afb2aa339f36870b6e4c7aa67  ./croc/croc_s390x_Linux
cef27b15127cb7d106dfefb35958c4a97d9b97b42ef604c5c4eaeeb877dd7ebf  ./croc/croc_x86_64_macOS
```


---

- #### Sizes

```console
7.1M  ./croc/croc_386_Linux
7.2M  ./croc/croc_aarch64_arm64_FreeBSD
7.2M  ./croc/croc_aarch64_arm64_Linux
7.2M  ./croc/croc_aarch64_arm64_OpenBSD
7.2M  ./croc/croc_aarch64_arm64_Windows.exe
8.0M  ./croc/croc_aarch64_arm64_macOS
7.5M  ./croc/croc_amd_x86_64_DragonFlyBSD
7.5M  ./croc/croc_amd_x86_64_FreeBSD
7.5M  ./croc/croc_amd_x86_64_Linux
7.5M  ./croc/croc_amd_x86_64_NetBSD
7.5M  ./croc/croc_amd_x86_64_OpenBSD
7.7M  ./croc/croc_amd_x86_64_Windows.exe
7.1M  ./croc/croc_amd_x86_FreeBSD
7.1M  ./croc/croc_amd_x86_Linux
7.1M  ./croc/croc_amd_x86_NetBSD
7.1M  ./croc/croc_amd_x86_OpenBSD
7.3M  ./croc/croc_amd_x86_Windows.exe
7.3M  ./croc/croc_arm_Windows.exe
7.2M  ./croc/croc_arm_abi_NetBSD
7.2M  ./croc/croc_arm_abi_OpenBSD
7.3M  ./croc/croc_loong64_Linux
8.2M  ./croc/croc_mips64_Linux
8.2M  ./croc/croc_mips64le_Linux
8.0M  ./croc/croc_mips_Linux
8.0M  ./croc/croc_mipsle_Linux
7.2M  ./croc/croc_powerpc64_ppc64_Linux
7.2M  ./croc/croc_powerpc64le_ppc64le_Linux
7.2M  ./croc/croc_riscv64_Linux
7.9M  ./croc/croc_s390x_Linux
8.1M  ./croc/croc_x86_64_macOS
```

---

- #### Version
```console

$ ./croc/croc_amd_x86_64_Linux --version
croc version v9.6.6-1e57206

$ ./croc/croc_amd_x86_64_Linux -h
NAME:
   croc - easily and securely transfer stuff from one computer to another

USAGE:
   Send a file:
      croc send file.txt

      -git to respect your .gitignore
   Send multiple files:
      croc send file1.txt file2.txt file3.txt
    or
      croc send *.jpg

   Send everything in a folder:
      croc send example-folder-name

   Send a file with a custom code:
      croc send --code secret-code file.txt

   Receive a file using code:
      croc secret-code

VERSION:
   v9.6.6-1e57206

COMMANDS:
   send     send file(s), or folder (see options with croc send -h)
   relay    start your own relay (optional)
   help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --internal-dns          use a built-in DNS stub resolver rather than the host operating system (default: false)
   --remember              save these settings to reuse next time (default: false)
   --debug                 toggle debug mode (default: false)
   --yes                   automatically agree to all prompts (default: false)
   --stdout                redirect file to stdout (default: false)
   --no-compress           disable compression (default: false)
   --ask                   make sure sender and recipient are prompted (default: false)
   --local                 force to use only local connections (default: false)
   --ignore-stdin          ignore piped stdin (default: false)
   --overwrite             do not prompt to overwrite (default: false)
   --testing               flag for testing purposes (default: false)
   --curve value           choose an encryption curve (p521, p256, p384, siec) (default: "p256")
   --ip value              set sender ip if known e.g. 10.0.0.1:9009, [::1]:9009
   --relay value           address of the relay (default: "5.161.69.143:9009") [$CROC_RELAY]
   --relay6 value          ipv6 address of the relay (default: "[2a01:4ff:f0:23c2::14c:1]:9009") [$CROC_RELAY6]
   --out value             specify an output folder to receive the file (default: ".")
   --pass value            password for the relay (default: "pass123") [$CROC_PASS]
   --socks5 value          add a socks5 proxy [$SOCKS5_PROXY]
   --connect value         add a http proxy [$HTTP_PROXY]
   --throttleUpload value  Throttle the upload speed e.g. 500k
   --help, -h              show help (default: false)
   --version, -v           print the version (default: false)


```

---

