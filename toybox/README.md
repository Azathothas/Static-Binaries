
---
- #### Download Toybox
> - This is just a mirror of : http://landley.net/toybox/bin/
> - Nothing is rebuilt/re-compiled

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
--> arm64_aarch64 || arm64 [64-bit] (SYSV)
--> armv4l || arm-linux-gnueabi [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv5l || arm-linux-gnueabi  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv7l || (Little-Endian)  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
--> armv7m || arm-linux-gnueabihf || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES} (SYSV)
--> i486 || [32-bit] (SYSV)
--> i686 || x86_64 [32-bit] (SYSV)
--> microblaze || [32-bit] (SYSV)
--> m68k || Motorola_NXP [32-bit] (SYSV)
--> mips || MIPS (Big-Endian) [32-bit] (SYSV)
--> mipsel || MIPSel (Little-Endian) [32-bit] (SYSV)
--> mips64 || MIPS (Big-Endian) [64-bit] (SYSV)
--> powerpc || cisco 4500 [32-bit] (SYSV)
--> powerpc64 || cisco 7500 || Power ELF V1 ABI [64-bit] (SYSV)
--> powerpc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
--> s390x || IBM S/390 [64-bit] (SYSV)
--> sh2eb || UCB RISC-V || RVC [32-bit] (SYSV)
--> sh4 || UCB RISC-V || RVC [64-bit] (SYSV)
--> x86_64 || [64-bit] (SYSV)

!# Export
export TOYBOX_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_$TOYBOX_ARCH"
 wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_$TOYBOX_ARCH" 
```
---
- #### Install Toybox
```bash
!# Create a $USER Writeable DIR & export to PATH
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move the Downloaded Toybox binary to that DIR
 mv "$Path_To_Toybox_Binary" "$HOME/bin/toybox"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/toybox" && chmod +xwr $HOME/bin/*

#! Install & Symlink Everything : https://github.com/landley/toybox/issues/155
cd "$HOME/bin" && for i in $($HOME/bin/toybox); do ln -s toybox $i; done; PATH=$PWD:$PATH

```

---
```console

