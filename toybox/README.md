
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
$ file ./toybox/toybox_arm64_aarch64 ./toybox/toybox_arm64_aarch64.base64 ./toybox/toybox_armv4l ./toybox/toybox_armv4l.base64 ./toybox/toybox_armv5l ./toybox/toybox_armv5l.base64 ./toybox/toybox_armv7l ./toybox/toybox_armv7l.base64 ./toybox/toybox_armv7m ./toybox/toybox_armv7m.base64 ./toybox/toybox_i486 ./toybox/toybox_i486.base64 ./toybox/toybox_i686 ./toybox/toybox_i686.base64 ./toybox/toybox_m68k ./toybox/toybox_m68k.base64 ./toybox/toybox_microblaze ./toybox/toybox_microblaze.base64 ./toybox/toybox_mips ./toybox/toybox_mips.base64 ./toybox/toybox_mips64 ./toybox/toybox_mips64.base64 ./toybox/toybox_mipsel ./toybox/toybox_mipsel.base64 ./toybox/toybox_powerpc ./toybox/toybox_powerpc.base64 ./toybox/toybox_powerpc64 ./toybox/toybox_powerpc64.base64 ./toybox/toybox_powerpc64le ./toybox/toybox_powerpc64le.base64 ./toybox/toybox_s390x ./toybox/toybox_s390x.base64 ./toybox/toybox_sh2eb ./toybox/toybox_sh2eb.base64 ./toybox/toybox_sh4 ./toybox/toybox_sh4.base64 ./toybox/toybox_x86_64 ./toybox/toybox_x86_64.base64
./toybox/toybox_arm64_aarch64:        ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_arm64_aarch64.base64: ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv4l:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv4l.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv5l:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv5l.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7l:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./toybox/toybox_armv7l.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_armv7m:               ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./toybox/toybox_armv7m.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i486:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i486.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_i686:                 ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./toybox/toybox_i686.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_m68k:                 ELF 32-bit MSB executable, Motorola m68k, 68020, version 1 (SYSV), statically linked, stripped
./toybox/toybox_m68k.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_microblaze:           ELF 32-bit MSB executable, Xilinx MicroBlaze 32-bit RISC, version 1 (SYSV), statically linked, stripped
./toybox/toybox_microblaze.base64:    ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips:                 ELF 32-bit MSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips.base64:          ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mips64:               ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./toybox/toybox_mips64.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_mipsel:               ELF 32-bit LSB executable, MIPS, MIPS-I version 1 (SYSV), statically linked, stripped
./toybox/toybox_mipsel.base64:        ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc:              ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc.base64:       ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64:            ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64.base64:     ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_powerpc64le:          ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./toybox/toybox_powerpc64le.base64:   ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_s390x:                ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./toybox/toybox_s390x.base64:         ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_sh2eb:                ELF 32-bit MSB executable, Renesas SH, version 1 (SYSV), statically linked, stripped
./toybox/toybox_sh2eb.base64:         ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_sh4:                  ELF 32-bit LSB executable, Renesas SH, version 1 (SYSV), statically linked, stripped
./toybox/toybox_sh4.base64:           ASCII text, with very long lines (65536), with no line terminators
./toybox/toybox_x86_64:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./toybox/toybox_x86_64.base64:        ASCII text, with very long lines (65536), with no line terminators

