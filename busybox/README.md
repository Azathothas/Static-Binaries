
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
--> ARMv7_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abi_musl_Linux"
--> ARMv7_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_armv7_abihf_gcc_Linux"
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
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc_ppc_gcc_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc64_ppc64_gcc_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_powerpc64le_ppc64le_gcc_Linux"
--> risc64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_riscv64_gcc_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_s390x_gcc_Linux"
--> SPARC V9 || Sun UltraSPARC1 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/busybox/busybox_sparc64_gcc_Linux"

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
$ file ./busybox/busybox_aarch64_arm64_gcc_Linux ./busybox/busybox_aarch64_arm64_musl_Linux ./busybox/busybox_amd_x86_64_gcc_Linux ./busybox/busybox_amd_x86_64_musl_Linux ./busybox/busybox_arm_abi_gcc_Linux ./busybox/busybox_arm_abi_musl_Linux ./busybox/busybox_arm_abihf_gcc_Linux ./busybox/busybox_arm_abihf_musl_Linux ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux ./busybox/busybox_armv7l_abihf_musl_Linux ./busybox/busybox_i686_x86_gcc_Linux ./busybox/busybox_m68k_gcc_Linux ./busybox/busybox_m68k_linux_musl_Linux ./busybox/busybox_mips64_gcc_Linux ./busybox/busybox_mips64_musl_Linux ./busybox/busybox_mips64el_gcc_Linux ./busybox/busybox_mips64el_musl_Linux ./busybox/busybox_mips_gcc_Linux ./busybox/busybox_mips_musl_Linux ./busybox/busybox_mipsel_gcc_Linux ./busybox/busybox_mipsel_musl_Linux ./busybox/busybox_powerpc64_gcc_Linux ./busybox/busybox_powerpc64_musl_Linux ./busybox/busybox_powerpc64_ppc64_gcc_Linux ./busybox/busybox_powerpc64le_gcc_Linux ./busybox/busybox_powerpc64le_musl_Linux ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux ./busybox/busybox_powerpc_gcc_Linux ./busybox/busybox_powerpc_musl_Linux ./busybox/busybox_powerpc_ppc_gcc_Linux ./busybox/busybox_riscv32_gcc_Linux ./busybox/busybox_riscv64_gcc_Linux ./busybox/busybox_riscv64_musl_Linux ./busybox/busybox_s390x_gcc_Linux ./busybox/busybox_s390x_musl_Linux
./busybox/busybox_aarch64_arm64_gcc_Linux:         ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=f0a7386b4cfed66bd9a816ac7441304a223d2db6, for GNU/Linux 3.7.0, stripped
./busybox/busybox_aarch64_arm64_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_amd_x86_64_gcc_Linux:            ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=bf9d0d3588d536eeb89077e5be3b4ee0d8e947f5, for GNU/Linux 3.2.0, stripped
./busybox/busybox_amd_x86_64_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abi_gcc_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=29ce63290f2a79748b4b3f11ea9a53853df8d526, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abi_musl_Linux:              ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abihf_gcc_Linux:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=6362aa2dc068138666448fa3e1717696a3d229d8, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abihf_musl_Linux:            ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux:  ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=993b4ba2512e726f86ee08f3e76734e01eee724b, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux: ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_armv7l_abihf_musl_Linux:         ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_i686_x86_gcc_Linux:              ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a01fec6fbb62c95002dc0a898a62a83330953783, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_gcc_Linux:                  ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=b1f407c1add50dd98323a253af2a50fd894d4c3e, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_linux_musl_Linux:           ELF 32-bit MSB pie executable, Motorola m68k, 68020, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64_gcc_Linux:                ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=5308c6d7c42aa3296d2f05b36b5d7b5faa128044, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64_musl_Linux:               ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64el_gcc_Linux:              ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=6f6b4d40b8d81f447bdcaafb1c829b49300eec7b, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64el_musl_Linux:             ELF 64-bit LSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips_gcc_Linux:                  ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=73ccd64b1a398c3d0e01b724ed0a27a2efd8c258, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips_musl_Linux:                 ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mipsel_gcc_Linux:                ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=93a215d4c1effd2c3780cdf981a48bf9ac4e38e8, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mipsel_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64_gcc_Linux:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1e69419a8eda4f65840f1ef7895e5950bf474f83, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc64_musl_Linux:            ELF 64-bit MSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64_ppc64_gcc_Linux:       ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1bfe63124c88a78e883a9af9e86e7dedec31b8f6, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc64le_gcc_Linux:           ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=fec06932aeeb1bd477e81eaa5cd567143548e85e, for GNU/Linux 3.10.0, stripped
./busybox/busybox_powerpc64le_musl_Linux:          ELF 64-bit LSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64le_ppc64le_gcc_Linux:   ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=d7e3a67a8fb63b4b056a8c320a32d31c18df43b4, for GNU/Linux 3.10.0, stripped
./busybox/busybox_powerpc_gcc_Linux:               ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=ddacaa1cff14083efa3f26fb9aec65266a7dade1, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc_musl_Linux:              ELF 32-bit MSB pie executable, PowerPC or cisco 4500, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc_ppc_gcc_Linux:           ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=8362af49efc59e4b1ad4abd778a6a58f45b9bffb, for GNU/Linux 3.2.0, stripped
./busybox/busybox_riscv32_gcc_Linux:               ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./busybox/busybox_riscv64_gcc_Linux:               ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=2d6e77bb67027fd10f74e82e80ef8946dccefd85, for GNU/Linux 4.15.0, stripped
./busybox/busybox_riscv64_musl_Linux:              ELF 64-bit LSB pie executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_s390x_gcc_Linux:                 ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1af9615d01208bc2bbf67b12b545bbf57912e3f2, for GNU/Linux 3.2.0, stripped
./busybox/busybox_s390x_musl_Linux:                ELF 64-bit MSB pie executable, IBM S/390, version 1 (SYSV), static-pie linked, stripped

