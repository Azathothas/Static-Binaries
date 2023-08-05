
---
- #### Download [Busybox](https://busybox.net)
> - **Sources**
> > ```bash
> > --> Linux:
> >      - Built & Compiled from source : 'https://git.busybox.net/busybox/'
> >        - GCC (Natively using Cross Toolchains)
> >        - MUSL
> >           - 'https://hub.docker.com/r/abcfy2/muslcc-toolchain-ubuntu'
> >           - 'https://hub.docker.com/r/blackdex/musl-toolchain'
> >
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
!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_aarch64_arm64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_aarch64_arm64_musl_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_amd_x86_64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_amd_x86_64_musl_Linux"
--> ARM_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_arm_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_arm_abi_musl_Linux"
--> ARM_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_arm_abihf_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_arm_abihf_musl_Linux"
--> ARMv5te_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv5te_abi_musl_Linux"
--> ARMv7_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abi_musl_Linux"
--> ARMv7l_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abihf_musl_Linux"
--> i586 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_i586_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_i586_musl_Linux"
--> i686 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_amd_x86_i686_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_amd_x86_i686_musl_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips_musl_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mipsel_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mipsel_musl_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips64_musl_Linux"
--> MIPS64el || MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips64el_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_mips64el_musl_Linux"
--> powerpc || ppc || cisco 4500 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox/busybox_powerpc_musl_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox/busybox_powerpc64_musl_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc64le_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc64le_musl_Linux"
--> riscv32 || CB RISC-V || RVC [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_riscv32_gcc_Linux"
--> riscv64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_riscv64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_riscv64_musl_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_s390x_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_s390x_musl_Linux"
```
---
- #### Install busybox
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded Busybox binary to that DIR
 mv "$Path_To_Busybox_Binary" "$HOME/bin/busybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/busybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything
 cd "$HOME/bin" && "$HOME/bin/busybox" --install -s .
