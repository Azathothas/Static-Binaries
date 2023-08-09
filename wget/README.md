
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
./wget/wget_busybox_aarch64_arm64_gcc_Linux:         ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=6d8df0982b3d9ad1631b22f62e13b36057714c97, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch64_arm64_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_amd_x86_64_gcc_Linux:            ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=7b7cfe8256dbb194c9b46df5ac7c02bd6611ecdd, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_abi_gcc_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=a70335525cb873f4e4e33bd62d7643a7d26c0bc2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_abi_musl_Linux:              ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_arm_abihf_gcc_Linux:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=5d42ce970fdab4ffc87e65d96ac9c2c0a86f6107, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_abihf_musl_Linux:            ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_armv7l_abihf_musl_Linux:         ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_i686_x86_gcc_Linux:              ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=aeeb32e1da5e620e48506084511d8ba0f698cb33, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_gcc_Linux:                  ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=1e5f8a0a91488fc26fc41fa3b55dc25c4975ae54, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_linux_musl_Linux:           ELF 32-bit MSB pie executable, Motorola m68k, 68020, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips64_gcc_Linux:                ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=3785f015951642ca2f8078441c3ce0d0e0d3ccc6, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_musl_Linux:               ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips64el_gcc_Linux:              ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=139de2da4e4538d3cba3f719d4c2b3f6979ec458, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_musl_Linux:             ELF 64-bit LSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mips_gcc_Linux:                  ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=71b30b49ebb81720e86dc727cf527c6ce5d21609, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_musl_Linux:                 ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_mipsel_gcc_Linux:                ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=1f15e18f4f05bc610e04ce507c9b8a3d482086be, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc64_gcc_Linux:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=06c84b87d0f3648ad0a33a403ff71cd3b58ffabd, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_musl_Linux:            ELF 64-bit MSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc64le_gcc_Linux:           ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=61bb7870cc9aeb15c88c2daf5bf20cb796cf195b, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_musl_Linux:          ELF 64-bit LSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_powerpc_gcc_Linux:               ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=9ae429c12b9766779fbcb891ac506faf9c5cfa5b, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_musl_Linux:              ELF 32-bit MSB pie executable, PowerPC or cisco 4500, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_riscv32_gcc_Linux:               ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv64_gcc_Linux:               ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=2335ae47adc8a9cba2ac829275d60c76a54c6f47, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_musl_Linux:              ELF 64-bit LSB pie executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), static-pie linked, stripped
./wget/wget_busybox_s390x_gcc_Linux:                 ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=91a60326718b025888554182cbfd74c8f77d2883, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_musl_Linux:                ELF 64-bit MSB pie executable, IBM S/390, version 1 (SYSV), static-pie linked, stripped

