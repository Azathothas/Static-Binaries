
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
./busybox/busybox_aarch64_arm64_gcc_Linux:         ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=d904221789f8661dd7bf7809cbe08f71798f79c0, for GNU/Linux 3.7.0, stripped
./busybox/busybox_aarch64_arm64_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_amd_x86_64_gcc_Linux:            ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=ea26e3aa3b5283428c88e45edda6c2bc89c00f70, for GNU/Linux 3.2.0, stripped
./busybox/busybox_amd_x86_64_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abi_gcc_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=9275fe2701cc2643d4a3fd7956ba1e186adef65d, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abi_musl_Linux:              ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_abihf_gcc_Linux:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=4114888ea06c4af74b38349ecaa2b20f12536d3a, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_abihf_musl_Linux:            ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux:  ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=993b4ba2512e726f86ee08f3e76734e01eee724b, for GNU/Linux 3.2.0, stripped
./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux: ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_armv7l_abihf_musl_Linux:         ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_i686_x86_gcc_Linux:              ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=955806e9802cdb61deafa22876d75912ec6be0d8, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_gcc_Linux:                  ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, BuildID[sha1]=7e4b4a6a37c8af6190eaa59638a4a1dd7fd5b867, for GNU/Linux 3.2.0, stripped
./busybox/busybox_m68k_linux_musl_Linux:           ELF 32-bit MSB pie executable, Motorola m68k, 68020, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64_gcc_Linux:                ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=87d3e2a3ff7ad0602d75fc4c8f63fc54dc4d0218, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64_musl_Linux:               ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips64el_gcc_Linux:              ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=62e132a5239d76dd13727c5c0360623ca6360fe3, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips64el_musl_Linux:             ELF 64-bit LSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mips_gcc_Linux:                  ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=dc0f3e51e48f397f04986651f8ec9b85312fbc79, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mips_musl_Linux:                 ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_mipsel_gcc_Linux:                ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=5dc3e1837af2b43794c0137457149f8835762130, for GNU/Linux 3.2.0, stripped
./busybox/busybox_mipsel_musl_Linux:               ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64_gcc_Linux:             ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=8ca9ad0a936373e8ffc5c7df269e550b89cb3f5c, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc64_musl_Linux:            ELF 64-bit MSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64_ppc64_gcc_Linux:       ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=1bfe63124c88a78e883a9af9e86e7dedec31b8f6, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc64le_gcc_Linux:           ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=456c73a2c52e4db36d45054390515d6f613bd318, for GNU/Linux 3.10.0, stripped
./busybox/busybox_powerpc64le_musl_Linux:          ELF 64-bit LSB pie executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc64le_ppc64le_gcc_Linux:   ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (GNU/Linux), statically linked, BuildID[sha1]=d7e3a67a8fb63b4b056a8c320a32d31c18df43b4, for GNU/Linux 3.10.0, stripped
./busybox/busybox_powerpc_gcc_Linux:               ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=6045bb0679ef90c0c2d49a1a88d44d3c1971a7d3, for GNU/Linux 3.2.0, stripped
./busybox/busybox_powerpc_musl_Linux:              ELF 32-bit MSB pie executable, PowerPC or cisco 4500, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_powerpc_ppc_gcc_Linux:           ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=8362af49efc59e4b1ad4abd778a6a58f45b9bffb, for GNU/Linux 3.2.0, stripped
./busybox/busybox_riscv32_gcc_Linux:               ELF 32-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, for GNU/Linux 5.4.0, stripped
./busybox/busybox_riscv64_gcc_Linux:               ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=fff26ff7e710a91d94006808f28268b9cdbef9cb, for GNU/Linux 4.15.0, stripped
./busybox/busybox_riscv64_musl_Linux:              ELF 64-bit LSB pie executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), static-pie linked, stripped
./busybox/busybox_s390x_gcc_Linux:                 ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=9236ce92348b9c30c3a5d7e45250e4e037b77317, for GNU/Linux 3.2.0, stripped
./busybox/busybox_s390x_musl_Linux:                ELF 64-bit MSB pie executable, IBM S/390, version 1 (SYSV), static-pie linked, stripped

