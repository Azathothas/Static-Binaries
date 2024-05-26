
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
./croc/croc_386_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./croc/croc_aarch64_arm64_FreeBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=RhwjIC5MF_6qGlUU44Nk/ZBWtOluREm7rY3xUPlDE/mXJ_V66zTaikch_N4TKC/e8aBocdGQ4fANagGO5xd, with debug_info, not stripped
./croc/croc_aarch64_arm64_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=BXLrD5JdRTuGlMcu_4vv/BeZypl2y86k2bQHuhDKh/OVbLa_b7yrnJ98wN0cb2/pG-xKZ8FzRScumrGb8sU, with debug_info, not stripped
./croc/croc_aarch64_arm64_OpenBSD:     ELF 64-bit LSB executable, ARM aarch64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=O5Tr01djkNwjiO-KvQb9/SC-6gaj60HAGMdZnKILC/gw_esM2EwYswq6YB1zUT/a42JVIQYe8QGFKw9rXoI, with debug_info, not stripped
./croc/croc_aarch64_arm64_Windows.exe: PE32+ executable (console) Aarch64, for MS Windows
./croc/croc_aarch64_arm64_macOS:       Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./croc/croc_amd_x86_64_DragonFlyBSD:   ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=nVo6_Lz1J7kwOgViz6AY/5F2IviBQqFpiL2K66yKz/VbS2G6TqagQrdQDwItJw/Vop7DqhbNz9ETfqymGfh, stripped
./croc/croc_amd_x86_64_FreeBSD:        ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=L5tg8jSDdbFjeQ63kMXx/8btWJvytH2-HCy-wUt8b/on8Sa6jGLxvqBPeoqLlR/hMViQtMP_WIqFwgZBIrK, stripped
./croc/croc_amd_x86_64_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=_gCkO2LJLFKBZDTULXO6/1e_PpSHYpLgd-UnKKV3u/Ng8dGjBGZ__vA5qJfc4S/vQQCKbk_rKtT6MsWcdC1, stripped
./croc/croc_amd_x86_64_NetBSD:         ELF 64-bit LSB executable, x86-64, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=M-77edbm0GC2I6vupvuz/ftzuUP_MbpB9fO1D8tYQ/-Ongf1VATwTXg4a7MUEs/lXa242-zMG6V4Cmkl40I, stripped
./croc/croc_amd_x86_64_OpenBSD:        ELF 64-bit LSB executable, x86-64, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=nvJqUmE-utb99jq-N5ZH/RboJWQkfApBQP3cTrZ23/20a4qsuGxbKxWk_VRnA7/kFimWaBbbrr_Xi1RZa2L, stripped
./croc/croc_amd_x86_64_Windows.exe:    PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./croc/croc_amd_x86_FreeBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=pzNrEUJBJW2rS8WbBo1i/efB3Y9OPU_FNUsEveobp/eHFP7W8to9BzwgUQ0dYW/9Bo7qlkEzoieE5kfcHL3, stripped
./croc/croc_amd_x86_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=9TZmZGtfv4cJM169tzgW/Yd5UPeub5C2bBCYQWqe4/A4dV4K5HefptrgBqrTgf/QdrgOvsEgKxfybTOn73q, stripped
./croc/croc_amd_x86_NetBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=xSAwmrk1F7haDjFw_eS-/6jiuxgD_vNomqoT9YMFN/HvC5l9__tamI18mMZkxS/KZCWP_oqCWUkvl0N6N3h, stripped
./croc/croc_amd_x86_OpenBSD:           ELF 32-bit LSB executable, Intel 80386, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=QJxeN-dGsKofnMKOHiqI/-nycADcw5xsi0Hxak8HL/DuUbViwnVIXgJHYxTg-F/NnSTXqNJaWdfOy8QkASY, stripped
./croc/croc_amd_x86_Windows.exe:       PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./croc/croc_arm_Windows.exe:           PE32 executable (console) ARMv7 Thumb, for MS Windows
./croc/croc_arm_abi_NetBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (NetBSD), statically linked, for NetBSD 7.0, Go BuildID=8uSMKwcUg1iN7BfQ7wYN/hwB71Wn3g4HL1_ZEyTkC/u3lfuo7obGubolbbz-Zc/SWAXosYtZD8AfdJ-u9b_, stripped
./croc/croc_arm_abi_OpenBSD:           ELF 32-bit LSB executable, ARM, version 1 (OpenBSD), dynamically linked, interpreter /usr/libexec/ld.so, for OpenBSD, Go BuildID=KEk2TdQLPEAlnn114S38/p1hVwSb4OB8mvl4t8V8s/I7pHswwhjFgaHMUbyvpF/sfMTszszjzGjmte8nIul, stripped
./croc/croc_loong64_Linux:             ELF 64-bit LSB executable, LoongArch, version 1 (SYSV), statically linked, stripped
./croc/croc_mips64_Linux:              ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./croc/croc_mips64le_Linux:            ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./croc/croc_mips_Linux:                ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./croc/croc_mipsle_Linux:              ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./croc/croc_powerpc64_ppc64_Linux:     ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, stripped
./croc/croc_powerpc64le_ppc64le_Linux: ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./croc/croc_riscv64_Linux:             ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, stripped
./croc/croc_s390x_Linux:               ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./croc/croc_x86_64_macOS:              Mach-O 64-bit x86_64 executable

