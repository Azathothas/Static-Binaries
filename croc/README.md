
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
./croc/croc_386_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=Tk-UM5q0kCa7MTCmKmqO/kODQya2ooEmc8fQO1Lzp/KMzlX678J5RHi8wD7JD1/gyQ0soPeOtNizquQRXa5, stripped
./croc/croc_aarch64_arm64_FreeBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=akoWbIeWm5-CQytNCCPx/UShDtrC50EXj702jyoQd/83Vvi0CKGAn3889jv1R9/p13qqNWbyhrxg9c6biSQ, stripped
./croc/croc_aarch64_arm64_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=0iFue2t0gOZ3tXoR9Vio/iFF_qm3w166Lx65Yfw4a/cg3HnAnDlYLtX3Qm6DQq/vOshYYdsSx2jztEWvcwT, stripped
./croc/croc_aarch64_arm64_OpenBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=Zhl5G7vuRJzllewaLQaE/QLsp3cUuXxH479f55spm/0P5vQsNGYYh_1R27lkB3/ISKaZUKrlE8eoqaGMTBt, stripped
./croc/croc_aarch64_arm64_Windows.exe: PE32+ executable (console) Aarch64 (stripped to external PDB), for MS Windows
./croc/croc_aarch64_arm64_macOS:       Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./croc/croc_amd_x86_64_DragonFlyBSD:   ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=lm3-FvLvcK3dyHcM8Hk_/2gaemc-DUptUTXZ9IbyS/r0e4q3M9UD-KCxDJ9M3a/EecVTSWaWLHIJs1Ln-af, stripped
./croc/croc_amd_x86_64_FreeBSD:        ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=wYG6Uiq7CQGEOsKrUmUf/3kxsJm0PRsw2cEY4YEnh/O2GtJB8QJ_Qz3ixn690I/os1vl8HEUAWp8RvxTnnU, stripped
./croc/croc_amd_x86_64_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=qg0bg-Vg3ALcsc-7c5zP/UXL8hqDu6bqghU9rGi4K/z_Du1aXUJLVsr_37yAi2/kN7O_KuC_4jEp7uLFXeM, stripped
./croc/croc_amd_x86_64_NetBSD:         ELF 64-bit LSB executable, x86-64, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=viqYuMdPSI-mIm6G-fRv/loUwjexg5MJT_-T1VxI2/jhRZXhdr3TTlnPunxL46/3ZDZw9vjqPvqoIZHQEIk, stripped
./croc/croc_amd_x86_64_OpenBSD:        ELF 64-bit LSB executable, x86-64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=HyWzq13K-N1XTrV2v9vn/e1_XNB13a21QgkquMQtD/3GK1TK7cj1Jv7L0s_j5T/ct3E9-BzSD8gL5VENe-c, stripped
./croc/croc_amd_x86_64_Windows.exe:    PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./croc/croc_amd_x86_FreeBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=vqQcY-th04p90HUnENGQ/oYSuqWZNum0woTu0sFWz/F6BnikcIZ5FnouUUe92E/t4dQBjB-72Y5icCVkIK4, stripped
./croc/croc_amd_x86_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=OjwLnh8JhCPbcql1F88O/C6WqjMO0Uwy6sX-IDB3e/hZ_tPRaYNtVh0h3rvpqM/ObBgiPuI1zcGO7VjX4dt, stripped
./croc/croc_amd_x86_NetBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=7Lrsm8yJCv2J5ZLRgGrs/hUTNAYtD4cOnGEMAb3MN/NvGoyCKlzcUY7zVjEcSv/CDdJvhZbcJlMYx_IZLGb, stripped
./croc/croc_amd_x86_OpenBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=2r8FMzAhxPohUg66kno6/dTyJJQN87wzBrgbhSsCD/rXf3nUWL6BtPCvjXrx94/ue58s8iz2O3y7ieMw3iI, stripped
./croc/croc_amd_x86_Windows.exe:       PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./croc/croc_arm_Windows.exe:           PE32 executable (console) ARMv7 Thumb (stripped to external PDB), for MS Windows
./croc/croc_arm_abi_NetBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=AsjVKBwueFpkrbpllt2b/V8KzlO8If6eP6CigfWXu/SlWzZWn8I8NwHfiSpFj1/aXASSr-x_iFU3tFv8Ags, stripped
./croc/croc_arm_abi_OpenBSD:           ELF 32-bit LSB executable, ARM, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=nZbcPfaSwiCVR4Op44Es/koVThVI9D3pOYvybbj-a/ut1fXCcCn1ox2g1qpYEb/Do5tqK-zDwoV_papK6Ec, stripped
./croc/croc_loong64_Linux:             ELF 64-bit LSB executable, LoongArch, version 1 (SYSV), statically linked, Go BuildID=na0rBtoNrykwd6csZnTX/Awiww72ESLV2EIAHMqAy/OhU-WOIAjXYcI5jji1eb/LEAZVw-P-lVmAZLktWl-, stripped
./croc/croc_mips64_Linux:              ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=DuDF4yYlFLNddZB9at_V/7ZSkmcZDSHfrexgISWbd/wLOrtL-nGLC8FKWdpwJL/PsgCinZI4LbWDItOLwfd, stripped
./croc/croc_mips64le_Linux:            ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=0u9xMzP-uArRnvW0oN5g/UbsZSJVGg8uMNRJLCgzQ/qRH23Tmr4cUbtSABmxfX/6QJ29bwfUXtQfkZ669Xr, stripped
./croc/croc_mips_Linux:                ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=irIrF-MEBLi3LdrdALjt/kjwP4pNF3cHwosYXQte6/p5rgWg6EE3jzute4ZEU6/yzJ1HC4Vi60wI36dtW2A, stripped
./croc/croc_mipsle_Linux:              ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=0NRfDE8iiPDd72YXjjzl/a2OcBEGbJ1w8mrIQKtPV/ViLjwwq7TVPUUxBStJXR/rtRd8t7uIurb3jJQTYna, stripped
./croc/croc_powerpc64_ppc64_Linux:     ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=Ajscn-T4hqW3Wnmnpjuy/duaIdAvk68Nub-9MFpkN/4_434kBwQCcmX-RA8-gL/2EKatczS0ijkFwv3fV6S, stripped
./croc/croc_powerpc64le_ppc64le_Linux: ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=Ijn13EYHqy2a52Iq8hZb/oZN217Yni4E5atRGiAS9/Fu85CGihLVhUrROuKiQ0/jgiop6VEYFvLvQXpKS3Y, stripped
./croc/croc_riscv64_Linux:             ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=tK9FUQG4IbDnoZkEq3fl/kfzAJth_eitXD-JudRSD/zVPGe-qj1n3vZkhK-rlM/MOSdhwAoaNynQmDscVYM, stripped
./croc/croc_s390x_Linux:               ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=uvSP1mzZK1pY-cWQIuOK/K612vtvQmTvxjT574fFZ/QEd8isnoGPORjV22pH0L/j7as7VaMDJ0wem9iMQxt, stripped
./croc/croc_x86_64_macOS:              Mach-O 64-bit x86_64 executable

