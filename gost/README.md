
---
- #### Download [gost](https://github.com/ginuerzh/gost)
> - **Sources**
> > ```bash
> > --> FreeBSD || Linux || macOS || Windows:
> >      - https://github.com/ginuerzh/gost/releases
> > ```
> >
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

!# FreeBSD
--> 386 || Amd x86|| x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_386_FreeBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_FreeBSD"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_Linux"
--> Amd x86 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_Linux"
--> ARMv5 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv5_Linux"
--> ARMv6 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv6_Linux"
--> ARMv7 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_armv7_Linux"
--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_i386_Linux"
--> MIPS (Hard Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips_hardfloat_Linux"
--> MIPS (Soft Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips_softfloat_Linux"
--> MIPSel (Hard Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mipsle_hardfloat_Linux"
--> MIPSel (Soft Float) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mipsle_softfloat_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips64_Linux"
--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_mips64le_Linux"
--> riscv64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_riscv64_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_s390x_Linux"

!# macOS
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_x86_64_macOS"

#Windows
--> aarch64 || arm64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_aarch64_arm64_Windows.exe"
--> Amd_x86 || x86 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_Windows.exe"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_Windows.exe"

```
---
- #### Install gost
```bash
!# Recommended way to install gost is:
!# Install Go
 bash <(curl -qfsSL "https://git.io/go-installer") ; export PATH="$HOME/.go/bin:$HOME/go/bin:$PATH"
!# With ROOT
 cd $(mktemp -d) && git clone https://github.com/ginuerzh/gost.git && cd ./gost/cmd/gost && "$HOME/.go/bin/go" build ; sudo mv "./gost" "/usr/local/bin/gost"
!# Or with no root
 cd $(mktemp -d) && git clone https://github.com/ginuerzh/gost.git && cd ./gost/cmd/gost && "$HOME/.go/bin/go" build -v ; mkdir -p "$HOME/go/bin" ;mv ./gost "$HOME/go/bin/"

!# Copy downloaded gost binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded gost binaries to that DIR
 mv "$Path_To_gost_Binary" "/usr/bin/gost"

!# Give Writeable Perms
 chmod +xwr /usr/bin/gost*
```

---
```console

--> METATDATA
./gost/gost_386_FreeBSD:               ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, Go BuildID=mb1UdGeezD7DLm26ZoI6/k5yriCs9NSnkFclyF7pD/AYDlJpp4kyI_tEDyW49J/cZtRWZJYB7HvJbgCvBZc, stripped
./gost/gost_aarch64_arm64_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=OVmBQl7Gp37Wjg7ZI_qx/g0eYkNTCnwuM5xLli1Kk/Eg-FeyzgT1hpmZFPausQ/FigF6hru-9SsYb6NVoAG, stripped
./gost/gost_aarch64_arm64_Windows.exe: PE32+ executable (console) Aarch64 (stripped to external PDB), for MS Windows
./gost/gost_aarch64_arm64_macOS:       Mach-O 64-bit arm64 executable, flags:<|DYLDLINK|PIE>
./gost/gost_amd_x86_64_FreeBSD:        ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, Go BuildID=zQ9sq0Sj2bRGKsptMS37/aRgqHF4LAlHqog8hwvQC/n-ShzisrSOIYbuKDIz9A/80bYOgSqJGFlbuilrZag, stripped
./gost/gost_amd_x86_64_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=INBPTVJ-SjJiWaxqKygl/sRufGGywXMD00Ao-TLnz/-vpw8TIHtDMQcEQ3efx7/nnR6q4ictV0EEY4aR_4h, stripped
./gost/gost_amd_x86_64_Windows.exe:    PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./gost/gost_amd_x86_Windows.exe:       PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./gost/gost_armv5_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=IRr5PKanx71JGowb9F88/lC2f4iY3sU4MGztNK7oQ/IILhTct7ddoXk5wnUtN4/uawI3lzoD56ntlCmroqY, stripped
./gost/gost_armv6_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=hUaLZzgW7EQ-fZuegjLn/Eia0EtllY8rb6H32Jqwr/XtfnjzwgYm-D4IKfEg1c/nw_Zo9qgmtB5YAYmQlM8, stripped
./gost/gost_armv7_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=0JDBSzv-BaYuN0jGwiDI/BKzOBQY9ji72HCVIAYtO/XtfnjzwgYm-D4IKfEg1c/shvB6ctED6_o11cL9x-C, stripped
./gost/gost_i386_Linux:                ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=TlKnD0LcDktZqJxxA28L/OwQHqFU9tp_ae0EQjBmB/msl0Tov2LjXakQAQ4I7N/LMj5TwA0hdF7vFvbU-Z2, stripped
./gost/gost_mips64_Linux:              ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=vF9Kl7TUifLofm0MJDvR/HtOd9T-N75KGCr9latqn/QSJAK_Ub0RMcWA0-GYHu/Qx6aGbVqg3YQv0x3Jjrg, stripped
./gost/gost_mips64le_Linux:            ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=7SfsXJlpkxbdp5G9c-Eu/qdoQQ5Lyg_1sT1vnNeWp/4nBvCaoYJQKbg8Y9L_ep/CMcTWzKwjhZ0U6oUGBwN, stripped
./gost/gost_mips_hardfloat_Linux:      ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=2M2CAvxG1Spx4soFNnny/GkjhViYlVXSyOGICy7Gq/ssmntiWmnHMUFj7WDWF8/Q0QVbJmOJq71WEEmILj4, stripped
./gost/gost_mips_softfloat_Linux:      ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=uMO0C6brWZb34Fm25QP1/lGIAdwqm_2j7Ckz0M-WU/ssmntiWmnHMUFj7WDWF8/leIdW6xa103YDtQBSUBu, stripped
./gost/gost_mipsle_hardfloat_Linux:    ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=NMSiOWgn5GbJYxbBYn9d/B5PN-lfggVJOLzuFZrDi/Z0EwZKxc7GgbtyMPE-q7/anWA2Hjqle5XeiyU_B4u, stripped
./gost/gost_mipsle_softfloat_Linux:    ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=CtDwkoUGAM6AipFARN5m/Iw2ePHB_8vmP0M-nj-ol/Z0EwZKxc7GgbtyMPE-q7/vtl62oybR9G2Cd6TKN9o, stripped
./gost/gost_riscv64_Linux:             ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=vnC_rp3VbCyZWmNy08ps/opJXtLHyJcsnJ3jDMeFp/oiyj3LLdKO06Ql0fexgL/Wt-YTOoThsF0Mi79vBsP, stripped
./gost/gost_s390x_Linux:               ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=pRS7lWUQmm2sXOQ2pg1z/nj3ILssGKVHjWx2duxjn/fASL3M15eXm-Xigp00rD/IMGW-DCzMRE1JlkdJ1Y7, stripped
./gost/gost_x86_64_macOS:              Mach-O 64-bit x86_64 executable

--> SHA256SUM
503dd424eedd6dab27975d9d3861697c93a9fa8a07cea359eeda963be9554690  ./gost/gost_386_FreeBSD
62ba351055dda0aaa685ba20549d334d5a7af84b2809f6e5da7ae2ae443dae42  ./gost/gost_aarch64_arm64_Linux
5eb3c5e057a4db31bfdb1d50ea932cc742ac7078a0a0d55fd72f7f4012d07510  ./gost/gost_aarch64_arm64_Windows.exe
432b7aa977b231602b8d58e1f089a41fe543a1e4095e7e40e450fc088ba1c7ac  ./gost/gost_aarch64_arm64_macOS
4475a191abe9b2b203d5a0f6b5fcb025c0492b7c041d1b1450cad6e290feecac  ./gost/gost_amd_x86_64_FreeBSD
54247cfd5ca164811805063bdf36fbc48301117ff874f4a06cda4ba55bd6cd43  ./gost/gost_amd_x86_64_Linux
f177fe31821dd761ce44ae482a8b98ea2c60ea3750a1e7ebe0775c976c0deb53  ./gost/gost_amd_x86_64_Windows.exe
bbf10a9b7cbe10d1cce9a6e98f1357c5ede86b72b717486cc79f954fc1f607bf  ./gost/gost_amd_x86_Windows.exe
b790cc77521e960e6aee601bab3ec25dc0123a0a77dd758e8e0084cb12cc6e63  ./gost/gost_armv5_Linux
5bd39fa7e09ce32efefb5ec9c5bf7f74774a571b28a4b95dc8bfa23caf416bfc  ./gost/gost_armv6_Linux
0b4ba7641d01e1e6a002bf455d73730b16cbd13cd8edd1891d67e6179b056ff9  ./gost/gost_armv7_Linux
e6dca44fae74b32910115057f137cef336e0070727dc5aa6cc6f20b64b717935  ./gost/gost_i386_Linux
b562c0eb7960100dadcd6219ee1113ad087c9732f4cb1f79cd2a628688b871db  ./gost/gost_mips64_Linux
6e6c103e9f7bb2c12992a18217e5eaf81ccda537e23a65f54e994f9b035a8786  ./gost/gost_mips64le_Linux
aa0086e21bc61d999da37f664f45327479627bcaebdf93f44a3e3bfb34f55207  ./gost/gost_mips_hardfloat_Linux
268896950df9e34ec8825518361253eadcd5787119b2c58b3c9d101d391a33f6  ./gost/gost_mips_softfloat_Linux
cf9bdf217283f81b28faf41c8813cad194226f90b3353a88934e0d716a68b227  ./gost/gost_mipsle_hardfloat_Linux
951d9841dddeabe272e7923d6fb7a255ba913aba4cf2b490e541ba11db9f8212  ./gost/gost_mipsle_softfloat_Linux
32666793f44ee6e44c9eadbff8e21925c18a9a50439699ab52fc3202727058bc  ./gost/gost_riscv64_Linux
6ad9fd936b10d98eba781e943d25ae9c778a50578aed0167989488c0d3fde04d  ./gost/gost_s390x_Linux
fb48ff201cfbf0303291f248ea95976879354685e754cdaa87879db55f9c6a82  ./gost/gost_x86_64_macOS
```


---

- #### Sizes

```console
11M  ./gost/gost_386_FreeBSD
13M  ./gost/gost_aarch64_arm64_Linux
11M  ./gost/gost_aarch64_arm64_Windows.exe
12M  ./gost/gost_aarch64_arm64_macOS
12M  ./gost/gost_amd_x86_64_FreeBSD
13M  ./gost/gost_amd_x86_64_Linux
12M  ./gost/gost_amd_x86_64_Windows.exe
12M  ./gost/gost_amd_x86_Windows.exe
12M  ./gost/gost_armv5_Linux
12M  ./gost/gost_armv6_Linux
12M  ./gost/gost_armv7_Linux
12M  ./gost/gost_i386_Linux
14M  ./gost/gost_mips64_Linux
14M  ./gost/gost_mips64le_Linux
14M  ./gost/gost_mips_hardfloat_Linux
14M  ./gost/gost_mips_softfloat_Linux
14M  ./gost/gost_mipsle_hardfloat_Linux
14M  ./gost/gost_mipsle_softfloat_Linux
13M  ./gost/gost_riscv64_Linux
14M  ./gost/gost_s390x_Linux
13M  ./gost/gost_x86_64_macOS
```

---

- #### Version
```console

$ ./gost/gost_amd_x86_64_Linux -V
gost 2.11.5 (go1.19.2 linux/amd64)

$ ./gost/gost_amd_x86_64_Linux -h
Usage of ./gost/gost_amd_x86_64_Linux:
  -C string
    	configure file
  -D	enable debug log
  -F value
    	forward address, can make a forward chain
  -I string
    	Interface to bind
  -L value
    	listen address, can listen on multiple ports (required)
  -M int
    	Specify out connection mark
  -V	print version
  -obfs4-distBias
    	Enable obfs4 using ScrambleSuit style table generation


```

---