--> METADATA
./toybox/toybox_amd64_x86_64_Linux:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_amd64_x86_64_Linux.base64:  ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_arm64_aarch64:              ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_arm64_aarch64.base64:       ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_arm64_aarch64_Linux:        ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_arm64_aarch64_Linux.base64: ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv4l:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv4l.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv4l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv4l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv5l:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv5l.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv5l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv5l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7l:                     ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv7l.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv7l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7m:                     ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./toybox/toybox_armv7m.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7m_Linux:               ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./toybox/toybox_armv7m_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i486:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i486.base64:                ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i486_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i486_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i686:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i686.base64:                ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i686_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i686_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_m68k:                       ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, stripped
./toybox/toybox_m68k.base64:                ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_m68k_Linux:                 ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, stripped
./toybox/toybox_m68k_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_microblaze:                 ELF 32-bit MSB executable, Xilinx MicroBlaze 32-bit RISC, version 1 (SYSV), statically linked, stripped
./toybox/toybox_microblaze.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_microblaze_Linux:           ELF 32-bit MSB executable, Xilinx MicroBlaze 32-bit RISC, version 1 (SYSV), statically linked, stripped
./toybox/toybox_microblaze_Linux.base64:    ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips:                       ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips.base64:                ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips64:                     ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips64.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips64_Linux:               ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips64_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips_Linux:                 ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mipsel:                     ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mipsel.base64:              ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mipsel_Linux:               ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mipsel_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc:                    ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc.base64:             ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64:                  ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64.base64:           ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64_Linux:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64_Linux.base64:     ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64le:                ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64le.base64:         ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64le_Linux:          ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64le_Linux.base64:   ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc_Linux:              ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_s390x:                      ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./toybox/toybox_s390x.base64:               ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_s390x_Linux:                ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./toybox/toybox_s390x_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_sh2eb:                      ELF 32-bit MSB executable, Renesas SH, version 1 (SYSV), statically linked, stripped
./toybox/toybox_sh2eb.base64:               ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_sh4:                        ELF 32-bit LSB executable, Renesas SH, version 1 (SYSV), statically linked, stripped
./toybox/toybox_sh4.base64:                 ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_x86_64:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_x86_64.base64:              ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
69171b03ca3f221012fac692618ae74952f5892727f459c0370c64b61c0780d4  ./toybox/toybox_amd64_x86_64_Linux
ffb45db8d81f43f0319d2161768d3e9c2a848b82ff24bc6b919ea78d15e22185  ./toybox/toybox_amd64_x86_64_Linux.base64
38a823d5cb7064bc8eafd82f2ae3c1acb4d45463f63ae05d8cfc0b0a5708a68b  ./toybox/toybox_arm64_aarch64
581b42c760841bf50aa513cac3b673f2d40f91bb3d2ebf800279963d38487777  ./toybox/toybox_arm64_aarch64.base64
ef98721241d9949fc4b2472bbef76260c9669e8e5d0d7ac99de50fff26cc1aa9  ./toybox/toybox_arm64_aarch64_Linux
918dc60a1cc29eca9beb7f7198b985a6ee75c8af253cf830e3d4023c0cdeb0a9  ./toybox/toybox_arm64_aarch64_Linux.base64
42674e3145494057eccba1c0210090839ca2bf3d8fa05788134c15b606b97187  ./toybox/toybox_armv4l
584fe11fdb4d92480f52f6e20b3d9cdf8d8804c05d52947c8645a1b5d43e82cb  ./toybox/toybox_armv4l.base64
ee2fc96e556643e967874802532476cd1fdf23164f8b7bd7a33dc7d56d465daa  ./toybox/toybox_armv4l_Linux
2fb0d4ff90abec13df76d966e336c67866d7d51c49228d68cc36521240b1bc63  ./toybox/toybox_armv4l_Linux.base64
66205af885150d068899bc4a082cf3115b043f5ea9de19c0cec2a575098ae671  ./toybox/toybox_armv5l
6eb09bae1b81c3e3de6d39801c9ba87cdaeda42c3aea7fa5dc5f67f0b29cf2de  ./toybox/toybox_armv5l.base64
5781e5fc2f9f9673ad6af807ccf52c596a8268dd22d73ea5d8ca906377f17964  ./toybox/toybox_armv5l_Linux
fb6a2a0f6f5b0ca5ad0cca267b09e926f8d8d57cf687051d6d8d3782b924476d  ./toybox/toybox_armv5l_Linux.base64
dda067ddfad2ac7ab7394fbe0c696384bc27923f564f27b980c8f23c62674202  ./toybox/toybox_armv7l
571bd6ffeb518679076382e3854aee1f5d2626cf3929b28ca4985cfc077f80b8  ./toybox/toybox_armv7l.base64
413f3f53331f1c893157c37a6b709d09859cb23460edb800a6fbd7b79024a558  ./toybox/toybox_armv7l_Linux
82b72e3ab3fade46ba6dcab1fc0ea80e42c7648f4cc74b665a1b1be7c70f96f6  ./toybox/toybox_armv7l_Linux.base64
d8679cde247ccab6aaf7e5b9fcb14d09b44d52ba2e2bddc3b55b7eabde613174  ./toybox/toybox_armv7m
701b7612ed7b770370612a999d02c2b2e4dfc69ebd05802e3bfb078468feff92  ./toybox/toybox_armv7m.base64
78db7bcada574fd5bfb9b03eb7815e5bf8ff5519e8567fd429c0f70a65edcb93  ./toybox/toybox_armv7m_Linux
d830d2f41f3e3cd5aab0871dadb467cf2c4df238d31862551d1912610b8fe7e3  ./toybox/toybox_armv7m_Linux.base64
39a667a782e4c077389d7e800185b9df713c10eeb9884401cbfee6e7be3d8496  ./toybox/toybox_i486
f7aecda84fc77f786f097f8b972cfda0a2146ccf9d5996924890de6084fcf9f2  ./toybox/toybox_i486.base64
d65905697112d7f964573e47ad5dd52170135241947768cbcfdd03312bce735c  ./toybox/toybox_i486_Linux
cc685b1233827c7725c9294b4bbf32c35bb4b2080c981e0390e2d85e17b5fba6  ./toybox/toybox_i486_Linux.base64
f7fad74aed8103f72828a3c5f1edf567e48151632a26963e0159bbd1de0e1130  ./toybox/toybox_i686
6a21b9189cdbea87bd461e73c6bcd5f427c6deaa29ebb7fc3f1700a21c6a91a6  ./toybox/toybox_i686.base64
c2e9002ff4826e76c6192e464c7b05188008b536dee82d1f5c92936f54f08744  ./toybox/toybox_i686_Linux
0d6a3b2a8d7f6148f2e6c289c1fbccb6238efeafb471f0044bb78b19821b7d04  ./toybox/toybox_i686_Linux.base64
4761414d451071957eba4a98a7c643680b84f363d6c0c7b356db7d0496659c20  ./toybox/toybox_m68k
58c6d9044f4e69d1a3bf146b476d916abf65bc86c162eb422f9ebd7a8245bef3  ./toybox/toybox_m68k.base64
36f03e17d672ec4d8053f1db8bd855f4d7c7adf73c0edad3c50d8267143ab2cf  ./toybox/toybox_m68k_Linux
6e935f202c68d04aec0e9ececb71e07bce95bd48d835309a10715ec87503c0a9  ./toybox/toybox_m68k_Linux.base64
4b8ab3fa8697ab8882428d4789857a42ead07189a5a0cacf955532a970a4df8d  ./toybox/toybox_microblaze
86f674d9323c5c48ca5723a63e814290aae925ee4fbd9f8743e17d8885e806f1  ./toybox/toybox_microblaze.base64
ef3a4d6dcce9d3eae732aba0c2ffa1b2a5782df5e2912fe2b2b85cc41163e706  ./toybox/toybox_microblaze_Linux
1428173514f4aa9d155f400b2e778dfc5191752c07f34ba9b0c693a0a96c2a16  ./toybox/toybox_microblaze_Linux.base64
1a842ee391d262a95ed41a516114a3c5b57c956dfc028642e9db731ee816891e  ./toybox/toybox_mips
a930c4182f868c7419862557768e89e0abe5b5ba5e2b68b4d495b0ed2bb908d5  ./toybox/toybox_mips.base64
f4b680a356dee38bac17d159a231f2b5324cf8961d183bf47287377b81ec6dc8  ./toybox/toybox_mips64
a33d986742d6cf2ab425fc0366caf8f8b268de918b881bab383b48bfdbe083fd  ./toybox/toybox_mips64.base64
2d3324aa6eb311e975944e98cc2005279a7f77bb9db340181f6f13b2534a42ed  ./toybox/toybox_mips64_Linux
17c6c3343aa48af314eb4a4000272cb27cedc4a3bd6fc69b9c4468e4cca63429  ./toybox/toybox_mips64_Linux.base64
043bfa4f0731a90f10d1ffb07ed81ee70c3b018b7b7fa0460fd1cad6d7c1a425  ./toybox/toybox_mips_Linux
3963ce7c39e330390e1d6a66fa6080e893744b5aa80e0807e9cdac38b19c6bb8  ./toybox/toybox_mips_Linux.base64
054460d41e21d270cf8f3435515ba9a9fce6e823687229d9adb336025982532c  ./toybox/toybox_mipsel
e0038e676f04bce6dcb454519007658d0f0200d516b310e5a8721a8212979f72  ./toybox/toybox_mipsel.base64
14e5a0c593f835d92633bbef7561363b0065b7e7011da3c7c94f9713fc411c44  ./toybox/toybox_mipsel_Linux
adeb03ebe9a712a50987fee75165be2c70a706bdf3e8d25b0189a17e73bac619  ./toybox/toybox_mipsel_Linux.base64
c31202726e49ad4d33eb3ad03638e283f172f0579d15ea21d79184828123b77c  ./toybox/toybox_powerpc
b92d19f8642bde63ff9c00d34fde20968a6fec31f92a3738d8f0b75f22cdd334  ./toybox/toybox_powerpc.base64
0946b0bde7dab55e6ee8e3c906c893cd760ce3d95e5d2a99890a4ec5790aebb9  ./toybox/toybox_powerpc64
1fcf472e6eccf4d12ec2e836b5b9172dfbaeaa54060f90e9ab7debcb7b7d08ed  ./toybox/toybox_powerpc64.base64
a0c26a88d443cf974beddecfd76f3a8d82c6fc8d5a215a1c1454dcdf2cae9b8f  ./toybox/toybox_powerpc64_Linux
d7e1457e4f8a13c6b0e45ec6026f77821119539bdfe523889d07b37df41da6cd  ./toybox/toybox_powerpc64_Linux.base64
88faa92f7a8c3962b67f820d3811951d53fd76c01909d0a339acff0900920f5e  ./toybox/toybox_powerpc64le
579e20f6cbc4ec1142264e628455099e0fb7b0fc0b9b6440baecc0142d860f61  ./toybox/toybox_powerpc64le.base64
0664ca5db5304568e838c9e69375d18630ddedf399858748a47b8cef1ea06b29  ./toybox/toybox_powerpc64le_Linux
2c3336de0fc03c2d9980d7e37ab95f5505fc8a4709c33d26ed5b9374832145d9  ./toybox/toybox_powerpc64le_Linux.base64
ef27ce10b3169b078801ce491fc08bd50809e779f30b223090e19ed6b4c2d57e  ./toybox/toybox_powerpc_Linux
6cceb2b35df6a88d3ed6eab98fe1ad6bdf68416963aff04d337655afc66466b8  ./toybox/toybox_powerpc_Linux.base64
827df3fbb42c8867be169bc21a5195e1cfd7fbb5e5a2a2ceaf3b51d23d4878b8  ./toybox/toybox_s390x
dfc79e77a45ff83a62e6dd84b6f13b9e1d0d95ece055ba5ffa85228fdb44e0f4  ./toybox/toybox_s390x.base64
27296de2c95e15681a06bfa7196da42fcb4c09596e32f89b599db88f56034cea  ./toybox/toybox_s390x_Linux
dffdfd9a7a2a2728c06ee915f171a8a9e00c14cff15a4cef6cae332c5305bc4f  ./toybox/toybox_s390x_Linux.base64
dd4bd26011f338faa37171b3fcfccc5ae526283b3b8fc1aa877325e17ad678b3  ./toybox/toybox_sh2eb
9bdb0577b4af33a75d3f4aa868b31fb238e8cba147a74498f46f5abe4d773365  ./toybox/toybox_sh2eb.base64
5409f974aabeb02aadd74efccb1d692abbfe4ab49d570582e98ff9db84ea2e72  ./toybox/toybox_sh4
76686020b933d4595fd04891f5d8c67e0cc37b32e394665a909d91249452e033  ./toybox/toybox_sh4.base64
961688267a57b664e009d6c3f1d3b36b32b8810f3fce21412a332a75432af8f9  ./toybox/toybox_x86_64
729c76fc224f7d9bc548415fe808896c155996765892427b4ce91cfaa47fd18a  ./toybox/toybox_x86_64.base64
```


---

- #### Version
```console
/bin/bash: line 1: ./toybox/toybox_amd_x86_64_Linux: No such file or directory
