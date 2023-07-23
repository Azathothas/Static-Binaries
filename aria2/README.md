
---
- #### Download aria2
> - **Sources**
> > ```bash
> > --> Android:
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/tree/master/aria2
> > --> Linux:
> >      - https://github.com/abcfy2/aria2-static-build [ Stable Releases + Latest Preleases ]
> >      - Binaries for s390x are compiled using dockercross
> > --> Windows:
> >      - https://github.com/abcfy2/aria2-static-build
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
--> aria2_busybox_aarch_arm64_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> aria2_busybox_amd_x86_64_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> aria2_busybox_arm_gnueabi_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> aria2_busybox_arm_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> aria2_busybox_i686_Linux || x86_64 [32-bit] (GNU/Linux)
--> aria2_busybox_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> aria2_busybox_mips_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> aria2_busybox_mips64_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> aria2_busybox_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> aria2_busybox_mipsel_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> aria2_busybox_powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> aria2_busybox_powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> aria2_busybox_powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> aria2_busybox_riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> aria2_busybox_riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> aria2_busybox_s390x_Linux || IBM S/390 [64-bit] (GNU/Linux) 
!# For Windows
--> aria2_amd_x86_lite_Windows.exe || [32-bit] (PE32)
--> aria2_amd_x86_WinTLS_lite_Windows.exe || [32-bit] (PE32)
--> aria2_amd_x86_x64_lite_Windows.exe || [64-bit] (PE32+) 

!# Export
export aria2_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"
!# For Linux : append `musl` before `_Linux` if you want the musl compiled binaries
!# Example: aria2_busybox_aarch_arm64_Linux --> aria2_busybox_aarch_arm64_musl_Linux
!# export aria2_ARCH="aria2_busybox_aarch_arm64_musl_Linux"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH"

!# Or for .base64
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/aria2/$aria2_ARCH.base64"

```
---
- #### Install aria2
```bash
!# Copy downloaded aria2 binary to /usr/bin || /usr/local/bin
!# For `.base64`
 base64 -d "$BIN.base64" > "$BIN"

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded aria2 binary to that DIR
 mv "$Path_To_aria2_Binary" "/usr/bin/aria2"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/aria2"

```




