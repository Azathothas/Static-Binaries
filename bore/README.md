
---
- #### Download [bore](https://github.com/ekzhang/bore)
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using cross (https://github.com/cross-rs/cross)
> > 
> > --> macOS:
> >      - https://github.com/ekzhang/bore/releases
> > 
> > --> Windows:
> >      - https://github.com/ekzhang/bore/releases
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

!# Android
--> aarch64 || arm64 || v8a [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_aarch64_arm64_Android"
--> ARM_abi || ARMv5 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv_abi_Android"
--> ARM_abi || ARMv7 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv7_abi_Android"
--> i686 || Intel 80386 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_i686_Android"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_aarch64_arm64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_aarch64_arm64_musl_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_64_musl_Linux"
--> ARM_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_arm_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_arm_abi_musl_Linux"
--> ARM_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_arm_abihf_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_arm_abihf_musl_Linux"
--> ARMv7_abi [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv7_abi_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv7_abi_musl_Linux"
--> ARMv7_abihf [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv7_abihf_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_armv7_abihf_musl_Linux"
--> i586 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_i586_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_i586_musl_Linux"
--> i686 || x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_i686_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_i686_musl_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips_musl_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mipsel_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mipsel_musl_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips64_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips64_musl_Linux"
--> MIPS64el || MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips64el_gcc_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_mips64el_musl_Linux"
--> powerpc || ppc || cisco 4500 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_powerpc_ppc_gcc_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_powerpc64_ppc64_gcc_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_powerpc64le_ppc64le_gcc_Linux"
--> risc64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_riscv64_gcc_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_s390x_gcc_Linux"
--> SPARC V9 || Sun UltraSPARC1 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_sparc64_gcc_Linux"

!# macOS
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_x86_64_macOS"

#Windows
--> Amd_x86 || x86 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_Windows.exe"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/bore/bore_amd_x86_64_Windows.exe"

```
---
- #### Install bore
```bash
!# Recommended way to install bore is:
  cargo install bore-cli
!# Compile Dynamically from source 
  cargo install --git "https://github.com/ekzhang/bore"

!# Copy downloaded bore binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded bore binaries to that DIR
 mv "$Path_To_bore_Binary" "/usr/bin/bore"

!# Give Writeable Perms
 chmod +xwr /usr/bin/bore*
```

---
```console
$ file ./bore/bore_aarch64_arm64_Android ./bore/bore_aarch64_arm64_gcc_Linux ./bore/bore_aarch64_arm64_macOS ./bore/bore_aarch64_arm64_musl_Linux ./bore/bore_amd_x86_64_Windows.exe ./bore/bore_amd_x86_64_gcc_Linux ./bore/bore_amd_x86_64_musl_Linux ./bore/bore_amd_x86_Windows.exe ./bore/bore_amd_x86_i686_gcc_Linux ./bore/bore_amd_x86_i686_musl_Linux ./bore/bore_arm_abi_gcc_Linux ./bore/bore_arm_abi_musl_Linux ./bore/bore_arm_abihf_gcc_Linux ./bore/bore_arm_abihf_musl_Linux ./bore/bore_armv7_abi_Android ./bore/bore_armv7_abi_gcc_Linux ./bore/bore_armv7_abi_musl_Linux ./bore/bore_armv7_abihf_gcc_Linux ./bore/bore_armv7_abihf_musl_Linux ./bore/bore_armv_abi_Android ./bore/bore_i586_gcc_Linux ./bore/bore_i586_musl_Linux ./bore/bore_i686_Android ./bore/bore_mips64_gcc_Linux ./bore/bore_mips64_musl_Linux ./bore/bore_mips64el_gcc_Linux ./bore/bore_mips64el_musl_Linux ./bore/bore_mips_gcc_Linux ./bore/bore_mips_musl_Linux ./bore/bore_mipsel_gcc_Linux ./bore/bore_mipsel_musl_Linux ./bore/bore_powerpc64_ppc64_gcc_Linux ./bore/bore_powerpc64le_ppc64le_gcc_Linux ./bore/bore_powerpc_ppc_gcc_Linux ./bore/bore_riscv64_gcc_Linux ./bore/bore_s390x_gcc_Linux ./bore/bore_sparc64_gcc_Linux ./bore/bore_x86_64_macOS
./bore/bore_aarch64_arm64_Android:         ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./bore/bore_aarch64_arm64_gcc_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=73c7b68c3b38e5bec27f423c6eadacbd4cd39da4, for GNU/Linux 3.7.0, stripped
./bore/bore_aarch64_arm64_macOS:           Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE|HAS_TLV_DESCRIPTORS>
./bore/bore_aarch64_arm64_musl_Linux:      ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./bore/bore_amd_x86_64_Windows.exe:        PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./bore/bore_amd_x86_64_gcc_Linux:          ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, BuildID[sha1]=5e07df2921bc5ff84b04c1a23744856c4f5de95f, for GNU/Linux 3.2.0, stripped
./bore/bore_amd_x86_64_musl_Linux:         ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./bore/bore_amd_x86_Windows.exe:           PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./bore/bore_amd_x86_i686_gcc_Linux:        ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, BuildID[sha1]=98db4ea1e217ddc9991b27dc9e4a0d93167a6621, for GNU/Linux 3.2.0, stripped
./bore/bore_amd_x86_i686_musl_Linux:       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./bore/bore_arm_abi_gcc_Linux:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=61595f152f93897029f0f36f3a95bd8552499cfc, for GNU/Linux 3.2.0, stripped
./bore/bore_arm_abi_musl_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_arm_abihf_gcc_Linux:           ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, for GNU/Linux 4.19.21, stripped
./bore/bore_arm_abihf_musl_Linux:          ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_armv7_abi_Android:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_armv7_abi_gcc_Linux:           ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=09364ac3ec98ec5de872e80bf94ec80ee67cbedd, for GNU/Linux 3.2.0, stripped
./bore/bore_armv7_abi_musl_Linux:          ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_armv7_abihf_gcc_Linux:         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=dc4515d9487acb4fdd5c34ab38aedb5b5cd883a2, for GNU/Linux 3.2.0, stripped
./bore/bore_armv7_abihf_musl_Linux:        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_armv_abi_Android:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./bore/bore_i586_gcc_Linux:                ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, BuildID[sha1]=3abc1aabdcba0784879a33f120a7840410bb481b, for GNU/Linux 3.2.0, stripped
./bore/bore_i586_musl_Linux:               ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./bore/bore_i686_Android:                  ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./bore/bore_mips64_gcc_Linux:              ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=3dc8ddc1663bbf5bd2156c3c52fc4a4e13664f8d, for GNU/Linux 3.2.0, stripped
./bore/bore_mips64_musl_Linux:             ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, stripped
./bore/bore_mips64el_gcc_Linux:            ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=baff583c8467e3d3f3eb2352e73b6f2db4828085, for GNU/Linux 3.2.0, stripped
./bore/bore_mips64el_musl_Linux:           ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, stripped
./bore/bore_mips_gcc_Linux:                ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=6b8197a890c465790da3bad2428544d44383f686, for GNU/Linux 3.2.0, stripped
./bore/bore_mips_musl_Linux:               ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, stripped
./bore/bore_mipsel_gcc_Linux:              ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=5573a0a24b5e75c5091a2e26d5f131314e566022, for GNU/Linux 3.2.0, stripped
./bore/bore_mipsel_musl_Linux:             ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, stripped
./bore/bore_powerpc64_ppc64_gcc_Linux:     ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, BuildID[sha1]=8ec6130856da2a8767f1420242af1250c763969a, for GNU/Linux 3.2.0, stripped
./bore/bore_powerpc64le_ppc64le_gcc_Linux: ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, BuildID[sha1]=41fef33d5daaf25c80d68d9d57b572297a59141a, for GNU/Linux 3.10.0, stripped
./bore/bore_powerpc_ppc_gcc_Linux:         ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=7a5a02ab99cfccb86dbcff5a5e207b9c8642fedf, for GNU/Linux 3.2.0, stripped
./bore/bore_riscv64_gcc_Linux:             ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=b50bc4241b7e24e4b4c0e3141dc8b88091f1ce4e, for GNU/Linux 4.15.0, stripped
./bore/bore_s390x_gcc_Linux:               ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=c40722a1496b19ee5312ce56361dd7a80021ffc8, for GNU/Linux 3.2.0, stripped
./bore/bore_sparc64_gcc_Linux:             ELF 64-bit MSB executable, SPARC V9, Sun UltraSPARC1 Extensions Required, total store ordering, version 1 (SYSV), statically linked, BuildID[sha1]=b4a05f6bc63a599234d7d917f7aa72f0ba8bc014, for GNU/Linux 3.2.0, stripped
./bore/bore_x86_64_macOS:                  Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE|HAS_TLV_DESCRIPTORS>

--> SHA256SUM
8acf3ad5c57120d8a8be16aa7373ff9c2282ffac5d3f27c1ac31ff07b129f4bc  ./bore/bore_aarch64_arm64_Android
6652a48e7f9658c887e6845a6ceffc008022272be930a8cb02a2f8396e5ccfda  ./bore/bore_aarch64_arm64_gcc_Linux
abd74b3d772b78a9bacbef2a92d168a47870aeb7edcac4bcc35d53b2e3b5b443  ./bore/bore_aarch64_arm64_macOS
5032f9302457e2f421779ef8c8f4cd1cf0b0a48a1c48ca54c37d4bfc53eb9689  ./bore/bore_aarch64_arm64_musl_Linux
4d4fb015af0f1403597b2f9542d65d557c837bd2ed99711c2b732e4f5efc3af4  ./bore/bore_amd_x86_64_Windows.exe
815dc7c098be0610c9cef47ee0e6039ec26fb6134dcd831f990552607d0e07d9  ./bore/bore_amd_x86_64_gcc_Linux
9fa324a78b79efbac24872071059372daa992520e88436573a33eda359b21552  ./bore/bore_amd_x86_64_musl_Linux
138f366e2d5bbd9cbb4ac3fd69f59a8238abf86a50189e49384c8f02f2e868c2  ./bore/bore_amd_x86_Windows.exe
3f2ba4ee0f116e3929eaf25addd670c11d9f0f95cfc45ea8f75950aae667f055  ./bore/bore_amd_x86_i686_gcc_Linux
e1ba4020a49a796e6848096d004126c6492d554a8b1b75fbb8b729ab40ec7ae3  ./bore/bore_amd_x86_i686_musl_Linux
697ce58da0a11a782afcfafcf3b759b3e1e7a29c1a672794cdecf41fc7ac5120  ./bore/bore_arm_abi_gcc_Linux
fca8d6aa5f1355864306fcd322940b82407d4f61290cf87f6a8f011e763542e9  ./bore/bore_arm_abi_musl_Linux
5024cddfa2c6dfde6a1c918647230ca1d73cf076d762001f2057c8c416c5ed55  ./bore/bore_arm_abihf_gcc_Linux
3312e94656d578a85dbd19b49c030798a99c5dce3a4295df6d3ac1b4f325c0cb  ./bore/bore_arm_abihf_musl_Linux
6a9a948c3fcb04a56db9c3873481e426a0049372bb37a11c2e854762b55afd5b  ./bore/bore_armv7_abi_Android
f3533d9004292147128344b27dbaab50be23ec69f426f6d4a0e7a5e76029738a  ./bore/bore_armv7_abi_gcc_Linux
ceb85b2316489513ed92fe91e07a1dc2112093f95bc36961fbe66a1707063564  ./bore/bore_armv7_abi_musl_Linux
67f36ad18bc290268357944c36f587cf6cbf6bf0821b0ea2b1d9bdc5f861864f  ./bore/bore_armv7_abihf_gcc_Linux
19e7664f5810419214af985e06ee99855f81327a1a9755a1392be7c98a8125bf  ./bore/bore_armv7_abihf_musl_Linux
e416f461cfc13dd773ada3240c2fcc6cbf038e1ddee8f679eb84b680c97adbad  ./bore/bore_armv_abi_Android
39c09e4338ea037ccd298509b8bbb3be87b50966d2e4fdda9fa41df1f1ce702c  ./bore/bore_i586_gcc_Linux
c5b8f155613ba866a23bdecf69aecec7b580fa37b590401e60aa4e0ce7bfa5ce  ./bore/bore_i586_musl_Linux
d1cb5eec17e9a48caada94a8788696509defcc94dada83b24ace6fab2899665c  ./bore/bore_i686_Android
4be810533490b43e0fc59bab2132c2485dd4285f6a68f533dfcded726ecbf104  ./bore/bore_mips64_gcc_Linux
07ea5e96766e2b1f35feb1ef823af53adfad22d0e0ad129e94d5db8307b98012  ./bore/bore_mips64_musl_Linux
1b413a2f4186c1c8f48b27ab15cad549c76ef2f4d40084f1936e7cae0fa44407  ./bore/bore_mips64el_gcc_Linux
f1da60bb75107d4ef527c2343a566079f7d8da8559fb409bb4e3393954c8649b  ./bore/bore_mips64el_musl_Linux
8d0a62156bdcf50a0acb4cb5de04e46724ad31b93a2f043b29631b90907e0323  ./bore/bore_mips_gcc_Linux
15f540a27495d8e9afd6ff422e8f6962cb56c6833a32213017ac88efbcbb7ab6  ./bore/bore_mips_musl_Linux
9c6d0da32751dda461276975bce5c11cf373b54a47240f7958e585a66684147b  ./bore/bore_mipsel_gcc_Linux
01b50222959e138d5acffc8ca2c98c450011b82d4630c3767bac4aac4476103c  ./bore/bore_mipsel_musl_Linux
7a174b200e8da658ed3c2736dc478d0c8a3035a2a05c7dfb2e17f41d4fbef8da  ./bore/bore_powerpc64_ppc64_gcc_Linux
236c77058ef1de8748c93055e81acb08814b76a05f33b988aa62821bfd057538  ./bore/bore_powerpc64le_ppc64le_gcc_Linux
b7e84aed10ecfd3a30eca105c9c1d9256075417c7c6b8432799fbabed306bff4  ./bore/bore_powerpc_ppc_gcc_Linux
cbdfa5ac6dbff6a0dff21f17a665d153df0502a262873bc715d089979a7adcaa  ./bore/bore_riscv64_gcc_Linux
d4b3b9d238f1e2b09e0a58af711e9deed4a8388ef124bc78b4d06f21d97cde14  ./bore/bore_s390x_gcc_Linux
6c8811082e78e9bfffd9a79c354f41bcd6154945e43a19688ddb45d7841ef99c  ./bore/bore_sparc64_gcc_Linux
b57c1d828841dd741de73add0d5fc66477666022f1d019a42af2cea1670f84b2  ./bore/bore_x86_64_macOS
```


---

- #### Sizes

```console
1.7M  ./bore/bore_aarch64_arm64_Android
1.8M  ./bore/bore_aarch64_arm64_gcc_Linux
2.6M  ./bore/bore_aarch64_arm64_macOS
1.2M  ./bore/bore_aarch64_arm64_musl_Linux
1.8M  ./bore/bore_amd_x86_64_Windows.exe
2.4M  ./bore/bore_amd_x86_64_gcc_Linux
1.5M  ./bore/bore_amd_x86_64_musl_Linux
1.5M  ./bore/bore_amd_x86_Windows.exe
2.2M  ./bore/bore_amd_x86_i686_gcc_Linux
1.3M  ./bore/bore_amd_x86_i686_musl_Linux
1.7M  ./bore/bore_arm_abi_gcc_Linux
1.2M  ./bore/bore_arm_abi_musl_Linux
1.7M  ./bore/bore_arm_abihf_gcc_Linux
1.2M  ./bore/bore_arm_abihf_musl_Linux
1.1M  ./bore/bore_armv7_abi_Android
1.6M  ./bore/bore_armv7_abi_gcc_Linux
1.2M  ./bore/bore_armv7_abi_musl_Linux
1.5M  ./bore/bore_armv7_abihf_gcc_Linux
1.2M  ./bore/bore_armv7_abihf_musl_Linux
1.3M  ./bore/bore_armv_abi_Android
2.2M  ./bore/bore_i586_gcc_Linux
1.3M  ./bore/bore_i586_musl_Linux
1.8M  ./bore/bore_i686_Android
2.3M  ./bore/bore_mips64_gcc_Linux
1.8M  ./bore/bore_mips64_musl_Linux
2.3M  ./bore/bore_mips64el_gcc_Linux
1.8M  ./bore/bore_mips64el_musl_Linux
2.3M  ./bore/bore_mips_gcc_Linux
1.9M  ./bore/bore_mips_musl_Linux
2.3M  ./bore/bore_mipsel_gcc_Linux
1.8M  ./bore/bore_mipsel_musl_Linux
2.4M  ./bore/bore_powerpc64_ppc64_gcc_Linux
2.4M  ./bore/bore_powerpc64le_ppc64le_gcc_Linux
2.2M  ./bore/bore_powerpc_ppc_gcc_Linux
1.6M  ./bore/bore_riscv64_gcc_Linux
2.1M  ./bore/bore_s390x_gcc_Linux
2.0M  ./bore/bore_sparc64_gcc_Linux
2.5M  ./bore/bore_x86_64_macOS
```

---

- #### Version
```console

$ ./bore/bore_amd_x86_64_musl_Linux --version
bore-cli 0.5.0

$ ./bore/bore_amd_x86_64_musl_Linux -h
A modern, simple TCP tunnel in Rust that exposes local ports to a remote server, bypassing standard NAT connection firewalls.

Usage: bore_amd_x86_64_musl_Linux <COMMAND>

Commands:
  local   Starts a local proxy to the remote server
  server  Runs the remote proxy server
  help    Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help
  -V, --version  Print version


```

---