--> SHA256SUM
acc1b0d1f529d0dad9334933ffce052e2d4851329930efb8c0196835f51f10e8  ./croc/croc_386_Linux
6ae34240392b4d534182cb3fa03f1e59d380d470d868e22112dd3aa330ed2782  ./croc/croc_aarch64_arm64_FreeBSD
c25afd58c422f9f44bc895fbe04bd209e4be74be0cbcd911fb1f50b8ee87e1d4  ./croc/croc_aarch64_arm64_Linux
1a4fec1e817bd47e6e040b87288733bdeb78f68824325ce6b766664dec60af68  ./croc/croc_aarch64_arm64_OpenBSD
f090a22f19eaa1f363adca82b07f4b5255396990e01ddd17b0b164c86506a6a1  ./croc/croc_aarch64_arm64_Windows.exe
71eb9d5b0fbac568bb0e2c0d7c57ee272fd39b7a6f87ebb7ee831736925ead5a  ./croc/croc_aarch64_arm64_macOS
beec62500f9321eb059456cc117559bbc044e73335aa187534efac4f019516eb  ./croc/croc_amd_x86_64_DragonFlyBSD
a269c09e381d6027be8cc3d6c918826d4ab77814db90b8e463fd20a01c556fe6  ./croc/croc_amd_x86_64_FreeBSD
fbc04cae9e5faf089b6de6d6bccfb2db999d509e0f74b3a0f9492a62df44ce94  ./croc/croc_amd_x86_64_Linux
c4470d536a116c173745dabe8680ed2208dd7ce3eb44a4da09e7c9440ed72d02  ./croc/croc_amd_x86_64_NetBSD
c6f06a070fd75d8f5e4da40172e8d9bcdc3ba3e6c49e57364c147fa6e64c8eb4  ./croc/croc_amd_x86_64_OpenBSD
329c9154300715fdb6b8d793d54aebf8dad77bc95d69491d7ac1b7b93d4f1958  ./croc/croc_amd_x86_64_Windows.exe
289269f0b311b412d6a2ead882495259aa29a5a5476628fc96a7981bc0f3c30c  ./croc/croc_amd_x86_FreeBSD
eb09ca4f73c6095f3306c06b3b09015df3b69e71bf673c6a35e332cb2d46b132  ./croc/croc_amd_x86_Linux
18fb40b4e8df0f2742743b0902f6851d0fb3b506ada475ee336b9d6d03a75b6b  ./croc/croc_amd_x86_NetBSD
4ab81016511038ffc8b615b935f3732c9774a0f7ef73565a77ce9f37b3eb6f1f  ./croc/croc_amd_x86_OpenBSD
97c0ccd5a049c2d48da6d54dede30d7a8d732ad005c5c1e4249efdda1c00be36  ./croc/croc_amd_x86_Windows.exe
ad37180df4ad8f240db0eddf20c10157c346c674ac5e6c4c21f287782657d6fc  ./croc/croc_arm_Windows.exe
6b758e107b7c10f061cfc9ee43ae3b35aa0c1e32991bbdf11a0a9d5c646ab480  ./croc/croc_arm_abi_NetBSD
9c60f4901ef9812d65f5e8ef34b2d38d057f3101cb442cba6b56168a8557126c  ./croc/croc_arm_abi_OpenBSD
1255d094e2f98d2c29471166b0a32bb94f12446fae8cc76e8e8bd3517fbf10d0  ./croc/croc_loong64_Linux
1180861ef5b1147a636af942e6db282bb2a5e588558509dfff969822b186f2b4  ./croc/croc_mips64_Linux
f1b6eac83292cba831c781c0a742c13dcb040ca18695677dd1d05734f9d62007  ./croc/croc_mips64le_Linux
1c01acc341614a6ac1bfbeecc2010366109f6f97cca384067a37510a5550e897  ./croc/croc_mips_Linux
b1ac0e2598143800a64a070656190d364f54c9d597adbe0f65b5fd3a3197b56e  ./croc/croc_mipsle_Linux
f67f38df1b28101586867948dd4890503530a24c9b7cb8d4db73bb9245785e45  ./croc/croc_powerpc64_ppc64_Linux
cddaa2b910de1c05c8a22ce61103f85bbf6b34c0b9f31b2c64405da98bf94490  ./croc/croc_powerpc64le_ppc64le_Linux
e01d983de2bec474893afae49d964dfe57d55ead04c5dcb0740c534b49121638  ./croc/croc_riscv64_Linux
f5df19eba9c916feb95fb1030356c77f5b0fcfe74bd84e5b527b0a453a802472  ./croc/croc_s390x_Linux
d73b4abfc5c369230aaeb37eb78dd5abd76f4931cb7e50daa625e877fac7a11f  ./croc/croc_x86_64_macOS
```


---

- #### Sizes

```console
7.2M  ./croc/croc_386_Linux
7.3M  ./croc/croc_aarch64_arm64_FreeBSD
7.2M  ./croc/croc_aarch64_arm64_Linux
7.3M  ./croc/croc_aarch64_arm64_OpenBSD
7.4M  ./croc/croc_aarch64_arm64_Windows.exe
8.1M  ./croc/croc_aarch64_arm64_macOS
7.7M  ./croc/croc_amd_x86_64_DragonFlyBSD
7.7M  ./croc/croc_amd_x86_64_FreeBSD
7.7M  ./croc/croc_amd_x86_64_Linux
7.7M  ./croc/croc_amd_x86_64_NetBSD
7.7M  ./croc/croc_amd_x86_64_OpenBSD
7.8M  ./croc/croc_amd_x86_64_Windows.exe
7.1M  ./croc/croc_amd_x86_FreeBSD
7.2M  ./croc/croc_amd_x86_Linux
7.1M  ./croc/croc_amd_x86_NetBSD
7.1M  ./croc/croc_amd_x86_OpenBSD
7.4M  ./croc/croc_amd_x86_Windows.exe
7.4M  ./croc/croc_arm_Windows.exe
7.2M  ./croc/croc_arm_abi_NetBSD
7.3M  ./croc/croc_arm_abi_OpenBSD
7.5M  ./croc/croc_loong64_Linux
8.4M  ./croc/croc_mips64_Linux
8.4M  ./croc/croc_mips64le_Linux
8.1M  ./croc/croc_mips_Linux
8.1M  ./croc/croc_mipsle_Linux
7.4M  ./croc/croc_powerpc64_ppc64_Linux
7.4M  ./croc/croc_powerpc64le_ppc64le_Linux
7.4M  ./croc/croc_riscv64_Linux
8.0M  ./croc/croc_s390x_Linux
8.3M  ./croc/croc_x86_64_macOS
```

---

- #### Version
```console

$ ./croc/croc_amd_x86_64_Linux --version
croc version v9.6.5-8ab65d0

$ ./croc/croc_amd_x86_64_Linux -h
NAME:
   croc - easily and securely transfer stuff from one computer to another

USAGE:
   Send a file:
      croc send file.txt

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
   v9.6.5-8ab65d0

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