--> SHA256SUM
$ sha256sum ./busybox/busybox_aarch64_arm64_gcc_Linux ./busybox/busybox_aarch64_arm64_musl_Linux ./busybox/busybox_amd_x86_64_gcc_Linux ./busybox/busybox_amd_x86_64_musl_Linux ./busybox/busybox_arm_abi_gcc_Linux ./busybox/busybox_arm_abi_musl_Linux ./busybox/busybox_arm_abihf_gcc_Linux ./busybox/busybox_arm_abihf_musl_Linux ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux ./busybox/busybox_armv7l_abihf_musl_Linux ./busybox/busybox_i686_x86_gcc_Linux ./busybox/busybox_m68k_gcc_Linux ./busybox/busybox_m68k_linux_musl_Linux ./busybox/busybox_mips64_gcc_Linux ./busybox/busybox_mips64_musl_Linux ./busybox/busybox_mips64el_gcc_Linux ./busybox/busybox_mips64el_musl_Linux ./busybox/busybox_mips_gcc_Linux ./busybox/busybox_mips_musl_Linux ./busybox/busybox_mipsel_gcc_Linux ./busybox/busybox_mipsel_musl_Linux ./busybox/busybox_powerpc64_gcc_Linux ./busybox/busybox_powerpc64_musl_Linux ./busybox/busybox_powerpc64_ppc64_gcc_Linux ./busybox/busybox_powerpc64le_gcc_Linux ./busybox/busybox_powerpc64le_musl_Linux ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux ./busybox/busybox_powerpc_gcc_Linux ./busybox/busybox_powerpc_musl_Linux ./busybox/busybox_powerpc_ppc_gcc_Linux ./busybox/busybox_riscv32_gcc_Linux ./busybox/busybox_riscv64_gcc_Linux ./busybox/busybox_riscv64_musl_Linux ./busybox/busybox_s390x_gcc_Linux ./busybox/busybox_s390x_musl_Linux
78372360f039c05188980d45bc95071e9c32b133b6e8ad152af2ff146569f040  ./busybox/busybox_aarch64_arm64_gcc_Linux
acb0de7ae1aacb15a8b77727ddf1fca6da0429dbaedcfea17be1ccc8e101cdaf  ./busybox/busybox_aarch64_arm64_musl_Linux
fe881010141752e09229f360d954a77d93edd5ddcc246a7809897ae7d08bab78  ./busybox/busybox_amd_x86_64_gcc_Linux
1d2db6565833b97c926a740ebf06c7d28100080980ee7c6cc0d16e672a0a4e76  ./busybox/busybox_amd_x86_64_musl_Linux
de72135e1f886fecd4a03d69f75587e4bfa1ee51eac0748a68e30a8ed7c5e033  ./busybox/busybox_arm_abi_gcc_Linux
e4e6d6e02967d6acb32b0da53a2f278752cc3b23abaf814bf13c33c2032ae96f  ./busybox/busybox_arm_abi_musl_Linux
4a58382fe71f8d0372412f3b25238ea86a70383633e05f051ed87893e07058cb  ./busybox/busybox_arm_abihf_gcc_Linux
01d3352c2e93e95f5bda12e3eda08a946b3409503bfb1c40f2960f2ac7c2996a  ./busybox/busybox_arm_abihf_musl_Linux
4f7fd2ade4d5f86d9f4f7556f2047942f4736f355663c359773c3b717dba3bd8  ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux
6933a2486306ef9fc096eaa1c452c27dd9b2d10b49c1aa39d63d8ee087213f2d  ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux
67fa5b35caeb60c35813f05061d1aba0cd182680a629011b360e121ec4efc820  ./busybox/busybox_armv7l_abihf_musl_Linux
f27afa7ff9da51108e8252d86bc2cbdfc0ae74f5f790cea57e4a5ebd1955bd65  ./busybox/busybox_i686_x86_gcc_Linux
291217396dd4b80db5c7ccab7abfabbfb0669fb0500ced245de76c4ce6085420  ./busybox/busybox_m68k_gcc_Linux
9d0f6153cecc659cca38d3f23ded1272d34973dc8703ff1f3a23d3a47498e2e4  ./busybox/busybox_m68k_linux_musl_Linux
04ce9491d3fdb1de5550d414179d18d1b268bf0b0821d1b461c8ebeabe854a2f  ./busybox/busybox_mips64_gcc_Linux
4aeecf188b342fead4ca59f37d1fe0839d0f676c8a44f83ca1fe2eee57229fcb  ./busybox/busybox_mips64_musl_Linux
4b04988f119962bfdf88e3b1c423dc963f027caca288decbb9b0770a0f2f606e  ./busybox/busybox_mips64el_gcc_Linux
dc3ba16fa5ee58262e5cea68450d195bccfc42c59ea29693f319c768e0eed8e1  ./busybox/busybox_mips64el_musl_Linux
0e97971fe424e5285e0c8b81a31e060a1014725c5c4e3e1b56775a1b3fa7514f  ./busybox/busybox_mips_gcc_Linux
12de1fcf594c2bbb39c68ec8e718c5af00f88491d43daa0991e90b913be331c8  ./busybox/busybox_mips_musl_Linux
5afc4e9af2fa56a97917d46e390fb3ce06ed90585a8b6b376e69c4facabf5425  ./busybox/busybox_mipsel_gcc_Linux
fc88cf8ee93989cdd3e9de7e930436137fe86a6ca5f7a0749d046cf359fac27f  ./busybox/busybox_mipsel_musl_Linux
64322145bc117859fa52f5af953378b08b65238ef00d1d54c0ce39472225c7c2  ./busybox/busybox_powerpc64_gcc_Linux
fce9ab1e46644c21f7399bb806cd063371f224f1703ea83b27fdccf55e51a57b  ./busybox/busybox_powerpc64_musl_Linux
cc9e8ea11a619ac5eeadd39cec26fa99181aa6e3bb479ae65bc44bfb31e0d4bb  ./busybox/busybox_powerpc64_ppc64_gcc_Linux
30d32aa4d400814ccbfea1e1a9b69603156aad39a398bdf1f8bc913e83ee4eb6  ./busybox/busybox_powerpc64le_gcc_Linux
3a7608756b2db046015a915a7140304676ac95a40f8a68be3f4e35555fdc9e9d  ./busybox/busybox_powerpc64le_musl_Linux
a8d498fb3fd3a53c169180d3ebb31954103ec6d1fdcb5da16644398e621f36e4  ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux
3c7c8a410e1024703d86f0866f212298c7aac56d17b3d3fc641204e9eb8631d2  ./busybox/busybox_powerpc_gcc_Linux
6561f8b543bbb524363cdb3d3488ef863d7310c3cd5d42945990b6100e94ce0b  ./busybox/busybox_powerpc_musl_Linux
419bee2645a70134d65406c6409949c7b132ca79eddfc426530c6dcb4a879bcd  ./busybox/busybox_powerpc_ppc_gcc_Linux
9646b88e615d30ad804ebd79a39ae3a9d528a80c67d33ebb75cb3b9589ff370e  ./busybox/busybox_riscv32_gcc_Linux
b666e4417cd9ad7fe54d6b79ba9a67b788d86af48b9e8d7f431c656fef055647  ./busybox/busybox_riscv64_gcc_Linux
8def7ee2c4fe93ba7d24e86ad4fb82eb9579cd7fce350743f3cf6624c6624579  ./busybox/busybox_riscv64_musl_Linux
1f534ca80046ff1c84e025e025d476b6b91d6cbbe2860bf3f935692c5118c69b  ./busybox/busybox_s390x_gcc_Linux
4e5d1e580fb185ccafd273c66793757e35fa30c0b0d1d79c19652dd85a815744  ./busybox/busybox_s390x_musl_Linux
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
1.5M  ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux
1.3M  ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux
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
2.9M  ./busybox/busybox_powerpc64_ppc64_gcc_Linux
2.9M  ./busybox/busybox_powerpc64le_gcc_Linux
1.6M  ./busybox/busybox_powerpc64le_musl_Linux
2.9M  ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux
2.4M  ./busybox/busybox_powerpc_gcc_Linux
1.5M  ./busybox/busybox_powerpc_musl_Linux
2.4M  ./busybox/busybox_powerpc_ppc_gcc_Linux
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
BusyBox v1.36.1 (2023-07-30 19:59:32 UTC) multi-call binary.
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