```

---
```console
$ file ./busybox/busybox_aarch64_arm64_gcc_Linux ./busybox/busybox_aarch64_arm64_musl_Linux ./busybox/busybox_amd_x86_64_gcc_Linux ./busybox/busybox_amd_x86_64_musl_Linux ./busybox/busybox_arm_abi_gcc_Linux ./busybox/busybox_arm_abi_musl_Linux ./busybox/busybox_arm_abihf_gcc_Linux ./busybox/busybox_arm_abihf_musl_Linux ./busybox/busybox_armv7l_abihf_musl_Linux ./busybox/busybox_i686_x86_gcc_Linux ./busybox/busybox_m68k_gcc_Linux ./busybox/busybox_m68k_linux_musl_Linux ./busybox/busybox_mips64_gcc_Linux ./busybox/busybox_mips64_musl_Linux ./busybox/busybox_mips64el_gcc_Linux ./busybox/busybox_mips64el_musl_Linux ./busybox/busybox_mips_gcc_Linux ./busybox/busybox_mips_musl_Linux ./busybox/busybox_mipsel_gcc_Linux ./busybox/busybox_mipsel_musl_Linux ./busybox/busybox_powerpc64_gcc_Linux ./busybox/busybox_powerpc64_musl_Linux ./busybox/busybox_powerpc64le_gcc_Linux ./busybox/busybox_powerpc64le_musl_Linux ./busybox/busybox_powerpc_gcc_Linux ./busybox/busybox_powerpc_musl_Linux ./busybox/busybox_riscv32_gcc_Linux ./busybox/busybox_riscv64_gcc_Linux ./busybox/busybox_riscv64_musl_Linux ./busybox/busybox_s390x_gcc_Linux ./busybox/busybox_s390x_musl_Linux
./busybox/busybox_aarch64_arm64_gcc_Linux:  ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=0cb8c7674086fa2ee808dce1da2e8c75c6fab7ba, for GNU/Linux 3.7.0, stripped
./busybox/busybox_aarch64_arm64_musl_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_amd_x86_64_gcc_Linux:     ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=8d074adc8470c8af98b96bcd19cfa9872ace0818, for GNU/Linux 3.2.0, stripped
./busybox/busybox_amd_x86_64_musl_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abi_gcc_Linux:        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=2271db4a09d28e9a962e5dd01b076fa4057a4881, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abi_musl_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abihf_gcc_Linux:      ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=ccff45ca31e88652688269ea6cb18d957319a31b, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abihf_musl_Linux:     ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_armv7l_abihf_musl_Linux:  ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_i686_x86_gcc_Linux:       ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=92372bfa25016ef9cf1ff4959ea2e260b13e9413, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_gcc_Linux:           ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=9a064db98230474928d86ef912f59ba1eb22ada4, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_linux_musl_Linux:    ELF 32-bit MSB pie executable, Motorola m68k, 68020, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64_gcc_Linux:         ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=227a2c668a20d209bf44a01eddb8099c4e949fa8, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64_musl_Linux:        ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64el_gcc_Linux:       ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=88d3bb6490848aaea85792a6cfd5d4e312760b28, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64el_musl_Linux:      ELF 64-bit LSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips_gcc_Linux:           ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=2731c2e42cb563b8af07e66a2614f5d8078d4c86, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips_musl_Linux:          ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mipsel_gcc_Linux:         ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=eee7218f264ec41b15c8a89a23cb0859bbe55a8d, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mipsel_musl_Linux:        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64_gcc_Linux:      ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=53f971418f4850ad6b72f105970988ee58b8bb95, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc64_musl_Linux:     ELF 64-bit MSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64le_gcc_Linux:    ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=50c22e79925d65dbcb17ebbffaafeb9594b1017e, for GNU/Linux 3.10.0, stripped
./busybox/busybox_powerpc64le_musl_Linux:   ELF 64-bit LSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc_gcc_Linux:        ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=afbe409342604f522d664ce9e1844d21e587754d, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc_musl_Linux:       ELF 32-bit MSB pie executable, PowerPC or cisco 4500, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_riscv32_gcc_Linux:        ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./busybox/busybox_riscv64_gcc_Linux:        ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=58a3980e2e0048a0febb139ed4f9319264cddcca, for GNU/Linux 4.15.0, stripped
./busybox/busybox_riscv64_musl_Linux:       ELF 64-bit LSB pie executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_s390x_gcc_Linux:          ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=0f5dfe2660e078f489bf8cb2501f29d46c555136, for GNU/Linux 3.2.0, stripped
./busybox/busybox_s390x_musl_Linux:         ELF 64-bit MSB pie executable, IBM S/390, version 1 (SYSV), static-pie linked, stripped