--> SHA256SUM
4ea7526b51f5f8492c2a46b72ec9f3d3754f55aef329216f93c1e809fecbd15a  ./croc/croc_386_Linux
bf6b1b3f73db2efe4d90864b6f0fe15333b84c07ff04a31add692fe0c2841fc0  ./croc/croc_aarch64_arm64_FreeBSD
5343b6123e4217fde7a9bf7ba1f8303c581f0d319f13c60eb23089f0d62da9dd  ./croc/croc_aarch64_arm64_Linux
171a453e7363071f2aaf76a6eb0f2f5e14762cf15e2638e7af3477e1b8b8412a  ./croc/croc_aarch64_arm64_OpenBSD
9621a047acf65308d84b0a8acc06294cd4b51d959b2988f88ece7e2a03f6e5e8  ./croc/croc_aarch64_arm64_Windows.exe
3cad2905cc7274afc9c7834044c5a87554ca0f7feb701d82d2de0499cb01c673  ./croc/croc_aarch64_arm64_macOS
c3c76dd0715352f2ea335c3900d00d1c749d286fd0deab51bd19d31b0b920850  ./croc/croc_amd_x86_64_DragonFlyBSD
4d4556e5fda27f841a592cb6761b69ed6b5766f8e654b10b2452e93fe246e035  ./croc/croc_amd_x86_64_FreeBSD
fb05eded5a619a754c3480eecaa89e91a7fea285971f8b97bc3fd56665cd4698  ./croc/croc_amd_x86_64_Linux
e32af31fcd6c49b9c554764fb39c213bf854451e808aacc7e1be241a13e8cee5  ./croc/croc_amd_x86_64_NetBSD
403e4fb0260e273509a0afcb151c0b76c94c173ccad83efe3d253c8b2060f93c  ./croc/croc_amd_x86_64_OpenBSD
428c5eb5e7d151b29684cafee5ca65e0e5c95cbf030007d5891d1c8761ed0428  ./croc/croc_amd_x86_64_Windows.exe
7ff1b6c223ed59e440118debc349e65254d507e82865377f3e2904184258b08e  ./croc/croc_amd_x86_FreeBSD
dff04c532c7728b240224207a79f0518baf42120670060381fadad4702d1ae6e  ./croc/croc_amd_x86_Linux
78d68e8a11cc748cbae8a5c559f6d01579bba55848ac274e153711cfa594b314  ./croc/croc_amd_x86_NetBSD
9964c8ee5e7abcce36d282ccadeae66e1f2244bcff4befdb2b2bf9f974da957d  ./croc/croc_amd_x86_OpenBSD
d420de580def50206d73d9e14326a847a9e04f9b442f3993bac0e7135974f378  ./croc/croc_amd_x86_Windows.exe
55c5a336742dbb2b77b3cf0d115e8e735b326b61f616b7dcea8de4b0a8356cd3  ./croc/croc_arm_Windows.exe
2419b6a55fc015b0548bc9ce29c849bb9baf346889d459f463ac0dbe8575a48f  ./croc/croc_arm_abi_NetBSD
b6f4ae2184afec08f332e4bae80293eac0f9004b25e0bac46639e66a713b3cb2  ./croc/croc_arm_abi_OpenBSD
246bf0d75f25ae8215fa3677d2e967dd72f4d17f3c42258ee8a583eb40c37261  ./croc/croc_loong64_Linux
6cca3cf39d6c6143e81c6df5e7f2b7b0de4b0f8b385fbeb89fe501796d7682e1  ./croc/croc_mips64_Linux
e208638e56523972695a00928a8d25193e097374915d3e589842e4ed6055c96c  ./croc/croc_mips64le_Linux
f2b943422abe046fa5c41e6422586e91971d274b8b4b8377783312440fbe4e0c  ./croc/croc_mips_Linux
d8110635cea40f6fdd4110b6fdc7214dbecb65ff0bdeddb88d93cbe7379292b2  ./croc/croc_mipsle_Linux
019b37891d4472d4e0d8aa4532281ffa23f0bb483fc856431e3321dda391d8d7  ./croc/croc_powerpc64_ppc64_Linux
36b64a782a29919a21ccc3325bfdfe2178ae4e1cf173e69a09a416bfa6109fbc  ./croc/croc_powerpc64le_ppc64le_Linux
7de48706319c1f268915327a43cee816961d3b2e2b128778e72f3327d885997d  ./croc/croc_riscv64_Linux
1f47a72f893f6182a32015efa6cf739a46072c04b33bff8e76e2c5f32c89eefc  ./croc/croc_s390x_Linux
1e5a4c64a36fd492fdd868512d5dcfde349a856b9f13b47cb3021899678690d2  ./croc/croc_x86_64_macOS
```


---

- #### Sizes

```console
7.2M  ./croc/croc_386_Linux
11M   ./croc/croc_aarch64_arm64_FreeBSD
11M   ./croc/croc_aarch64_arm64_Linux
11M   ./croc/croc_aarch64_arm64_OpenBSD
11M   ./croc/croc_aarch64_arm64_Windows.exe
11M   ./croc/croc_aarch64_arm64_macOS
7.5M  ./croc/croc_amd_x86_64_DragonFlyBSD
7.5M  ./croc/croc_amd_x86_64_FreeBSD
7.5M  ./croc/croc_amd_x86_64_Linux
7.5M  ./croc/croc_amd_x86_64_NetBSD
7.6M  ./croc/croc_amd_x86_64_OpenBSD
8.3M  ./croc/croc_amd_x86_64_Windows.exe
7.1M  ./croc/croc_amd_x86_FreeBSD
7.2M  ./croc/croc_amd_x86_Linux
7.1M  ./croc/croc_amd_x86_NetBSD
7.1M  ./croc/croc_amd_x86_OpenBSD
7.9M  ./croc/croc_amd_x86_Windows.exe
11M   ./croc/croc_arm_Windows.exe
7.2M  ./croc/croc_arm_abi_NetBSD
7.2M  ./croc/croc_arm_abi_OpenBSD
7.5M  ./croc/croc_loong64_Linux
8.3M  ./croc/croc_mips64_Linux
8.3M  ./croc/croc_mips64le_Linux
8.1M  ./croc/croc_mips_Linux
8.1M  ./croc/croc_mipsle_Linux
7.3M  ./croc/croc_powerpc64_ppc64_Linux
7.4M  ./croc/croc_powerpc64le_ppc64le_Linux
7.4M  ./croc/croc_riscv64_Linux
8.0M  ./croc/croc_s390x_Linux
11M   ./croc/croc_x86_64_macOS
```

---

- #### Version
```console

$ ./croc/croc_amd_x86_64_Linux --version
croc version v10.0.5

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
   v10.0.5

COMMANDS:
   send     send file(s), or folder (see options with croc send -h)
   relay    start your own relay (optional)
   help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --internal-dns          use a built-in DNS stub resolver rather than the host operating system (default: false)
   --classic               toggle between the classic mode (insecure due to local attack vector) and new mode (secure) (default: false)
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
   --relay value           address of the relay (default: "5.78.91.237:9009") [$CROC_RELAY]
   --relay6 value          ipv6 address of the relay (default: "[2a01:4ff:1f0:c10b::1]:9009") [$CROC_RELAY6]
   --out value             specify an output folder to receive the file (default: ".")
   --pass value            password for the relay (default: "pass123") [$CROC_PASS]
   --socks5 value          add a socks5 proxy [$SOCKS5_PROXY]
   --connect value         add a http proxy [$HTTP_PROXY]
   --throttleUpload value  Throttle the upload speed e.g. 500k
   --help, -h              show help (default: false)
   --version, -v           print the version (default: false)


```

---