---
```console
$ file ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux ./aria2/aria2c_aarch64_arm64_musl_Linux ./aria2/aria2c_aarch64_arm64_musl_latest_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux ./aria2/aria2c_amd_x86_64_musl_Linux ./aria2/aria2c_amd_x86_64_musl_latest_Linux ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux ./aria2/aria2c_arm_abi_musl_latest_Linux ./aria2/aria2c_mip64_libressl_musl_latest_Linux ./aria2/aria2c_mips64_musl_Linux ./aria2/aria2c_mips_libressl_musl_latest_Linux ./aria2/aria2c_mips_musl_latest_Linux ./aria2/aria2c_mipsel_libressl_musl_latest_Linux ./aria2/aria2c_mipsel_musl_Linux ./aria2/aria2c_x86_64_Linux
./aria2/aria2c_aarch64_arm64_libressl_musl_Linux:        ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_musl_Linux:                 ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_aarch64_arm64_musl_latest_Linux:          ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_libressl_musl_Linux:           ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_musl_Linux:                    ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_amd_x86_64_musl_latest_Linux:             ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_arm_abi_libressl_musl_latest_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_arm_abi_musl_latest_Linux:                ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mip64_libressl_musl_latest_Linux:         ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips64_musl_Linux:                        ELF 64-bit MSB pie executable, MIPS, MIPS-III version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_libressl_musl_latest_Linux:          ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mips_musl_latest_Linux:                   ELF 32-bit MSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_libressl_musl_latest_Linux:        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_mipsel_musl_Linux:                        ELF 32-bit LSB pie executable, MIPS, MIPS-I version 1 (SYSV), static-pie linked, stripped
./aria2/aria2c_x86_64_Linux:                             ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=9dd1e4e82baf6700ae0ca11de310c8dc0a769912, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux ./aria2/aria2c_aarch64_arm64_musl_Linux ./aria2/aria2c_aarch64_arm64_musl_latest_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_Linux ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux ./aria2/aria2c_amd_x86_64_musl_Linux ./aria2/aria2c_amd_x86_64_musl_latest_Linux ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux ./aria2/aria2c_arm_abi_musl_latest_Linux ./aria2/aria2c_mip64_libressl_musl_latest_Linux ./aria2/aria2c_mips64_musl_Linux ./aria2/aria2c_mips_libressl_musl_latest_Linux ./aria2/aria2c_mips_musl_latest_Linux ./aria2/aria2c_mipsel_libressl_musl_latest_Linux ./aria2/aria2c_mipsel_musl_Linux ./aria2/aria2c_x86_64_Linux
58e68bf7fb255e0d775f056fc8595acaea5985e89b0735609b4b7b0b5a340d49  ./aria2/aria2c_aarch64_arm64_libressl_musl_Linux
58e68bf7fb255e0d775f056fc8595acaea5985e89b0735609b4b7b0b5a340d49  ./aria2/aria2c_aarch64_arm64_libressl_musl_latest_Linux
fbc44931d8e8545e34f3cb2a1cc9586dbc60c1dd7189e398c643f318f1ee706d  ./aria2/aria2c_aarch64_arm64_musl_Linux
fbc44931d8e8545e34f3cb2a1cc9586dbc60c1dd7189e398c643f318f1ee706d  ./aria2/aria2c_aarch64_arm64_musl_latest_Linux
4d1b9e7ea2da74b0fc24953a19650b5f27c21808de6cb9a4b3b2eb453e5bb703  ./aria2/aria2c_amd_x86_64_libressl_musl_Linux
4d1b9e7ea2da74b0fc24953a19650b5f27c21808de6cb9a4b3b2eb453e5bb703  ./aria2/aria2c_amd_x86_64_libressl_musl_latest_Linux
783d59dc2b8d32d692c5e6c0a22f8fb332e56cf1d372f8b84c56fe31e2bc067c  ./aria2/aria2c_amd_x86_64_musl_Linux
783d59dc2b8d32d692c5e6c0a22f8fb332e56cf1d372f8b84c56fe31e2bc067c  ./aria2/aria2c_amd_x86_64_musl_latest_Linux
5c2ba029680e708d7e907f93d7e9f5baf56d071133197633b729147648d4ce52  ./aria2/aria2c_arm_abi_libressl_musl_latest_Linux
ee1240c2c540a7090bfaf67f1498d2796a3ffa4f3638ceff2f386299c9a947ad  ./aria2/aria2c_arm_abi_musl_latest_Linux
cb3971ee4a2451452e93287fb9fe7cfda9ca333bc982a794d1227db04745ad1f  ./aria2/aria2c_mip64_libressl_musl_latest_Linux
e27ae3b371d7bfb9659cd4e7615aea591796405a57e1419cca862f8f77ec01cc  ./aria2/aria2c_mips64_musl_Linux
5789b94318fc8e90711aac9f4bea07f2900c421337088cde3f2362eea474377c  ./aria2/aria2c_mips_libressl_musl_latest_Linux
f3fddc6e3c061a3ec092f8ca9b8c33199ce6fc8bcc14bd1b798072d29973e525  ./aria2/aria2c_mips_musl_latest_Linux
d4ec61b175594dbac6f165fabef1e639b614814bfeb72163dd1f2a05758a7533  ./aria2/aria2c_mipsel_libressl_musl_latest_Linux
a1ecad6cc1962ebbce92c31bc52756b89aaf0e71c983efa051ff6d8649b2e40a  ./aria2/aria2c_mipsel_musl_Linux
c9f9b191d81fecfc7a6271f4b9864097515eb37b915605ecee4683eef79ee13d  ./aria2/aria2c_x86_64_Linux
```


---

- #### Sizes

```console
3.1K  INFO.md
8.9K  README.md
8.1M  aria2c_aarch64_arm64_libressl_musl_Linux
8.1M  aria2c_aarch64_arm64_libressl_musl_latest_Linux
11M   aria2c_aarch64_arm64_musl_Linux
11M   aria2c_aarch64_arm64_musl_latest_Linux
8.3M  aria2c_amd_x86_64_libressl_musl_Linux
8.3M  aria2c_amd_x86_64_libressl_musl_latest_Linux
11M   aria2c_amd_x86_64_musl_Linux
11M   aria2c_amd_x86_64_musl_latest_Linux
6.8M  aria2c_arm_abi_libressl_musl_latest_Linux
8.5M  aria2c_arm_abi_musl_latest_Linux
12M   aria2c_mip64_libressl_musl_latest_Linux
14M   aria2c_mips64_musl_Linux
11M   aria2c_mips_libressl_musl_latest_Linux
14M   aria2c_mips_musl_latest_Linux
11M   aria2c_mipsel_libressl_musl_latest_Linux
14M   aria2c_mipsel_musl_Linux
41M   aria2c_x86_64_Linux
```

---