--> SHA256SUM
$ sha256sum ./busybox/busybox_aarch64_arm64_gcc_Linux ./busybox/busybox_aarch64_arm64_musl_Linux ./busybox/busybox_amd_x86_64_gcc_Linux ./busybox/busybox_amd_x86_64_musl_Linux ./busybox/busybox_arm_abi_gcc_Linux ./busybox/busybox_arm_abi_musl_Linux ./busybox/busybox_arm_abihf_gcc_Linux ./busybox/busybox_arm_abihf_musl_Linux ./busybox/busybox_armv7l_abihf_musl_Linux ./busybox/busybox_i686_x86_gcc_Linux ./busybox/busybox_m68k_gcc_Linux ./busybox/busybox_m68k_linux_musl_Linux ./busybox/busybox_mips64_gcc_Linux ./busybox/busybox_mips64_musl_Linux ./busybox/busybox_mips64el_gcc_Linux ./busybox/busybox_mips64el_musl_Linux ./busybox/busybox_mips_gcc_Linux ./busybox/busybox_mips_musl_Linux ./busybox/busybox_mipsel_gcc_Linux ./busybox/busybox_mipsel_musl_Linux ./busybox/busybox_powerpc64_gcc_Linux ./busybox/busybox_powerpc64_musl_Linux ./busybox/busybox_powerpc64le_gcc_Linux ./busybox/busybox_powerpc64le_musl_Linux ./busybox/busybox_powerpc_gcc_Linux ./busybox/busybox_powerpc_musl_Linux ./busybox/busybox_riscv32_gcc_Linux ./busybox/busybox_riscv64_gcc_Linux ./busybox/busybox_riscv64_musl_Linux ./busybox/busybox_s390x_gcc_Linux ./busybox/busybox_s390x_musl_Linux
e6ee492704555b6765991199bcd4a3540e1e5cad1c4ce6a170940a9d2db20f70  ./busybox/busybox_aarch64_arm64_gcc_Linux
93656f3a0c014fca0b15551d9cceee786c7dcdd82dcda4e0745cebdfbf5965a7  ./busybox/busybox_aarch64_arm64_musl_Linux
b1484abba3d2d559b4616b998b043051222bf5d3f6f6fe368fd36350ffb6cdec  ./busybox/busybox_amd_x86_64_gcc_Linux
31ec2c1080a7e8ae45749668aead9d6287af1ba45637989b5bc73f4978bc6060  ./busybox/busybox_amd_x86_64_musl_Linux
ee52816b3e440dd846df542e557f8ed54af7b13c72d4ef22d0a7af37214e732b  ./busybox/busybox_arm_abi_gcc_Linux
00c290a748ca214890b4274c6cf79e2e902bb751979e1ddc8883d2c257b72050  ./busybox/busybox_arm_abi_musl_Linux
6daa0a680c23a83afc1cca3dca1fd5bbe23ee9d7bc440825d298efdbe732adda  ./busybox/busybox_arm_abihf_gcc_Linux
1853671c0367aeadd839cb28f612d7b0d72373ce63da3a8fd5f49da4234c8a46  ./busybox/busybox_arm_abihf_musl_Linux
a444b2150be10c3239589ddedff9ac83fd5e97856899c823d2743da6906fda61  ./busybox/busybox_armv7l_abihf_musl_Linux
5492e1a771b0d86a40f0d3f02c5c5dfb1cc64d39e8cda87ebeb7eff94fb19e8d  ./busybox/busybox_i686_x86_gcc_Linux
92be7edd6f304f7ed8f6d81fe5b5e2f2685660a6ca2c22e450a145c63a0a5b62  ./busybox/busybox_m68k_gcc_Linux
38f733035112b3b7acdf42f76007f07c4c29b8a22003f5717792b490a91bd3ba  ./busybox/busybox_m68k_linux_musl_Linux
5fcda3160a0bb0758e2f5d2d468a8626728c359aa4193ada8a76240874181997  ./busybox/busybox_mips64_gcc_Linux
e1557c877dab9a63afca6c86149ed2416717d9a95708f32ee10c75601aad9a47  ./busybox/busybox_mips64_musl_Linux
02d39d1da5184a758985cb43bd1569570bf91aa6e1fd169e43a09fdcc660789a  ./busybox/busybox_mips64el_gcc_Linux
850a5ddee21e232fbf5f1ec51e3a76f2956000e3c0aa67e95952b6766bee5c8f  ./busybox/busybox_mips64el_musl_Linux
a16d772269ea6f37760176d088336b8ce6ad24e76ae741a37d6b4dc1bbc1c9fe  ./busybox/busybox_mips_gcc_Linux
4f38e3ed3c3afa2d849604ee0bd4b127e47a4560cbb7831ab11b09b8f758567d  ./busybox/busybox_mips_musl_Linux
b29e5ca0567ffc20aa52c25f51d038f2b0b8b4ec096a45a6c78e43ae955a8f9b  ./busybox/busybox_mipsel_gcc_Linux
51ace4d3fe3a42f12e413d3a3b64544d63d4e7a5dba90e24e29e97e43897e5a4  ./busybox/busybox_mipsel_musl_Linux
eeefe0ee8e49f65987cd6bcfe8372f9da6d25753bac5b6f5b1c48c1604bfbf37  ./busybox/busybox_powerpc64_gcc_Linux
2e124d8fedd4bf5c00ffe3bb49b3ae07eea31eda185f12862221c365eee37b85  ./busybox/busybox_powerpc64_musl_Linux
101cd0a9ba985919d3768e07b499d5b61672ed16ab0c5d41dd696956966f6827  ./busybox/busybox_powerpc64le_gcc_Linux
216e0769c2828d19c79c5952a23be081eaf52d53cec9aba6bf300325ef933e09  ./busybox/busybox_powerpc64le_musl_Linux
dce7a81c8dbc4cc248c7b01a91b7e442efa03f86db8e8c6747b8c82756219848  ./busybox/busybox_powerpc_gcc_Linux
5739439879d2abb7adbd1c726ecb86be252389b6249c5c58ac46a020dd583c95  ./busybox/busybox_powerpc_musl_Linux
52109cf38b8a735af611a1bdd36feb83f64367def63af4fd65773be3989c0be5  ./busybox/busybox_riscv32_gcc_Linux
08692d257b8b8a53b05c5e068ba2817e552bb3451be8c3abb139604acf52e0cf  ./busybox/busybox_riscv64_gcc_Linux
c670ff5266305ba59a3397e051c12abf9e0fc08b5b28a0a47061452ebb6ad960  ./busybox/busybox_riscv64_musl_Linux
c860b7340cc036d105acac25d0851d1231bdd8220dcc9032b6ce7ae0d347644a  ./busybox/busybox_s390x_gcc_Linux
8bc191eacf3b8b56cf268ce72c1d930f32b79eba3e7b231b8ecbc3f37861459b  ./busybox/busybox_s390x_musl_Linux
```


---

- #### Sizes

```console
2.1M  ./busybox/busybox_aarch64_arm64_gcc_Linux
1.2M  ./busybox/busybox_aarch64_arm64_musl_Linux
2.5M  ./busybox/busybox_amd_x86_64_gcc_Linux
1.2M  ./busybox/busybox_amd_x86_64_musl_Linux
2.1M  ./busybox/busybox_arm_abi_gcc_Linux
1.3M  ./busybox/busybox_arm_abi_musl_Linux
1.5M  ./busybox/busybox_arm_abihf_gcc_Linux
1.3M  ./busybox/busybox_arm_abihf_musl_Linux
898K  ./busybox/busybox_armv7l_abihf_musl_Linux
2.3M  ./busybox/busybox_i686_x86_gcc_Linux
1.8M  ./busybox/busybox_m68k_gcc_Linux
1.3M  ./busybox/busybox_m68k_linux_musl_Linux
2.8M  ./busybox/busybox_mips64_gcc_Linux
1.7M  ./busybox/busybox_mips64_musl_Linux
2.8M  ./busybox/busybox_mips64el_gcc_Linux
1.7M  ./busybox/busybox_mips64el_musl_Linux
2.6M  ./busybox/busybox_mips_gcc_Linux
1.8M  ./busybox/busybox_mips_musl_Linux
2.6M  ./busybox/busybox_mipsel_gcc_Linux
1.8M  ./busybox/busybox_mipsel_musl_Linux
2.9M  ./busybox/busybox_powerpc64_gcc_Linux
1.5M  ./busybox/busybox_powerpc64_musl_Linux
2.9M  ./busybox/busybox_powerpc64le_gcc_Linux
1.6M  ./busybox/busybox_powerpc64le_musl_Linux
2.4M  ./busybox/busybox_powerpc_gcc_Linux
1.5M  ./busybox/busybox_powerpc_musl_Linux
1.6M  ./busybox/busybox_riscv32_gcc_Linux
1.7M  ./busybox/busybox_riscv64_gcc_Linux
1.1M  ./busybox/busybox_riscv64_musl_Linux
2.3M  ./busybox/busybox_s390x_gcc_Linux
1.5M  ./busybox/busybox_s390x_musl_Linux
```

---

- #### Bundled Commands
```console