--> SHA256SUM
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
336fcc389f6caa14b9de758bbdbb639b33c1c7a1824012b1d0f443643e5208ba  ./wget/wget_busybox_aarch64_arm64_gcc_Linux
2736f5dbaab743d22c718421b9880f6edd3f031d19404dfb2c93af14dc16687f  ./wget/wget_busybox_aarch64_arm64_musl_Linux
c72a0cd3e97b60caeeb9a3db30c75ca49474a640c9627ac14910ee4cc6620245  ./wget/wget_busybox_amd_x86_64_gcc_Linux
0003c78e95c2bda65ab2b29f19a446a876278206172cb8836c8b077bf8480ee1  ./wget/wget_busybox_amd_x86_64_musl_Linux
8698dfd3884ca83c81488ea97d21b8c06343756abb53836c1b2fb17a71fad8eb  ./wget/wget_busybox_arm_abi_gcc_Linux
d88ef3c623e0c822c1e460ff7c7896ecc6cb5253b25f8f638a224b913ad2fc97  ./wget/wget_busybox_arm_abi_musl_Linux
81e47bae29a102092435b6d33cf107ecec1db846271b53f83529402bbe304cde  ./wget/wget_busybox_arm_abihf_gcc_Linux
1cb2103bfc495c9a90070fca97b0845d690b4b67fe63f1f6bdd1cc719965521a  ./wget/wget_busybox_arm_abihf_musl_Linux
ec215780dc74381fd5464d11b1e8efe9736f332acb237706c90720b4baa641ca  ./wget/wget_busybox_armv7l_abihf_musl_Linux
542ceae66ce0772fa5acd8b553eece108d9ee60d149dc09598cfcaa42dbea8d8  ./wget/wget_busybox_i686_x86_gcc_Linux
5ffddad2b81c9c75437de1d5a8b938be76ba75b1b22cf6f7b0d835457ca4a8e7  ./wget/wget_busybox_m68k_gcc_Linux
ad9001906efdedcc6a1598db626d3f767e0dcae2cbd4f409cee03d2445946c47  ./wget/wget_busybox_m68k_linux_musl_Linux
cd2e6a08c701ee5bde453b843b1cf84f514b03d728015fc0f037bdda578402a0  ./wget/wget_busybox_mips64_gcc_Linux
18999e407391e0149b636eac144ca90c87a7683fc253c373bfef6f6ce881237f  ./wget/wget_busybox_mips64_musl_Linux
f5ff3499379dcf701c1dac11574861346d1e59df31928dc35392740b453b1edc  ./wget/wget_busybox_mips64el_gcc_Linux
b26520642add09e2756c44bdfa4ea3cda21ead9664ab1b821c34d1d95ffab61b  ./wget/wget_busybox_mips64el_musl_Linux
beb7fcc260a4ed6a5db7249e8dbf5b15029e72038fc22e1114214dcc856aab9b  ./wget/wget_busybox_mips_gcc_Linux
3157eab39961936a5ea59766b9f3021e3197f1a879600bb1fcc7456a8635e3c9  ./wget/wget_busybox_mips_musl_Linux
8ce56fcd6c9262e538d2d58d95bc2f7fdfcede893267d61a8d51c60ed903fafb  ./wget/wget_busybox_mipsel_gcc_Linux
eeaf24e21bc20283c52473d406f5027326e5af9d6cca0d13fa0c53aabae60b7e  ./wget/wget_busybox_mipsel_musl_Linux
38dbe371af9a913992dfd0a19afcacc5d292976163cb83004e847cf2b4359e85  ./wget/wget_busybox_powerpc64_gcc_Linux
7016c88b830d235f43a0707ab99a1fbb433ff30639ec3c18d0fed5f40d66cf66  ./wget/wget_busybox_powerpc64_musl_Linux
23f1b3593d1a186fd6fc52c78a0d879afa06e3b9d721a03950b2d107e161869f  ./wget/wget_busybox_powerpc64le_gcc_Linux
cc8d45195af1f35ec58c34ad00c1ea1fe4f390f1c108687497e7a9123a3db9db  ./wget/wget_busybox_powerpc64le_musl_Linux
d134aefd89e7ff0755f50a99bf6a2347a2b2773c901c9bd25f1ec74cbeba7ff9  ./wget/wget_busybox_powerpc_gcc_Linux
f1b5720c6075d629b755bb5e6ea9123a94f5f103931fdbdadfd0224f2c60285a  ./wget/wget_busybox_powerpc_musl_Linux
64c50995877dacba1f7632f38c77fb1be059481484195af7c87f298e06b4fc16  ./wget/wget_busybox_riscv32_gcc_Linux
a8e58dbb5a550765c69af6e7003aa06195fd61a50e38bd01a5e203bbc69efff0  ./wget/wget_busybox_riscv64_gcc_Linux
0c4dd2c216b1cd362df56bdd6d5eb6b00642f56fe54cf9f97884a4d94b5296e0  ./wget/wget_busybox_riscv64_musl_Linux
7e78f47c273ee6bd1d35e89f997c44e8d8c812fcb736ab0cf609b487756d47be  ./wget/wget_busybox_s390x_gcc_Linux
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
$ ./wget/wget_busybox_amd_x86_64_musl_Linux
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
