
---
- #### Download [Toybox](http://landley.net/toybox/) 
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

!# Linux
--> arm64_aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_arm64_aarch64_Linux"
--> AMD || x86_64 || [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_amd_x86_64_Linux"
--> armv4l || arm-linux-gnueabi [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_armv4l_Linux"
--> armv5l || arm-linux-gnueabi  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_armv5l_Linux"
--> armv7l || (Little-Endian)  [32-bit] {Hardware Floating-Point Unit (FPU) support : NO} (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_armv7l_Linux"
--> armv7m || arm-linux-gnueabihf || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES} (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_armv7m_Linux"
--> i486 || [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_i486_Linux"
--> i686 || x86_64 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_i686_Linux"
--> microblaze || [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_m68k_Linux"
--> m68k || Motorola_NXP [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_microblaze_Linux"
--> mips || MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_mips_Linux"
--> mipsel || MIPSel (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_mipsel_Linux"
--> mips64 || MIPS (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_mips64_Linux"
--> powerpc || cisco 4500 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_powerpc_Linux"
--> powerpc64 || cisco 7500 || Power ELF V1 ABI [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_powerpc64_Linux"
--> powerpc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_powerpc64le_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_s390x_Linux"
--> sh4 || UCB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/toybox/toybox_sh4_Linux"
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
./toybox/toybox_amd_x86_64_Linux:           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_amd_x86_64_Linux.base64:    ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_arm64_aarch64_Linux:        ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_arm64_aarch64_Linux.base64: ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv4l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv4l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv5l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv5l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7l_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv7l_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7m_Linux:               ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./toybox/toybox_armv7m_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i486_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i486_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i686_Linux:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i686_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_m68k_Linux:                 ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, stripped
./toybox/toybox_m68k_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_microblaze_Linux:           ELF 32-bit MSB executable, Xilinx MicroBlaze 32-bit RISC, version 1 (SYSV), statically linked, stripped
./toybox/toybox_microblaze_Linux.base64:    ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips64_Linux:               ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips64_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips_Linux:                 ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips_Linux.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mipsel_Linux:               ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mipsel_Linux.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64_Linux:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64_Linux.base64:     ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64le_Linux:          ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64le_Linux.base64:   ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc_Linux:              ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc_Linux.base64:       ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_s390x_Linux:                ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./toybox/toybox_s390x_Linux.base64:         ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_sh4_Linux:                  ELF 32-bit LSB executable, Renesas SH, version 1 (SYSV), statically linked, stripped
./toybox/toybox_sh4_Linux.base64:           ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
69171b03ca3f221012fac692618ae74952f5892727f459c0370c64b61c0780d4  ./toybox/toybox_amd_x86_64_Linux
ffb45db8d81f43f0319d2161768d3e9c2a848b82ff24bc6b919ea78d15e22185  ./toybox/toybox_amd_x86_64_Linux.base64
ef98721241d9949fc4b2472bbef76260c9669e8e5d0d7ac99de50fff26cc1aa9  ./toybox/toybox_arm64_aarch64_Linux
918dc60a1cc29eca9beb7f7198b985a6ee75c8af253cf830e3d4023c0cdeb0a9  ./toybox/toybox_arm64_aarch64_Linux.base64
ee2fc96e556643e967874802532476cd1fdf23164f8b7bd7a33dc7d56d465daa  ./toybox/toybox_armv4l_Linux
2fb0d4ff90abec13df76d966e336c67866d7d51c49228d68cc36521240b1bc63  ./toybox/toybox_armv4l_Linux.base64
5781e5fc2f9f9673ad6af807ccf52c596a8268dd22d73ea5d8ca906377f17964  ./toybox/toybox_armv5l_Linux
fb6a2a0f6f5b0ca5ad0cca267b09e926f8d8d57cf687051d6d8d3782b924476d  ./toybox/toybox_armv5l_Linux.base64
413f3f53331f1c893157c37a6b709d09859cb23460edb800a6fbd7b79024a558  ./toybox/toybox_armv7l_Linux
82b72e3ab3fade46ba6dcab1fc0ea80e42c7648f4cc74b665a1b1be7c70f96f6  ./toybox/toybox_armv7l_Linux.base64
78db7bcada574fd5bfb9b03eb7815e5bf8ff5519e8567fd429c0f70a65edcb93  ./toybox/toybox_armv7m_Linux
d830d2f41f3e3cd5aab0871dadb467cf2c4df238d31862551d1912610b8fe7e3  ./toybox/toybox_armv7m_Linux.base64
d65905697112d7f964573e47ad5dd52170135241947768cbcfdd03312bce735c  ./toybox/toybox_i486_Linux
cc685b1233827c7725c9294b4bbf32c35bb4b2080c981e0390e2d85e17b5fba6  ./toybox/toybox_i486_Linux.base64
c2e9002ff4826e76c6192e464c7b05188008b536dee82d1f5c92936f54f08744  ./toybox/toybox_i686_Linux
0d6a3b2a8d7f6148f2e6c289c1fbccb6238efeafb471f0044bb78b19821b7d04  ./toybox/toybox_i686_Linux.base64
36f03e17d672ec4d8053f1db8bd855f4d7c7adf73c0edad3c50d8267143ab2cf  ./toybox/toybox_m68k_Linux
6e935f202c68d04aec0e9ececb71e07bce95bd48d835309a10715ec87503c0a9  ./toybox/toybox_m68k_Linux.base64
ef3a4d6dcce9d3eae732aba0c2ffa1b2a5782df5e2912fe2b2b85cc41163e706  ./toybox/toybox_microblaze_Linux
1428173514f4aa9d155f400b2e778dfc5191752c07f34ba9b0c693a0a96c2a16  ./toybox/toybox_microblaze_Linux.base64
2d3324aa6eb311e975944e98cc2005279a7f77bb9db340181f6f13b2534a42ed  ./toybox/toybox_mips64_Linux
17c6c3343aa48af314eb4a4000272cb27cedc4a3bd6fc69b9c4468e4cca63429  ./toybox/toybox_mips64_Linux.base64
043bfa4f0731a90f10d1ffb07ed81ee70c3b018b7b7fa0460fd1cad6d7c1a425  ./toybox/toybox_mips_Linux
3963ce7c39e330390e1d6a66fa6080e893744b5aa80e0807e9cdac38b19c6bb8  ./toybox/toybox_mips_Linux.base64
14e5a0c593f835d92633bbef7561363b0065b7e7011da3c7c94f9713fc411c44  ./toybox/toybox_mipsel_Linux
adeb03ebe9a712a50987fee75165be2c70a706bdf3e8d25b0189a17e73bac619  ./toybox/toybox_mipsel_Linux.base64
a0c26a88d443cf974beddecfd76f3a8d82c6fc8d5a215a1c1454dcdf2cae9b8f  ./toybox/toybox_powerpc64_Linux
d7e1457e4f8a13c6b0e45ec6026f77821119539bdfe523889d07b37df41da6cd  ./toybox/toybox_powerpc64_Linux.base64
0664ca5db5304568e838c9e69375d18630ddedf399858748a47b8cef1ea06b29  ./toybox/toybox_powerpc64le_Linux
2c3336de0fc03c2d9980d7e37ab95f5505fc8a4709c33d26ed5b9374832145d9  ./toybox/toybox_powerpc64le_Linux.base64
ef27ce10b3169b078801ce491fc08bd50809e779f30b223090e19ed6b4c2d57e  ./toybox/toybox_powerpc_Linux
6cceb2b35df6a88d3ed6eab98fe1ad6bdf68416963aff04d337655afc66466b8  ./toybox/toybox_powerpc_Linux.base64
27296de2c95e15681a06bfa7196da42fcb4c09596e32f89b599db88f56034cea  ./toybox/toybox_s390x_Linux
dffdfd9a7a2a2728c06ee915f171a8a9e00c14cff15a4cef6cae332c5305bc4f  ./toybox/toybox_s390x_Linux.base64
367f520f69ce93ef94f92adcc8351a9a3b370e3e58f27fa556816c477914377c  ./toybox/toybox_sh4_Linux
a26636919a8c493824a75f6c311bc69f3abec52dd98677ec626aa8b70a558fa3  ./toybox/toybox_sh4_Linux.base64
```


---

- #### Bundled Commands
```console
Toybox 0.8.10 multicall binary (see https://landley.net/toybox)

usage: toybox [--long | --help | --version | [COMMAND] [ARGUMENTS...]]

With no arguments, "toybox" shows available COMMAND names. Add --long
to include suggested install path for each command, see
https://landley.net/toybox/faq.html#install for details.

First argument is name of a COMMAND to run, followed by any ARGUMENTS
to that command. Most toybox commands also understand:

--help		Show command help (only)
--version	Show toybox version (only)

The filename "-" means stdin/stdout, and "--" stops argument parsing.

Numerical arguments accept a single letter suffix for
kilo, mega, giga, tera, peta, and exabytes, plus an additional
"d" to indicate decimal 1000's instead of 1024.

Durations can be decimal fractions and accept minute ("m"), hour ("h"),
or day ("d") suffixes (so 0.1m = 6s).

[ acpi arch ascii base32 base64 basename bash blkdiscard blkid blockdev
bunzip2 bzcat cal cat chattr chgrp chmod chown chroot chrt chvt cksum
clear cmp comm count cp cpio crc32 cut date dd deallocvt devmem df
dirname dmesg dnsdomainname dos2unix du echo egrep eject env expand
factor fallocate false fgrep file find flock fmt free freeramdisk
fsfreeze fstype fsync ftpget ftpput getconf gpiodetect gpiofind gpioget
gpioinfo gpioset grep groups gunzip halt head help hexedit host hostname
httpd hwclock i2cdetect i2cdump i2cget i2cset i2ctransfer iconv id
ifconfig inotifyd insmod install ionice iorenice iotop kill killall
killall5 link linux32 ln logger login logname losetup ls lsattr lsmod
lspci lsusb makedevs mcookie md5sum microcom mix mkdir mkfifo mknod
mkpasswd mkswap mktemp modinfo mount mountpoint mv nbd-client nbd-server
nc netcat netstat nice nl nohup nproc nsenter od oneit openvt partprobe
passwd paste patch pgrep pidof ping ping6 pivot_root pkill pmap poweroff
printenv printf prlimit ps pwd pwdx pwgen readahead readelf readlink
realpath reboot renice reset rev rfkill rm rmdir rmmod route rtcwake
sed seq setfattr setsid sh sha1sum sha224sum sha256sum sha384sum sha3sum
sha512sum shred shuf sleep sntp sort split stat strings su swapoff
swapon switch_root sync sysctl tac tail tar taskset tee test time
timeout top touch toysh true truncate tty tunctl uclampset ulimit
umount uname unicode uniq unix2dos unlink unshare uptime usleep uudecode
uuencode uuidgen vconfig vmstat w watch watchdog wc wget which who
whoami xargs xxd yes zcat 
```

---

- #### Sizes

```console
739K   ./toybox/toybox_amd_x86_64_Linux
985K   ./toybox/toybox_amd_x86_64_Linux.base64
822K   ./toybox/toybox_arm64_aarch64_Linux
1.1M   ./toybox/toybox_arm64_aarch64_Linux.base64
790K   ./toybox/toybox_armv4l_Linux
1.1M   ./toybox/toybox_armv4l_Linux.base64
782K   ./toybox/toybox_armv5l_Linux
1.1M   ./toybox/toybox_armv5l_Linux.base64
774K   ./toybox/toybox_armv7l_Linux
1.1M   ./toybox/toybox_armv7l_Linux.base64
663K   ./toybox/toybox_armv7m_Linux
883K   ./toybox/toybox_armv7m_Linux.base64
745K   ./toybox/toybox_i486_Linux
993K   ./toybox/toybox_i486_Linux.base64
745K   ./toybox/toybox_i686_Linux
993K   ./toybox/toybox_i686_Linux.base64
745K   ./toybox/toybox_m68k_Linux
993K   ./toybox/toybox_m68k_Linux.base64
1.1M   ./toybox/toybox_microblaze_Linux
1.5M   ./toybox/toybox_microblaze_Linux.base64
963K   ./toybox/toybox_mips64_Linux
1.3M   ./toybox/toybox_mips64_Linux.base64
1000K  ./toybox/toybox_mips_Linux
1.4M   ./toybox/toybox_mips_Linux.base64
1000K  ./toybox/toybox_mipsel_Linux
1.4M   ./toybox/toybox_mipsel_Linux.base64
911K   ./toybox/toybox_powerpc64_Linux
1.2M   ./toybox/toybox_powerpc64_Linux.base64
911K   ./toybox/toybox_powerpc64le_Linux
1.2M   ./toybox/toybox_powerpc64le_Linux.base64
842K   ./toybox/toybox_powerpc_Linux
1.1M   ./toybox/toybox_powerpc_Linux.base64
874K   ./toybox/toybox_s390x_Linux
1.2M   ./toybox/toybox_s390x_Linux.base64
717K   ./toybox/toybox_sh4_Linux
956K   ./toybox/toybox_sh4_Linux.base64

```