$ ./busybox/busybox_amd_x86_64_gcc_Linux
BusyBox v1.36.1 (2023-08-05 05:37:09 UTC) multi-call binary.
BusyBox is copyrighted by many authors between 1998-2015.
Licensed under GPLv2. See source distribution for detailed
copyright notices.

Usage: busybox [function [arguments]...]
   or: busybox --list[-full]
   or: busybox --show SCRIPT
   or: busybox --install [-s] [DIR]
   or: function [arguments]...

	BusyBox is a multi-call binary that combines many common Unix
	utilities into a single executable.  Most people will create a
	link to busybox for each function they wish to use and BusyBox
	will act like whatever it was invoked as.

Currently defined functions:
	[, [[, acpid, add-shell, addgroup, adduser, adjtimex, arch, arp,
	arping, ascii, ash, awk, base32, base64, basename, bc, beep,
	blkdiscard, blkid, blockdev, bootchartd, brctl, bunzip2, bzcat, bzip2,
	cal, cat, chat, chattr, chgrp, chmod, chown, chpasswd, chpst, chroot,
	chrt, chvt, cksum, clear, cmp, comm, conspy, cp, cpio, crc32, crond,
	crontab, cryptpw, cttyhack, cut, date, dc, dd, deallocvt, delgroup,
	deluser, depmod, devmem, df, dhcprelay, diff, dirname, dmesg, dnsd,
	dnsdomainname, dos2unix, dpkg, dpkg-deb, du, dumpkmap, dumpleases,
	echo, ed, egrep, eject, env, envdir, envuidgid, ether-wake, expand,
	expr, factor, fakeidentd, fallocate, false, fatattr, fbset, fbsplash,
	fdflush, fdformat, fdisk, fgconsole, fgrep, find, findfs, flock, fold,
	free, freeramdisk, fsck, fsck.minix, fsfreeze, fstrim, fsync, ftpd,
	ftpget, ftpput, fuser, getopt, getty, grep, groups, gunzip, gzip, halt,
	hd, hdparm, head, hexdump, hexedit, hostid, hostname, httpd, hush,
	hwclock, i2cdetect, i2cdump, i2cget, i2cset, i2ctransfer, id, ifconfig,
	ifdown, ifenslave, ifplugd, ifup, inetd, init, insmod, install, ionice,
	iostat, ip, ipaddr, ipcalc, ipcrm, ipcs, iplink, ipneigh, iproute,
	iprule, iptunnel, kbd_mode, kill, killall, killall5, klogd, last, less,
	link, linux32, linux64, linuxrc, ln, loadfont, loadkmap, logger, login,
	logname, logread, losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lsof,
	lspci, lsscsi, lsusb, lzcat, lzma, lzop, makedevs, makemime, man,
	md5sum, mdev, mesg, microcom, mim, mkdir, mkdosfs, mke2fs, mkfifo,
	mkfs.ext2, mkfs.minix, mkfs.vfat, mknod, mkpasswd, mkswap, mktemp,
	modinfo, modprobe, more, mount, mountpoint, mpstat, mt, mv, nameif,
	nanddump, nandwrite, nbd-client, nc, netstat, nice, nl, nmeter, nohup,
	nologin, nproc, nsenter, nslookup, ntpd, od, openvt, partprobe, passwd,
	paste, patch, pgrep, pidof, ping, ping6, pipe_progress, pivot_root,
	pkill, pmap, popmaildir, poweroff, powertop, printenv, printf, ps,
	pscan, pstree, pwd, pwdx, raidautorun, rdate, rdev, readahead,
	readlink, readprofile, realpath, reboot, reformime, remove-shell,
	renice, reset, resize, resume, rev, rm, rmdir, rmmod, route, rpm,
	rpm2cpio, rtcwake, run-init, run-parts, runlevel, runsv, runsvdir, rx,
	script, scriptreplay, sed, seedrng, sendmail, seq, setarch, setconsole,
	setfattr, setfont, setkeycodes, setlogcons, setpriv, setserial, setsid,
	setuidgid, sh, sha1sum, sha256sum, sha3sum, sha512sum, showkey, shred,
	shuf, slattach, sleep, smemcap, softlimit, sort, split, ssl_client,
	start-stop-daemon, stat, strings, stty, su, sulogin, sum, sv, svc,
	svlogd, svok, swapoff, swapon, switch_root, sync, sysctl, syslogd, tac,
	tail, tar, taskset, tc, tcpsvd, tee, telnet, telnetd, test, tftp,
	tftpd, time, timeout, top, touch, tr, traceroute, traceroute6, tree,
	true, truncate, ts, tsort, tty, ttysize, tunctl, ubiattach, ubidetach,
	ubimkvol, ubirename, ubirmvol, ubirsvol, ubiupdatevol, udhcpc, udhcpc6,
	udhcpd, udpsvd, uevent, umount, uname, unexpand, uniq, unix2dos,
	unlink, unlzma, unshare, unxz, unzip, uptime, users, usleep, uudecode,
	uuencode, vconfig, vi, vlock, volname, w, wall, watch, watchdog, wc,
	wget, which, who, whoami, whois, xargs, xxd, xz, xzcat, yes, zcat,
	zcip


```

---