--> SHA256SUM
$ sha256sum ./toybox/toybox_arm64_aarch64 ./toybox/toybox_arm64_aarch64.base64 ./toybox/toybox_armv4l ./toybox/toybox_armv4l.base64 ./toybox/toybox_armv5l ./toybox/toybox_armv5l.base64 ./toybox/toybox_armv7l ./toybox/toybox_armv7l.base64 ./toybox/toybox_armv7m ./toybox/toybox_armv7m.base64 ./toybox/toybox_i486 ./toybox/toybox_i486.base64 ./toybox/toybox_i686 ./toybox/toybox_i686.base64 ./toybox/toybox_m68k ./toybox/toybox_m68k.base64 ./toybox/toybox_microblaze ./toybox/toybox_microblaze.base64 ./toybox/toybox_mips ./toybox/toybox_mips.base64 ./toybox/toybox_mips64 ./toybox/toybox_mips64.base64 ./toybox/toybox_mipsel ./toybox/toybox_mipsel.base64 ./toybox/toybox_powerpc ./toybox/toybox_powerpc.base64 ./toybox/toybox_powerpc64 ./toybox/toybox_powerpc64.base64 ./toybox/toybox_powerpc64le ./toybox/toybox_powerpc64le.base64 ./toybox/toybox_s390x ./toybox/toybox_s390x.base64 ./toybox/toybox_sh2eb ./toybox/toybox_sh2eb.base64 ./toybox/toybox_sh4 ./toybox/toybox_sh4.base64 ./toybox/toybox_x86_64 ./toybox/toybox_x86_64.base64
38a823d5cb7064bc8eafd82f2ae3c1acb4d45463f63ae05d8cfc0b0a5708a68b  ./toybox/toybox_arm64_aarch64
581b42c760841bf50aa513cac3b673f2d40f91bb3d2ebf800279963d38487777  ./toybox/toybox_arm64_aarch64.base64
42674e3145494057eccba1c0210090839ca2bf3d8fa05788134c15b606b97187  ./toybox/toybox_armv4l
584fe11fdb4d92480f52f6e20b3d9cdf8d8804c05d52947c8645a1b5d43e82cb  ./toybox/toybox_armv4l.base64
66205af885150d068899bc4a082cf3115b043f5ea9de19c0cec2a575098ae671  ./toybox/toybox_armv5l
6eb09bae1b81c3e3de6d39801c9ba87cdaeda42c3aea7fa5dc5f67f0b29cf2de  ./toybox/toybox_armv5l.base64
dda067ddfad2ac7ab7394fbe0c696384bc27923f564f27b980c8f23c62674202  ./toybox/toybox_armv7l
571bd6ffeb518679076382e3854aee1f5d2626cf3929b28ca4985cfc077f80b8  ./toybox/toybox_armv7l.base64
d8679cde247ccab6aaf7e5b9fcb14d09b44d52ba2e2bddc3b55b7eabde613174  ./toybox/toybox_armv7m
701b7612ed7b770370612a999d02c2b2e4dfc69ebd05802e3bfb078468feff92  ./toybox/toybox_armv7m.base64
39a667a782e4c077389d7e800185b9df713c10eeb9884401cbfee6e7be3d8496  ./toybox/toybox_i486
f7aecda84fc77f786f097f8b972cfda0a2146ccf9d5996924890de6084fcf9f2  ./toybox/toybox_i486.base64
f7fad74aed8103f72828a3c5f1edf567e48151632a26963e0159bbd1de0e1130  ./toybox/toybox_i686
6a21b9189cdbea87bd461e73c6bcd5f427c6deaa29ebb7fc3f1700a21c6a91a6  ./toybox/toybox_i686.base64
4761414d451071957eba4a98a7c643680b84f363d6c0c7b356db7d0496659c20  ./toybox/toybox_m68k
58c6d9044f4e69d1a3bf146b476d916abf65bc86c162eb422f9ebd7a8245bef3  ./toybox/toybox_m68k.base64
4b8ab3fa8697ab8882428d4789857a42ead07189a5a0cacf955532a970a4df8d  ./toybox/toybox_microblaze
86f674d9323c5c48ca5723a63e814290aae925ee4fbd9f8743e17d8885e806f1  ./toybox/toybox_microblaze.base64
1a842ee391d262a95ed41a516114a3c5b57c956dfc028642e9db731ee816891e  ./toybox/toybox_mips
a930c4182f868c7419862557768e89e0abe5b5ba5e2b68b4d495b0ed2bb908d5  ./toybox/toybox_mips.base64
f4b680a356dee38bac17d159a231f2b5324cf8961d183bf47287377b81ec6dc8  ./toybox/toybox_mips64
a33d986742d6cf2ab425fc0366caf8f8b268de918b881bab383b48bfdbe083fd  ./toybox/toybox_mips64.base64
054460d41e21d270cf8f3435515ba9a9fce6e823687229d9adb336025982532c  ./toybox/toybox_mipsel
e0038e676f04bce6dcb454519007658d0f0200d516b310e5a8721a8212979f72  ./toybox/toybox_mipsel.base64
c31202726e49ad4d33eb3ad03638e283f172f0579d15ea21d79184828123b77c  ./toybox/toybox_powerpc
b92d19f8642bde63ff9c00d34fde20968a6fec31f92a3738d8f0b75f22cdd334  ./toybox/toybox_powerpc.base64
0946b0bde7dab55e6ee8e3c906c893cd760ce3d95e5d2a99890a4ec5790aebb9  ./toybox/toybox_powerpc64
1fcf472e6eccf4d12ec2e836b5b9172dfbaeaa54060f90e9ab7debcb7b7d08ed  ./toybox/toybox_powerpc64.base64
88faa92f7a8c3962b67f820d3811951d53fd76c01909d0a339acff0900920f5e  ./toybox/toybox_powerpc64le
579e20f6cbc4ec1142264e628455099e0fb7b0fc0b9b6440baecc0142d860f61  ./toybox/toybox_powerpc64le.base64
827df3fbb42c8867be169bc21a5195e1cfd7fbb5e5a2a2ceaf3b51d23d4878b8  ./toybox/toybox_s390x
dfc79e77a45ff83a62e6dd84b6f13b9e1d0d95ece055ba5ffa85228fdb44e0f4  ./toybox/toybox_s390x.base64
dd4bd26011f338faa37171b3fcfccc5ae526283b3b8fc1aa877325e17ad678b3  ./toybox/toybox_sh2eb
9bdb0577b4af33a75d3f4aa868b31fb238e8cba147a74498f46f5abe4d773365  ./toybox/toybox_sh2eb.base64
5409f974aabeb02aadd74efccb1d692abbfe4ab49d570582e98ff9db84ea2e72  ./toybox/toybox_sh4
76686020b933d4595fd04891f5d8c67e0cc37b32e394665a909d91249452e033  ./toybox/toybox_sh4.base64
961688267a57b664e009d6c3f1d3b36b32b8810f3fce21412a332a75432af8f9  ./toybox/toybox_x86_64
729c76fc224f7d9bc548415fe808896c155996765892427b4ce91cfaa47fd18a  ./toybox/toybox_x86_64.base64
```


---
- #### Bundled Commands
```console
$ qemu-aarch64-static ./toybox/toybox_arm64_aarch64
[ acpi arch ascii base32 base64 basename bash blkdiscard blkid blockdev
bunzip2 bzcat cal cat chattr chgrp chmod chown chroot chrt chvt cksum
clear cmp comm count cp cpio crc32 cut date deallocvt devmem df dirname
dmesg dnsdomainname dos2unix du echo egrep eject env expand factor
fallocate false fgrep file find flock fmt free freeramdisk fsfreeze
fstype fsync ftpget ftpput getconf gpiodetect gpiofind gpioget gpioinfo
gpioset grep groups gunzip halt head help hexedit host hostname httpd
hwclock i2cdetect i2cdump i2cget i2cset iconv id ifconfig inotifyd
insmod install ionice iorenice iotop kill killall killall5 link linux32
ln logger login logname losetup ls lsattr lsmod lspci lsusb makedevs
mcookie md5sum microcom mix mkdir mkfifo mknod mkpasswd mkswap mktemp
modinfo mount mountpoint mv nbd-client nbd-server nc netcat netstat
nice nl nohup nproc nsenter od oneit openvt partprobe passwd paste
patch pgrep pidof ping ping6 pivot_root pkill pmap poweroff printenv
printf prlimit ps pwd pwdx pwgen readahead readelf readlink realpath
reboot renice reset rev rfkill rm rmdir rmmod route rtcwake sed seq
setfattr setsid sh sha1sum sha224sum sha256sum sha384sum sha3sum sha512sum
shred sleep sntp sort split stat strings su swapoff swapon switch_root
sync sysctl tac tail tar taskset tee test time timeout top touch toysh
true truncate tty tunctl uclampset ulimit umount uname unicode uniq
unix2dos unlink unshare uptime usleep uudecode uuencode uuidgen vconfig
vmstat w watch watchdog wc wget which who whoami xargs xxd yes zcat

```

---

- #### Sizes

```console
2.3K   INFO.md
14K    README.md
806K   toybox_arm64_aarch64
1.1M   toybox_arm64_aarch64.base64
786K   toybox_armv4l
1.1M   toybox_armv4l.base64
778K   toybox_armv5l
1.1M   toybox_armv5l.base64
766K   toybox_armv7l
1021K  toybox_armv7l.base64
658K   toybox_armv7m
878K   toybox_armv7m.base64
733K   toybox_i486
977K   toybox_i486.base64
733K   toybox_i686
977K   toybox_i686.base64
729K   toybox_m68k
971K   toybox_m68k.base64
1.1M   toybox_microblaze
1.4M   toybox_microblaze.base64
977K   toybox_mips
1.3M   toybox_mips.base64
944K   toybox_mips64
1.3M   toybox_mips64.base64
980K   toybox_mipsel
1.3M   toybox_mipsel.base64
842K   toybox_powerpc
1.1M   toybox_powerpc.base64
911K   toybox_powerpc64
1.2M   toybox_powerpc64.base64
911K   toybox_powerpc64le
1.2M   toybox_powerpc64le.base64
854K   toybox_s390x
1.2M   toybox_s390x.base64
821K   toybox_sh2eb
1.1M   toybox_sh2eb.base64
701K   toybox_sh4
934K   toybox_sh4.base64
723K   toybox_x86_64
963K   toybox_x86_64.base64
```

---

