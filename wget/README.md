
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
./wget/wget_busybox_aarch_arm64_Linux:              ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=84b446e40b67fef7efc7eb38c42bcd69ac3211ba, for GNU/Linux 3.7.0, stripped
./wget/wget_busybox_aarch_arm64_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a8814d5a6948333c31fe7affd77f7e9ecfe01fe5, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_amd_x86_64_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_amd_x86_64_Tiny_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64:   ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabi_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=1346ec1c4e1d10b6f952cc21cf5f8a811eddbbd2, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabi_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_arm_gnueabihf_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=763bf778ad543c52072fab3d0a3b736008a391a0, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_arm_gnueabihf_Linux.base64:     ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=0801dd7ea685e37117ccb673687f8f2fa7259221, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_i686_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_i686_Tiny_Linux:                ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./wget/wget_busybox_i686_Tiny_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_m68k_Linux:                     ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=f5a6e17a5f663a3cf7cc4d9ad8e6bc9ce918a0d5, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_m68k_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64_Linux:                   ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=784eede3d6f62c7458e886ad476237344e55f6c6, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips64el_Linux:                 ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=59b75de63844ff8497a62adb2ed80dc0ce75e05e, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips64el_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mips_Linux:                     ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=4564982613acafa651e1e383ea9ae7ee0dfcdabb, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mips_Linux.base64:              ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_mipsel_Linux:                   ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e594ae3b5ef65282f5ca7f33359ac322b5678b97, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_mipsel_Linux.base64:            ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=7d2b284bea38947c21a0d02e67d31ffaa2372993, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc64_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc64le_Linux:              ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=2f504345a2323613f1035667d5cf033294d557e1, for GNU/Linux 3.10.0, stripped
./wget/wget_busybox_powerpc64le_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_powerpc_Linux:                  ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=ba39d07e84f9b06bc8b68f446a7eca255838706f, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_powerpc_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv32_Linux:                  ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./wget/wget_busybox_riscv32_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_riscv64_Linux:                  ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=ec2bf10cfb44b69a29b6d8615f50156f2a6778b8, for GNU/Linux 4.15.0, stripped
./wget/wget_busybox_riscv64_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators
./wget/wget_busybox_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=2a8f66c95c6ad0a653c7f353239fb1f58dedfc26, for GNU/Linux 3.2.0, stripped
./wget/wget_busybox_s390x_Linux.base64:             ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./wget/wget_amd_x86_WinTLS_lite_Windows.exe ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64 ./wget/wget_amd_x86_lite_Windows.exe ./wget/wget_amd_x86_lite_Windows.exe.base64 ./wget/wget_amd_x86_x64_lite_Windows.exe ./wget/wget_amd_x86_x64_lite_Windows.exe.base64 ./wget/wget_busybox_aarch_arm64_Linux ./wget/wget_busybox_aarch_arm64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Linux ./wget/wget_busybox_amd_x86_64_Linux.base64 ./wget/wget_busybox_amd_x86_64_Tiny_Linux ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64 ./wget/wget_busybox_arm_gnueabi_Linux ./wget/wget_busybox_arm_gnueabi_Linux.base64 ./wget/wget_busybox_arm_gnueabihf_Linux ./wget/wget_busybox_arm_gnueabihf_Linux.base64 ./wget/wget_busybox_i686_Linux ./wget/wget_busybox_i686_Linux.base64 ./wget/wget_busybox_i686_Tiny_Linux ./wget/wget_busybox_i686_Tiny_Linux.base64 ./wget/wget_busybox_m68k_Linux ./wget/wget_busybox_m68k_Linux.base64 ./wget/wget_busybox_mips64_Linux ./wget/wget_busybox_mips64_Linux.base64 ./wget/wget_busybox_mips64el_Linux ./wget/wget_busybox_mips64el_Linux.base64 ./wget/wget_busybox_mips_Linux ./wget/wget_busybox_mips_Linux.base64 ./wget/wget_busybox_mipsel_Linux ./wget/wget_busybox_mipsel_Linux.base64 ./wget/wget_busybox_powerpc64_Linux ./wget/wget_busybox_powerpc64_Linux.base64 ./wget/wget_busybox_powerpc64le_Linux ./wget/wget_busybox_powerpc64le_Linux.base64 ./wget/wget_busybox_powerpc_Linux ./wget/wget_busybox_powerpc_Linux.base64 ./wget/wget_busybox_riscv32_Linux ./wget/wget_busybox_riscv32_Linux.base64 ./wget/wget_busybox_riscv64_Linux ./wget/wget_busybox_riscv64_Linux.base64 ./wget/wget_busybox_s390x_Linux ./wget/wget_busybox_s390x_Linux.base64
ac3dce1dce3760ae60a87319915d68341c8b87ad6821c824d02a1110ae958ea5  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe
4d4a5fccf8980af26cb1ae0299faa180215cea26540c8d802ec9706749c06e94  ./wget/wget_amd_x86_WinTLS_lite_Windows.exe.base64
669fde7d3ca80f269004acca01b3ff789a0c125ce2c8e31eb97952d8f47b5f9b  ./wget/wget_amd_x86_lite_Windows.exe
2376ce6676bec3d6b4da704ad80e811aee50a56a02cdd784f4dcc47796b51a54  ./wget/wget_amd_x86_lite_Windows.exe.base64
f048d6af0b475cddefdc33222b8e5dcfb75fd0894076fcd9ad9cbd3eac602e4c  ./wget/wget_amd_x86_x64_lite_Windows.exe
6e70eef8fff29eea094d4aa3c07fac82106c711b914c6c47d69720d7691bd3cd  ./wget/wget_amd_x86_x64_lite_Windows.exe.base64
91e5bdb05c68de9f49e5f1e73873e4bfb3cca1024fef12e6afb69eb717445660  ./wget/wget_busybox_aarch_arm64_Linux
8237521aaf19ef8c3b1bbfe22656b424ab316d7391d49a273118686637ae97c3  ./wget/wget_busybox_aarch_arm64_Linux.base64
2355a59e791258188f7eb62da836ff48f1544729b7e40b9a558c03dffbea8f1d  ./wget/wget_busybox_amd_x86_64_Linux
2620be1ea3a4541665369fe032e103f9b155abe874dc11e5fe903f6c068c0a20  ./wget/wget_busybox_amd_x86_64_Linux.base64
6f962014746ec88aeb8271ba63d05fa5616e0eca014259b0fd29d0d29de9192a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux
fd28deaa62e028a190277084c74cf668fc4cebabca13c9716eb809c9a00c599a  ./wget/wget_busybox_amd_x86_64_Tiny_Linux.base64
7d73628b31d3fdf02a71e224c2b907c09b93fd0a4c1c81b7c609f9a65acd71e2  ./wget/wget_busybox_arm_gnueabi_Linux
5636983764caad3fef6ab9441049167ed67650ca7b5374338510f13e1990d529  ./wget/wget_busybox_arm_gnueabi_Linux.base64
3e78ccf162ed03dd04eb2d9f93f5c73fb40cecfc174b11f4c380abb60723c0e6  ./wget/wget_busybox_arm_gnueabihf_Linux
8fb385dfe190a0eb0bbe81ded6a83f07379a9b7737422053d1eb3a840f781ea1  ./wget/wget_busybox_arm_gnueabihf_Linux.base64
4b402a499233987179a374010e90ba5b8a55cf73fc3e740ac1d3d7fde023f3b0  ./wget/wget_busybox_i686_Linux
193af144da55ebf8052f703261c2098d6b090e7233e36f3e660aa7150b56a221  ./wget/wget_busybox_i686_Linux.base64
b668f9049c3227885dd87992bc8c1267d642675e84e789ea613f5e821d860271  ./wget/wget_busybox_i686_Tiny_Linux
9141661e8dfc1b4ba0048c6aaf65cc2b5c9be21094fe8548be2f6c8bf6f01eb2  ./wget/wget_busybox_i686_Tiny_Linux.base64
07f3cf8732a71a1b88d316ce4d878f05357422ab65cd4f1056e1c9156b08967b  ./wget/wget_busybox_m68k_Linux
114a06e571a0a2826b90fcc687f85e73b7244dd111a184ec789f0e280c1343ac  ./wget/wget_busybox_m68k_Linux.base64
b8406db0fa4fe229c3bea67af7096227125a4778e2dd47401045629093b67b5f  ./wget/wget_busybox_mips64_Linux
fc844be5cb4803c79ea4fb00a6b403f32d3861bf4267d812ee07ae912d415c1a  ./wget/wget_busybox_mips64_Linux.base64
b0827b635160a41df3a52f4ce8ec2fd0c9307fd6b1fe2a5405f01b3869853ee9  ./wget/wget_busybox_mips64el_Linux
d712f971b385cbb364bf161003f1bad6c4020c673a29e8a23d05988ccf620fa4  ./wget/wget_busybox_mips64el_Linux.base64
454252e0b024929bd885263dcf9782fbafd56bbeb69402fd03e9c6aedc85b7af  ./wget/wget_busybox_mips_Linux
3ab04276c40c3afe0ddf30f278f7fc6164a28d68028ff5b9b568a1ae050dfa6e  ./wget/wget_busybox_mips_Linux.base64
3dca82081d50c5de4c6ef83bce7832a7d1863bb0285238829cfa71c08b4a696e  ./wget/wget_busybox_mipsel_Linux
81dd60dee426b0ddda79c3ab160a8adf53e0f9927ccc561bd4bcb804b80da4db  ./wget/wget_busybox_mipsel_Linux.base64
3a02ef19ecf85f2f14512d3c00496d21481d8d543d4dbdfc0d4b56d3f5bb57e1  ./wget/wget_busybox_powerpc64_Linux
9e88668205ef4e3933a3bafe83b9f601db985f6bd090a3bdd08e24e32f61b072  ./wget/wget_busybox_powerpc64_Linux.base64
2649a11f57dba29ffc86b14edc309a7f2e98010bcac21d52b3092750454eb184  ./wget/wget_busybox_powerpc64le_Linux
d2d6e48302beefad05d96411886c596e88ac040ac3e06e13fff2a01bb537a711  ./wget/wget_busybox_powerpc64le_Linux.base64
4798c1c00c4ee6b8ee0bad746742d23c0e23fbf812a1c3fddfc703b1178ad6c9  ./wget/wget_busybox_powerpc_Linux
3cf2a2f8bd4fcb0ee67040db04580145505bf59b52bdda511f0f5fc66a0b5ed8  ./wget/wget_busybox_powerpc_Linux.base64
db726b03a7af1c617556b4aad907bc9cf1baa868daf9b7a2efb1b1be309bf9e4  ./wget/wget_busybox_riscv32_Linux
5a76e0449d15cdbd4d8cd4ff00d7b635d684cbe62aafd676d95506f52a7d34f9  ./wget/wget_busybox_riscv32_Linux.base64
051a9c0811ad98bb7ac39b44a7fb22909ee169779e4701b117f0448acbc148e2  ./wget/wget_busybox_riscv64_Linux
22e7c1a40dc89cc17b16119555da1101613e2705e6a46db09f1581111f916111  ./wget/wget_busybox_riscv64_Linux.base64
d9b1fc2f698e415f92176addde60b61d859908c721211c0931ab1b61cbd8fa79  ./wget/wget_busybox_s390x_Linux
0b0f077981c630064a340146ad124450b8ceb9c2303ebe5577d7c1527a648583  ./wget/wget_busybox_s390x_Linux.base64
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
