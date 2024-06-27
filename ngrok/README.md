
---
- #### Download [ngrok](https://ngrok.com/download)
> - **Sources**
> > ```bash
> > --> FreeBSD || Linux || Solaris || Windows:
> >      - https://ngrok.com/download
> > ```
> >
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

!# FreeBSD
--> 386 || Amd x86|| x86 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_386_FreeBSD"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_amd_x86_64_FreeBSD"

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_aarch64_arm64_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_amd_x86_64_Linux"
--> ARM_abi || ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_arm_Linux"
--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_i386_Linux"
--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_mips_Linux"
--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_mipsle_Linux"
--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_mips64_Linux"
--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_mips64le_Linux"
--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_powerpc64_Linux"
--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_powerpc64le_Linux"
--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_s390x_Linux"

!# macOS
--> aarch64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_aarch64_arm64_macOS"
--> Amd x86_64 || x86_64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_x86_64_macOS"


!# Solaris
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_amd_x86_64_Solaris"

#Windows
--> Amd_x86 || x86 [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_amd_x86_Windows.exe"
--> Amd x86_64 || x86_64 [64-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/ngrok/ngrok_amd_x86_64_Windows.exe"

```
---
- #### Install ngrok
```bash
!# Recommended way to install ngrok is:
!# Download a binary from : https://ngrok.com/download
!# unzip it 
tar -xzvf "$Path_To_ngrok_Binary.tgz"

!# Copy downloaded ngrok binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded ngrok binaries to that DIR
 mv "$Path_To_ngrok_Binary" "/usr/bin/ngrok"

!# Give Writeable Perms
 chmod +xwr /usr/bin/ngrok*
```

---
```console

--> METADATA
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=yroJzUp5cQl7KU2YrAXP/QLj0KvqULS_kd0kmnPMW/j7-c1Kfc0NrvupzRJF-v/Z-X05w9sv_OgxzSnETf_, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=z7a0QoavwhWby9LJMr-h/ZMA7h0_avxsOz52lWEWp/SxWJn0MAbg84w0g-hL6g/xn0RlUHUe1RK2vSLZel4, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=ziUvKK5maA_fVvlH5TlP/6HT-3cIF9FTpfYvRbD6S/bnb80SQytEqETeAkI_1G/txMGToAKbRQ_ufPXNAJI, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=XGizPfLF9Fn7_aZHe4ga/fgjEAxchSZ5Je2CThFIC/-OX4nxn36FFwrlH90Q8z/4bmOKrL9OH0cKtV7QWdC, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=CwnP_QwEGapUhFPgmOt-/pFqiYuSoCB_t9W363Kdd/xvHZ-ye5gKLIqZGkUKXB/AC2gTFhCk7c5c54eXtW5, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=xjaaLBiZi85iXIFR9u6A/xw4qrWIONpxlhtXTtkj2/UArDE5gDzYkDo48wv0hf/hCG8VGEuqjqY0uk2hHAs, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=eF5sqIXOK15YwU6xzYuR/b5E-UKgj72IK86FLKGZ3/bSC9suEWa5QBAPxn6C0X/oybHEToLYbQnlgQq_GFq, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=IWMsf4c2VEspLGMySkpk/130Aee0wQ2y3D9TbYpa5/yj7A2RMi6_HiR9GhQctD/4edy3kN_jPYUOA6te20x, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=aCciiW9SZh5Jof7CxrNT/BQVm7HTz5xkJNezrM_fs/umIFSQte3rspeCB2Dtvi/hE0d8E1j7rgnW0JnYXCs, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=_6EOcf28AIPR4pTmwJk-/9iBkb8_XnY8xBVuiC-cL/emeHSzJ1MiLW2ybLjIAD/mn21KY4T_OyKsoEfzLV7, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=1jcaL_L9hs8QLwjOeH6d/5LKmHjhCq4DlbcAcSx2B/4aW6LTZ3EN_XP73DjO97/nAa4ZiGjSuKIHk9C0MfO, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=rk_CtdgB9AcskAWivBNb/We-Zml34PeKJBk4ZSNyP/Pg3qHVjIP7IKiiGmVeLo/NexyjMeH25HF0pEthZ30, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=ZGNWe8FSi15DK_wMxb4N/Qgj6PvCglmmYGArv6AF0/h19d0FCY86QpNM9TV9ab/OGxFi-PS0TSD78_fVQAo, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=pqSDz8gh_inyUwwa2i5U/mqHcIm3wfkW0JY3nDZwX/PmgAGDW09Yk5S-Feix-7/O-kNWsI535-jRJstfiHc, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=3JOzzTUiYvN-nzNpGb9J/L9gIY4kkl7HKbuxFb_mV/mbEt-fDpQo-b113ATxNO/c1CUV7lRtqF9GFMbPlFt, stripped

--> SHA256SUM
50a40f7e5ed9ecb4740e0c563045ae1d92444728668c4634689b53e049ebbb2c  ./ngrok/ngrok_386_FreeBSD
af6d56cbdcce863c5f395b9773dd326f01f958a993607d2d7d62da5f1f1331b6  ./ngrok/ngrok_aarch64_arm64_Linux
40c19a90b6eb4d3d5b0e0b2e99748994696c946f4d705ce5b2e5dabaee52d6c0  ./ngrok/ngrok_aarch64_arm64_macOS
7ee8f73175aedebafd02069eff5764f2fc7839cc3285a194d4739b1fa73d353a  ./ngrok/ngrok_amd_x86_64_FreeBSD
43d018b7bbd8ec31b6f7c79d5aa2bb297b10e5e3406b2778cc28741d68820d48  ./ngrok/ngrok_amd_x86_64_Linux
73606532d8acdb73f48a1a152f278dcf1977a276b75f334211049d98af6ddfc6  ./ngrok/ngrok_amd_x86_64_Solaris
13fc423ad0157aecdee423fb895f3113159c2d41f075623be51ea9e029a6edd7  ./ngrok/ngrok_amd_x86_64_Windows.exe
6d71106c0fd6374aed4a85ac121c09816db1e721f522b6ff261f56775a3c6fd1  ./ngrok/ngrok_amd_x86_64_macOS
ffc9bb3792d75285c13c6e549de60c1eb1ccc73499456f900c18dea2d80259bc  ./ngrok/ngrok_amd_x86_Windows.exe
97140d94511a6b80d6fd029e372f6299fcbefe352260ffe4cfa6c932195b2d74  ./ngrok/ngrok_arm_FreeBSD
5c703aa538aca24c9c609a0b87afc05aa9711e2306fb1f23a48c733c9d4aedd7  ./ngrok/ngrok_arm_Linux
7f3055d5a30a6c2bb4eb39d3d88c3c815f9c6614e384d02c21d812c5913b0f1e  ./ngrok/ngrok_i386_Linux
aa975aff64351c57dcc5c746556513bdacd65b446c9040a27edd1971e5aee6aa  ./ngrok/ngrok_mips64_Linux
d86a0bf1f43c12ef4263ac0007f9963c9b5521cd4031d83404087476f634c855  ./ngrok/ngrok_mips64le_Linux
f9994890b4af1a101ca98a49c01e5a75110dea1d5e05bd8f67e05543a12a86d4  ./ngrok/ngrok_mips_Linux
419b2d0025d81c729a8e85face487cfec8b2a1b8c86708aefe0e0d746c5f52b8  ./ngrok/ngrok_mipsle_Linux
101479853b195fdf88dce1ac2bf0cdaca029b7233bdad174f8f22bc48e063ff8  ./ngrok/ngrok_powerpc64_Linux
67f81b7eed900b37b781e2744aa66bed814334594dcf126cb4c33ddfe71dc771  ./ngrok/ngrok_powerpc64le_Linux
3f12c0944400b981f316cb2dd2d86818e806d640c2afa70c422a70568f72ab5d  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.12.0

NAME:
  ngrok - tunnel local ports to public URLs and inspect traffic

USAGE:
  ngrok [command] [flags]

DESCRIPTION: 
  ngrok exposes local networked services behinds NATs and firewalls to the
  public internet over a secure tunnel. Share local websites, build/test
  webhook consumers and self-host personal services.
  Detailed help for each command is available with 'ngrok help <command>'.
  Open http://localhost:4040 for ngrok's web interface to inspect traffic.

Author:
  ngrok - <support@ngrok.com>

TERMS OF SERVICE: https://ngrok.com/tos

EXAMPLES: 
  ngrok http 80                           # secure public URL for port 80 web server
  ngrok http --domain baz.ngrok.dev 8080  # port 8080 available at baz.ngrok.dev
  ngrok http foo.dev:80                   # tunnel to host:port instead of localhost
  ngrok http https://localhost            # expose a local https server
  ngrok tcp 22                            # tunnel arbitrary TCP traffic to port 22
  ngrok tls --domain=foo.com 443          # TLS traffic for foo.com to port 443
  ngrok start foo bar baz                 # start tunnels from the configuration file

COMMANDS:
  api                            use ngrok agent as an api client
  completion                     generates shell completion code for bash or zsh
  config                         update or migrate ngrok's configuration file
  credits                        prints author and licensing information
  diagnose                       diagnose connection issues
  help                           Help about any command
  http                           start an HTTP tunnel
  service                        run and control an ngrok service on a target operating system
  start                          start tunnels by name from the configuration file
  tcp                            start a TCP tunnel
  tls                            start a TLS tunnel
  tunnel                         start a tunnel for use with a tunnel-group backend
  update                         update ngrok to the latest version
  version                        print the version string

OPTIONS:
      --config strings    path to config files; they are merged if multiple
  -h, --help              help for ngrok
      --metadata string   opaque user-defined metadata for the tunnel session
  -v, --version           version for ngrok
```

---

- #### Sizes

```console
27M  ./ngrok/ngrok_386_FreeBSD
28M  ./ngrok/ngrok_aarch64_arm64_Linux
28M  ./ngrok/ngrok_aarch64_arm64_macOS
28M  ./ngrok/ngrok_amd_x86_64_FreeBSD
28M  ./ngrok/ngrok_amd_x86_64_Linux
28M  ./ngrok/ngrok_amd_x86_64_Solaris
29M  ./ngrok/ngrok_amd_x86_64_Windows.exe
28M  ./ngrok/ngrok_amd_x86_64_macOS
27M  ./ngrok/ngrok_amd_x86_Windows.exe
27M  ./ngrok/ngrok_arm_FreeBSD
27M  ./ngrok/ngrok_arm_Linux
27M  ./ngrok/ngrok_i386_Linux
30M  ./ngrok/ngrok_mips64_Linux
30M  ./ngrok/ngrok_mips64le_Linux
30M  ./ngrok/ngrok_mips_Linux
30M  ./ngrok/ngrok_mipsle_Linux
28M  ./ngrok/ngrok_powerpc64_Linux
28M  ./ngrok/ngrok_powerpc64le_Linux
29M  ./ngrok/ngrok_s390x_Linux

```

