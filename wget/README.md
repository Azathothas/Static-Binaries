
---
- #### Download wget
> - **Sources**
> > ```bash
> > --> Linux:
> >      - Extracted from wget_busybox (Built & Compiled from source : 'https://git.wget_busybox.net/wget_busybox/')
> >        - GCC (Natively using Cross Toolchains)
> >        - MUSL
> >           - 'https://hub.docker.com/r/abcfy2/muslcc-toolchain-ubuntu'
> >           - 'https://hub.docker.com/r/blackdex/musl-toolchain'
> > --> Windows:
> >       - https://github.com/lifenjoiner/wget-for-windows
> > ```
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
!# For '.base64', simply append it at the end of the url
!# --> curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux"
!# --> curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux.base64"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_wget_busybox_aarch64_arm64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_aarch64_arm64_musl_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_64_musl_Linux"
--> ARM_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abi_musl_Linux"
--> ARM_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abihf_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_arm_abihf_musl_Linux"
--> ARMv7_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abi_musl_Linux"
--> ARMv7l_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_armv7_abihf_musl_Linux"
--> i586 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_i586_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_i586_musl_Linux"
--> i686 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_amd_x86_i686_gcc_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips_musl_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mipsel_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mipsel_musl_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64_musl_Linux"
--> MIPS64el || MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64el_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_mips64el_musl_Linux"
--> powerpc || ppc || cisco 4500 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox/wget_busybox_powerpc_musl_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox/wget_busybox_powerpc64_musl_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64le_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_powerpc64le_musl_Linux"
--> riscv32 || CB RISC-V || RVC [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv32_gcc_Linux"
--> riscv64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_riscv64_musl_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_s390x_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_busybox_s390x_musl_Linux"


!# Windows
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_WinTLS_lite_Windows.exe" 
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_WinTLS_lite_Windows.exe" -OutFile "wget_wintls.exe"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_x64_lite_Windows.exe"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_x64_lite_Windows.exe" -OutFile "wget.exe"
--> Amd x86_64 || x86_64 [32-bit] 
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_lite_Windows.exe"
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/wget/wget_amd_x86_lite_Windows.exe" -OutFile "wget.exe"

```
---
- #### Install wget
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded wget_busybox binary to that DIR
 mv "$Path_To_wget_busybox_Binary" "$HOME/bin/wget_busybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/wget_busybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything
 cd "$HOME/bin" && "$HOME/bin/wget_busybox" --install -s .
```
****

---
```console

--> METADATA
./wget/wget_amd_x86_WinTLS_lite_Windows.exe:         PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_lite_Windows.exe:                PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./wget/wget_amd_x86_x64_lite_Windows.exe:            PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./wget/wget_busybox_aarch64_arm64_gcc_Linux:         ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=077a1fa5d45fdb1a7c0b395252ded35072747fda, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch64_arm64_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_amd_x86_64_gcc_Linux:            ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=8448703dde635734b0035f7cb39f117fba575d26, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_abi_gcc_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=a54360954eed0de6c3c171da6adf7f6c4867733a, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_abi_musl_Linux:              ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_abihf_gcc_Linux:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=c29c28aa98517370d49832566e1e80a185b13330, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_abihf_musl_Linux:            ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_armv7l_abihf_musl_Linux:         ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_i686_x86_gcc_Linux:              ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a7628447f85f23daa3bf516ec2eca379bf41810d, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_gcc_Linux:                  ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=0731ab1968d7ee97378235d5895a6b6a28ed28bf, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_linux_musl_Linux:           ELF 32-bit MSB pie executable, Motorola m68k, 68020, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips64_gcc_Linux:                ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=7723f179e7e3ece0abf9c28b4040460310c804b0, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_musl_Linux:               ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips64el_gcc_Linux:              ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=8d3ad1b506bc62b592545278f1c1f6e9ebdea0e9, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_musl_Linux:             ELF 64-bit LSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips_gcc_Linux:                  ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=c3a4770a5b6e15be45745a6896658d6798c1181d, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_musl_Linux:                 ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mipsel_gcc_Linux:                ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=33e063f507b6cb2f66f14807cf2f6b68a478d04e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc64_gcc_Linux:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=89e45fa6c97b86f3ed7c32e61774c60cea4518ad, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_musl_Linux:            ELF 64-bit MSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc64le_gcc_Linux:           ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=457a8b0cc81295b86fc26bfedf77d2397ec00b0b, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_musl_Linux:          ELF 64-bit LSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc_gcc_Linux:               ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=4f0442412a8d1b9aba7b548af19853a6f03db100, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_musl_Linux:              ELF 32-bit MSB pie executable, PowerPC or cisco 4500, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_riscv32_gcc_Linux:               ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv64_gcc_Linux:               ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=f5509a0ef2b3ab5103335c434865514ce0a068a1, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_musl_Linux:              ELF 64-bit LSB pie executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_s390x_gcc_Linux:                 ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=b6db9c456282f56aacde5c3f0160c90edcdb36db, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_musl_Linux:                ELF 64-bit MSB pie executable, IBM S/390, version 1 (SYSV), static-pie linked, stripped

--> SHA256SUM
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
767d1d56ba2906c6a0ef4e87faab483ea933353997085e885b2fb3c8c3fda4f9  ./wget/wget_busybox_aarch64_arm64_gcc_Linux
2736f5dbaab743d22c718421b9880f6edd3f031d19404dfb2c93af14dc16687f  ./wget/wget_busybox_aarch64_arm64_musl_Linux
3caae830f06991b3d45bb0be5219a2cd7fa969676fe80d72574f4a5fc12d64d3  ./wget/wget_busybox_amd_x86_64_gcc_Linux
0003c78e95c2bda65ab2b29f19a446a876278206172cb8836c8b077bf8480ee1  ./wget/wget_busybox_amd_x86_64_musl_Linux
51e2afccf3ee71c37d5e379b65c3784b1429ca94ec8f8292887916d9a2d9d2f4  ./wget/wget_busybox_arm_abi_gcc_Linux
d88ef3c623e0c822c1e460ff7c7896ecc6cb5253b25f8f638a224b913ad2fc97  ./wget/wget_busybox_arm_abi_musl_Linux
87ada39c8649e683890ce21acdfde6b6c99cdb8c15b239213a5e74ebc2e81bec  ./wget/wget_busybox_arm_abihf_gcc_Linux
1cb2103bfc495c9a90070fca97b0845d690b4b67fe63f1f6bdd1cc719965521a  ./wget/wget_busybox_arm_abihf_musl_Linux
ec215780dc74381fd5464d11b1e8efe9736f332acb237706c90720b4baa641ca  ./wget/wget_busybox_armv7l_abihf_musl_Linux
cd17c6df8b070c969d58823481d03a5ecf9b7c6c4af0d55a1deca87f465b9113  ./wget/wget_busybox_i686_x86_gcc_Linux
01ea6a5e373b1218fd53dc9661f2e50f759ab2a61bc76a98537510cd6466fd01  ./wget/wget_busybox_m68k_gcc_Linux
ad9001906efdedcc6a1598db626d3f767e0dcae2cbd4f409cee03d2445946c47  ./wget/wget_busybox_m68k_linux_musl_Linux
67afb41e3bd9de80221fea74a38b8c88f59f43ea7a9331516e6d7cf2d7e2cd92  ./wget/wget_busybox_mips64_gcc_Linux
18999e407391e0149b636eac144ca90c87a7683fc253c373bfef6f6ce881237f  ./wget/wget_busybox_mips64_musl_Linux
c79bb974962ba59a5be7e591a408d01fd11521d622d50e904176c7bf2f48adfb  ./wget/wget_busybox_mips64el_gcc_Linux
b26520642add09e2756c44bdfa4ea3cda21ead9664ab1b821c34d1d95ffab61b  ./wget/wget_busybox_mips64el_musl_Linux
7a9c3ca5e4b5d3257246207e7d8b864b3383d1731379c119d1ee4c471276397a  ./wget/wget_busybox_mips_gcc_Linux
3157eab39961936a5ea59766b9f3021e3197f1a879600bb1fcc7456a8635e3c9  ./wget/wget_busybox_mips_musl_Linux
94e2c1b0c0c5ceaf9f88de3b1fa66110e2ee6c677d3110263706560f7ca59e87  ./wget/wget_busybox_mipsel_gcc_Linux
eeaf24e21bc20283c52473d406f5027326e5af9d6cca0d13fa0c53aabae60b7e  ./wget/wget_busybox_mipsel_musl_Linux
35adb6a18e98f0c731c1ff81f917851d6b44420734116ffc9598f65318586fce  ./wget/wget_busybox_powerpc64_gcc_Linux
7016c88b830d235f43a0707ab99a1fbb433ff30639ec3c18d0fed5f40d66cf66  ./wget/wget_busybox_powerpc64_musl_Linux
9ed401e30fccb3aba953e575804c5f9051972ca89b662a3b07afe8785ecf91fc  ./wget/wget_busybox_powerpc64le_gcc_Linux
cc8d45195af1f35ec58c34ad00c1ea1fe4f390f1c108687497e7a9123a3db9db  ./wget/wget_busybox_powerpc64le_musl_Linux
1d4dd7a521a76c291378ccfe80e8bea9e12c915c12bdeb608fd455bb7c9795c6  ./wget/wget_busybox_powerpc_gcc_Linux
f1b5720c6075d629b755bb5e6ea9123a94f5f103931fdbdadfd0224f2c60285a  ./wget/wget_busybox_powerpc_musl_Linux
d71eceb797685853d62e05de79d79fbe93ffcbb5f320470003a04b4853bea3a3  ./wget/wget_busybox_riscv32_gcc_Linux
8cbcfbdbe61934219bf74c5c0d04fcd777044842f9f23a0ccb79930418a0e2f5  ./wget/wget_busybox_riscv64_gcc_Linux
0c4dd2c216b1cd362df56bdd6d5eb6b00642f56fe54cf9f97884a4d94b5296e0  ./wget/wget_busybox_riscv64_musl_Linux
a7f0349a58f5a91d15f3cdf2937f78517c6965841a7b65ea8f3979802caae38a  ./wget/wget_busybox_s390x_gcc_Linux
21ca7b0b5eb93d6701c0f42a8f2fa83653d4029c53c7d4505f2327b289422a4b  ./wget/wget_busybox_s390x_musl_Linux
```


---

- #### Sizes

```console
535K  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
653K  ./wget/wget_amd_x86_lite_Windows.exe
612K  ./wget/wget_amd_x86_x64_lite_Windows.exe
875K  ./wget/wget_busybox_aarch64_arm64_gcc_Linux
115K  ./wget/wget_busybox_aarch64_arm64_musl_Linux
1.3M  ./wget/wget_busybox_amd_x86_64_gcc_Linux
99K   ./wget/wget_busybox_amd_x86_64_musl_Linux
819K  ./wget/wget_busybox_arm_abi_gcc_Linux
110K  ./wget/wget_busybox_arm_abi_musl_Linux
591K  ./wget/wget_busybox_arm_abihf_gcc_Linux
106K  ./wget/wget_busybox_arm_abihf_musl_Linux
74K   ./wget/wget_busybox_armv7l_abihf_musl_Linux
1.2M  ./wget/wget_busybox_i686_x86_gcc_Linux
757K  ./wget/wget_busybox_m68k_gcc_Linux
107K  ./wget/wget_busybox_m68k_linux_musl_Linux
1.1M  ./wget/wget_busybox_mips64_gcc_Linux
166K  ./wget/wget_busybox_mips64_musl_Linux
1.1M  ./wget/wget_busybox_mips64el_gcc_Linux
166K  ./wget/wget_busybox_mips64el_musl_Linux
1.1M  ./wget/wget_busybox_mips_gcc_Linux
160K  ./wget/wget_busybox_mips_musl_Linux
1.1M  ./wget/wget_busybox_mipsel_gcc_Linux
160K  ./wget/wget_busybox_mipsel_musl_Linux
1.4M  ./wget/wget_busybox_powerpc64_gcc_Linux
131K  ./wget/wget_busybox_powerpc64_musl_Linux
1.4M  ./wget/wget_busybox_powerpc64le_gcc_Linux
195K  ./wget/wget_busybox_powerpc64le_musl_Linux
1.1M  ./wget/wget_busybox_powerpc_gcc_Linux
194K  ./wget/wget_busybox_powerpc_musl_Linux
663K  ./wget/wget_busybox_riscv32_gcc_Linux
668K  ./wget/wget_busybox_riscv64_gcc_Linux
95K   ./wget/wget_busybox_riscv64_musl_Linux
983K  ./wget/wget_busybox_s390x_gcc_Linux
131K  ./wget/wget_busybox_s390x_musl_Linux
```

---

- #### Flags
```console
$ ./wget/wget_amd_x86_64_Linux
/bin/bash: line 1: ./wget/wget_amd_x86_64_Linux: No such file or directory
