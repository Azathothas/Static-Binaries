
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=9FHk-HIA4uYectFoQb8a/s4upeEdvKBswPUQV8iwr/j0olTXK_pIn_ukC3Dgxn/rcjIrAMY6cadA7TCF39P, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=Msy2PtdLyGqHxwcIxzRo/mLt89edQkchuJneSA-s7/UByGOgy6EXIyjpYPM7UP/zr5W22-7u7aQ0TDUquIa, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=UvHnF8ndiiDTAZTmY2y2/5QJOsTeFx1WgxRYOgGr6/ejwpvEABx22MiKuFL4zl/Y_CgBcTDTNUakvTf42zg, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=10tTTRHHsZyvX9lR4s-T/Xxik-BA5SFOkm3OmcU_4/ro4iiQRexkqcSwNLQew3/Yr0-XbW5e8wqyqNjFQ30, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=U52HVP1U0Kn8xII8-KvU/krAc__Oay0V-zfOqimwN/JQOlRGlowCELhXqvqvay/8JrHunxSNIxivVFZFKKE, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=KC7KXDfbn0UwPa-qjfF0/ELnSFM8kVx_b_AgzmBBV/8iUOAYDa8bNkCpUoYRcV/W8qgaELhktT5zXmXLe98, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=Itaow-IdQQsD7LiZLsbj/oeLHuc2KJ6szcNQYRRK_/Cx-6PREuJTJs3uosbR_P/pbVnIHy2G53L8x25EdPx, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=64NuEuTYdrrrpbiDvDHp/PHb0X_8Zoyt8LbrCBxwk/griykOTRMx0TjnfOOyrh/9WS7-T8isihwiT0yFR7L, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=QJXC_bOE_VUnfCQ6ZoSC/Twr8gPwcJHdi3LplGYI0/An26lxeOayPXGkK4GDPD/LukZWyO41FjTU_tlMN02, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=BLHvj6IKIy30ltcBapwK/ANDZmDEbPT-GXZC8l12W/zBK-AMPVtYcrDURayZ8q/qiQf7Mv28XhUv-YcMXt4, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=YeX-s8N5u06lFNsJwxYS/5ttKPN4aLddB1zbIKjwC/0GmR6rFWkunwd5nkXm85/AgwYDhExUYZmodS_wIPG, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=3XaUkL26E_TLfutrfQH4/E6XoXQwgRhX3Hr6JeJpe/qSgVjL9LWWpISM1Ue456/OgkVx-XHmgMzXQynf1ib, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=kjGr1O6qK4qF4-_nDynh/FLcvTD0QPXhJZERCHXQY/PA8qW4Ac1dAw2Dycpz9E/H5oe4l2DGWKNbZDcTBOo, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=OUE2-_2F3xC2RmLyrOZK/e6GaIkGfFDfpFxrje7fu/NCIrL_sakwnKHs5cx12p/Rng8FA1vJt3q_5XdoZC5, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=maSUmtZo6j8OXoM4WlCn/KDz-r6LI4MplylpO7Jul/rUXhKmPYjFnijlfI0-_e/VnWeC_QpiissjQR1gb33, stripped

--> SHA256SUM
13d8464b74dd3b257d12e3db0bfa5e5a33602cd6828fc16e612bb47a2110f637  ./ngrok/ngrok_386_FreeBSD
1e12cedb3378d25012c3cd94f960123b4d8b99301d52ad9c30df9e698ed1fa2d  ./ngrok/ngrok_aarch64_arm64_Linux
e609d3d78d004ec4f795581cba35f38ba43e7b0b5ae1cd80aa21650402e531d0  ./ngrok/ngrok_aarch64_arm64_macOS
14db98ef239b736cd7cfad2925d1a3b97641a965c6fd015fff51fde65bd7557f  ./ngrok/ngrok_amd_x86_64_FreeBSD
b8678a1d906808e1996b743ed23a8b8d9f64eb651683a1cc2c50cf8c85482ba6  ./ngrok/ngrok_amd_x86_64_Linux
5f24ce20dcfe148759ebebfeb5387667d81274f8d684bdfaca88935dd30b3a8b  ./ngrok/ngrok_amd_x86_64_Solaris
dac8c9290ebda216e3e6dfa3fc2cd9a3e3420a5ab753ec26916633b3c728bc08  ./ngrok/ngrok_amd_x86_64_Windows.exe
700311045d531f603a5f472c7e4b8271810ac75e368c65430a62f5e178abe9dc  ./ngrok/ngrok_amd_x86_64_macOS
7378976ebdac8f20f0e6fb66c4a7cc60aa9046e789f93378d56a60c3b301dfad  ./ngrok/ngrok_amd_x86_Windows.exe
b5f9bc1f9a551cac37317b108248c5fd8d93f641242f9c66bc6d018db2d39ce3  ./ngrok/ngrok_arm_FreeBSD
08d7b27407005c9a34a850090527c1398e86a1a2fa090aea2caee40cb18902fe  ./ngrok/ngrok_arm_Linux
101df6a13e4c6c638f36a44eba1c08a64bb4fc582d838d9b05c26ac09915c60b  ./ngrok/ngrok_i386_Linux
420cc183e608e19590383eb67fc2713e7f3f93e814f58882cd0432fcb0238941  ./ngrok/ngrok_mips64_Linux
ce84562269e59e5e6162f8629a5fa472d4a9b908b63bd394c59f580a27de974c  ./ngrok/ngrok_mips64le_Linux
967e281673b8fcd1d511e23788b0bd5f7f8deaeaf0af7aafd0e48f3d0e25b5ce  ./ngrok/ngrok_mips_Linux
5a6ed2fed177ffa6f6b305fb75781edb6ef352893968c3847d9484b8a82b7bd9  ./ngrok/ngrok_mipsle_Linux
46725859fa8f07476e25c4872cebeeac690e234016439eb4f4e98d814fd694ed  ./ngrok/ngrok_powerpc64_Linux
2855d944b5051927271e3a1e5498dcb15006ab8b7c252f8e41c9f67f97d527dc  ./ngrok/ngrok_powerpc64le_Linux
25af0391c6f3ced3ad8be0378897129f670bccb6e1437a641a68231b433aa6fb  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.3.4

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
22M  ./ngrok/ngrok_386_FreeBSD
23M  ./ngrok/ngrok_aarch64_arm64_Linux
25M  ./ngrok/ngrok_aarch64_arm64_macOS
24M  ./ngrok/ngrok_amd_x86_64_FreeBSD
24M  ./ngrok/ngrok_amd_x86_64_Linux
23M  ./ngrok/ngrok_amd_x86_64_Solaris
24M  ./ngrok/ngrok_amd_x86_64_Windows.exe
26M  ./ngrok/ngrok_amd_x86_64_macOS
23M  ./ngrok/ngrok_amd_x86_Windows.exe
22M  ./ngrok/ngrok_arm_FreeBSD
22M  ./ngrok/ngrok_arm_Linux
22M  ./ngrok/ngrok_i386_Linux
26M  ./ngrok/ngrok_mips64_Linux
26M  ./ngrok/ngrok_mips64le_Linux
25M  ./ngrok/ngrok_mips_Linux
25M  ./ngrok/ngrok_mipsle_Linux
23M  ./ngrok/ngrok_powerpc64_Linux
23M  ./ngrok/ngrok_powerpc64le_Linux
25M  ./ngrok/ngrok_s390x_Linux

```