--> SHA256SUM
$ sha256sum ./busybox/busybox_aarch64_arm64_gcc_Linux ./busybox/busybox_aarch64_arm64_musl_Linux ./busybox/busybox_amd_x86_64_gcc_Linux ./busybox/busybox_amd_x86_64_musl_Linux ./busybox/busybox_arm_abi_gcc_Linux ./busybox/busybox_arm_abi_musl_Linux ./busybox/busybox_arm_abihf_gcc_Linux ./busybox/busybox_arm_abihf_musl_Linux ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux ./busybox/busybox_armv7l_abihf_musl_Linux ./busybox/busybox_i686_x86_gcc_Linux ./busybox/busybox_m68k_gcc_Linux ./busybox/busybox_m68k_linux_musl_Linux ./busybox/busybox_mips64_gcc_Linux ./busybox/busybox_mips64_musl_Linux ./busybox/busybox_mips64el_gcc_Linux ./busybox/busybox_mips64el_musl_Linux ./busybox/busybox_mips_gcc_Linux ./busybox/busybox_mips_musl_Linux ./busybox/busybox_mipsel_gcc_Linux ./busybox/busybox_mipsel_musl_Linux ./busybox/busybox_powerpc64_gcc_Linux ./busybox/busybox_powerpc64_musl_Linux ./busybox/busybox_powerpc64_ppc64_gcc_Linux ./busybox/busybox_powerpc64le_gcc_Linux ./busybox/busybox_powerpc64le_musl_Linux ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux ./busybox/busybox_powerpc_gcc_Linux ./busybox/busybox_powerpc_musl_Linux ./busybox/busybox_powerpc_ppc_gcc_Linux ./busybox/busybox_riscv32_gcc_Linux ./busybox/busybox_riscv64_gcc_Linux ./busybox/busybox_riscv64_musl_Linux ./busybox/busybox_s390x_gcc_Linux ./busybox/busybox_s390x_musl_Linux
fe572eeab8ca144aad746aef58029b164ab36adba881a914cdbe6b9270e4aa58  ./busybox/busybox_aarch64_arm64_gcc_Linux
c0acd393767f33fbb544777fab4111216ac51d15fab3663ee89721c6ed6ade6d  ./busybox/busybox_aarch64_arm64_musl_Linux
a43745d007da078c6daa6130df9932575b7171221ce358e00d44fbef34b17e46  ./busybox/busybox_amd_x86_64_gcc_Linux
a83283f83826d50f8d5af602837401cb49b16cf58d9f452c509a5313f75ec9ce  ./busybox/busybox_amd_x86_64_musl_Linux
471a5b26af502245d4f5515c84f0881bfa6694c294b52c913ba5e2de74e784fd  ./busybox/busybox_arm_abi_gcc_Linux
545c857f6fca52fade222464f1a52ed4afec61d73c7e5beb9632b851b5cfbe51  ./busybox/busybox_arm_abi_musl_Linux
a27c0e838e0cb6f287d9c8357f2e2e26cde517aba83d7bdbf20dce19ba0fdcae  ./busybox/busybox_arm_abihf_gcc_Linux
650b3caa15ab0fc9fcff5af483ef804f7a46c9c19718e3a432ac43ee69ead6a4  ./busybox/busybox_arm_abihf_musl_Linux
4f7fd2ade4d5f86d9f4f7556f2047942f4736f355663c359773c3b717dba3bd8  ./busybox/busybox_arm_gnueabihf_armv7l_gcc_Linux
6933a2486306ef9fc096eaa1c452c27dd9b2d10b49c1aa39d63d8ee087213f2d  ./busybox/busybox_arm_gnueabihf_armv7l_musl_Linux
a76047026a9cd44f67e8cba5d21b683988d9a7be5ce050ddda88128b83afd8a4  ./busybox/busybox_armv7l_abihf_musl_Linux
699d554da4feaf416c79f5797a7200b51d72c2290f72e1e26a9a795b03969457  ./busybox/busybox_i686_x86_gcc_Linux
3f879bae4cdde49def164718b79b3e89c1e31e26396a72fe7ce3acfb65de8b10  ./busybox/busybox_m68k_gcc_Linux
82fc46ed5dcdc94bd7b8781ce9c3d9ba2c1ee080d0cea6f59c1b8e8349ac1594  ./busybox/busybox_m68k_linux_musl_Linux
0fdfe9b9704c6bef36ccd880cc3fa9e6c195dde156f05e32109e119696814b0d  ./busybox/busybox_mips64_gcc_Linux
7d4918b819d0a123eb71073222b1d8ac3247451a39262d6a51af70f362bb8319  ./busybox/busybox_mips64_musl_Linux
f55c7e323503de22547de17e64de0d8325083e49778ec6a6ad0b398a28c37ea3  ./busybox/busybox_mips64el_gcc_Linux
12c658bf368d1f25aca1622b9fd8c3da57c7c4320988c92ada6d6fdf499ab932  ./busybox/busybox_mips64el_musl_Linux
dc70337b69ee345674cb550534be5d614ae240c11c644a11f74e4188b7a95a51  ./busybox/busybox_mips_gcc_Linux
6b21400680f41fdeaa9d8b8c97c9b14c5cb43da965b4e72deb58ec3cd6aface5  ./busybox/busybox_mips_musl_Linux
584d77498d68a39c484359db1d0fe1c4dae23a37ff06098e12131042a04360b5  ./busybox/busybox_mipsel_gcc_Linux
f0cca522d3417d3520f253b995e098a3384dc73117b470dde62e44e9e11e9401  ./busybox/busybox_mipsel_musl_Linux
69aef08963a67ca268f1d907c12352995828867cde50eb39b280a867b825dba1  ./busybox/busybox_powerpc64_gcc_Linux
ddad6c9b28079bfce87b2c7b9efc8f537896a33109586b6f5a5c82071b9826cb  ./busybox/busybox_powerpc64_musl_Linux
cc9e8ea11a619ac5eeadd39cec26fa99181aa6e3bb479ae65bc44bfb31e0d4bb  ./busybox/busybox_powerpc64_ppc64_gcc_Linux
6554709168ff8065674603520933194c487679c4b31bf57093f414dacf364b70  ./busybox/busybox_powerpc64le_gcc_Linux
4eafe3f683ad43ae216a37b49be43a9d07bd08ef718aadb599663204bba9e12c  ./busybox/busybox_powerpc64le_musl_Linux
a8d498fb3fd3a53c169180d3ebb31954103ec6d1fdcb5da16644398e621f36e4  ./busybox/busybox_powerpc64le_ppc64le_gcc_Linux
a8e90535c08d260b73b1d8b504143938fffa4533f45e0e6c64adb05a947c37b1  ./busybox/busybox_powerpc_gcc_Linux
c08e1b88d74e7a4c1cd2caffddd990acc6bc5d8fe876319ce2503245653eeb8f  ./busybox/busybox_powerpc_musl_Linux
419bee2645a70134d65406c6409949c7b132ca79eddfc426530c6dcb4a879bcd  ./busybox/busybox_powerpc_ppc_gcc_Linux
c0fecd4a2cf52d035d055127e5c8e5df4749601d25308ad1b9c89cbf3c0cda63  ./busybox/busybox_riscv32_gcc_Linux
57f624c4a475a64410ab18dcfbadef6b99145263eb8770c3c4efecb5a0a729a4  ./busybox/busybox_riscv64_gcc_Linux
657e78462e3ca9f8e5bb65e97981430beddb374c6f4a821b707003a911328352  ./busybox/busybox_riscv64_musl_Linux
6661151b128589fabb102ef11b2baf0515f180ec0e9785dfde025be24605606d  ./busybox/busybox_s390x_gcc_Linux
03ff9fbd1fae0fa1f6b737e4513cccccfde33a590ea482ccde3a1e9acefeabe2  ./busybox/busybox_s390x_musl_Linux
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
BusyBox v1.36.1 (2023-07-28 09:54:14 UTC) multi-call binary.
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

