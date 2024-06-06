
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=KufW8g-jCALmkDzIwpBE/uwt3vmadmkK3MK3PgseW/q6Kxx6rcUg7xqH65QKEc/hOIkFzzXEdDQX17UBd-k, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=0E21WfJEXUqHje9dlRcV/Naplkgy_MTt8sOhfFvbB/cGyu6ogdMnwGh1ghTBig/jEW7mtJb37xZa6BNfFdn, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=K8aFJ3Ks65M46yYz62qq/nkCySAR1nFhOkS-lPAPC/-dffqcQyzNmOcnMlAB-9/DrXDiS6tQ7SXHCkoB3u0, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=X01g-COAxZI9x2ymAqp8/Kd-oC5wz5PiWYlCwOLFA/I9VXqFHHRlDbEbuteIeb/Ov1AwJ-PxyL9VscwwT-2, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=7MXurSi1hpXxfBDcRsYZ/NU9NXle99GIty_vI9Wvg/yiOsfeB34qtHf_iJRXnZ/XvEZotX9VBwzOVRuJuud, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=RF3n9EIa0E-qqMfBT53N/vw6leIR-GASixwhUje9X/cQPpDJ0Tjuh1xELnw3xc/Mkx3LXU4GjGvXefPKLzg, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=4HvQbOtaNPSFoCBFpNs2/O-xySpAGq_BB_Rfu5y66/0o1p7477W8ljK1_hDNwH/T5N7u8tARZV4N1cyk0Xy, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=4JZ8aq9KD016QsuM2UHG/WzBnLQbByNVcXTaXzL2t/SxB-P_jzr0SuQ-P0f6Mr/hbqkmL-EAzpH00Gsiawe, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=4xfYtebSruthOY-Aqc-d/KTDDdhA_IKFj607pwb25/8Le2L--_dfcIuEoNdPbN/uolaBkqorcffEoodkmdF, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=VECcYW-nU-lkhUslBL93/rg5XbZvOdtYEeLG78KwH/hBRiXbeS_vdK8gCqQqLQ/2rkjnI0ysiWE9VXX5iMU, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=2buFGIcT6mrhy1BLhuTa/TO_59EfsMBYXEAW_GbYl/zP-EBowYSh4hb0qniHP5/A11kjWgzPq5FtRUqOAs_, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=RAObwYkbV970xhJOw-nw/ve32MKcdRh6y7DTLByx9/gNMlkwnLet6jdocnRj9E/zPSsSl8rhtOLEWOeBNph, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=ZLQqn2jeqpO01N7HR-jD/hRCjuezjdA6yR4eRL12I/lxFtKeIyzA2LMFl8OI_g/OwNmAFCqHv83JGO0md3h, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=-hZY06Rdbxv5e_jn3Z15/dv7nkLRmvBhVhhD6UOld/IPbT44h_BfI5HRF8AG-F/t9lBsL16tz5S7e8pk5MY, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=x31vMNNIeBoiN8vhPXCD/kafPuB-uMDv954iVPCG_/qixOxLMHMiMoQesCBpoe/a5ozLMsqgQ45hSm6y40Q, stripped

--> SHA256SUM
f1d9af0b7af8bd420b4476b6441a721d942d5aa955f9a1a0dfbab536b177d08d  ./ngrok/ngrok_386_FreeBSD
86ecd3f4e43c1631a8332a9ee7d629073a7d7bf7412d2d60e1f390f7b2d30bc1  ./ngrok/ngrok_aarch64_arm64_Linux
8cee685b259bf32088acee05d6388b912fb10a8e3ba5d99569066ebdad5d5a6f  ./ngrok/ngrok_aarch64_arm64_macOS
6a3be51ed4f2ff5ad50eef13d256a71af783c7a23306bc596a33947c12d6f0e1  ./ngrok/ngrok_amd_x86_64_FreeBSD
6df4f5ae55ade58599139bf0d5cb3749c6e9a99b7672388132fa3478505d4033  ./ngrok/ngrok_amd_x86_64_Linux
8727a7eb7e22ae756bde292be20246b437f645070f460d577d42d26f9cb78870  ./ngrok/ngrok_amd_x86_64_Solaris
fbddc92148b35c35d143d394ea223dc05fef05739f56fe579f3f24c39162c819  ./ngrok/ngrok_amd_x86_64_Windows.exe
fb0676289962f1310d8902e9c42d2d2ad1d653138e00490209bd422471888429  ./ngrok/ngrok_amd_x86_64_macOS
902d5d495bf651e8f2582587f7f2d03e368c5d8f9003c0b8837ba24a18228594  ./ngrok/ngrok_amd_x86_Windows.exe
4c4c31ac58c15c4a5cefcfa7b09dbf4d57b460b50f9e0fee8fb55945e963ef95  ./ngrok/ngrok_arm_FreeBSD
36dd1a3893552218f21e118902ae3dabbc43a7f2de1d78937e304893d970377b  ./ngrok/ngrok_arm_Linux
8a2aea8b274d2e9cf33ac59242dfb76d0292826abbc5c5ea2e8be00d90036162  ./ngrok/ngrok_i386_Linux
71ab23ccb809f5aa1ea8f1f32e1f8b3aca3872190fe52693e2fc2d4764f975b4  ./ngrok/ngrok_mips64_Linux
a3465cb2059fa96dccde1564415879ff7740f080136653a4ae7589d084ffd6e3  ./ngrok/ngrok_mips64le_Linux
ebafad0d2957ddf857df702bd71f1956a3626b7c9bdef38c88bd1f6cb88fbccf  ./ngrok/ngrok_mips_Linux
cee20d08ae0ad5f6a60a2a7d8ee5a0cb4b2575648d320903bf999b768831e755  ./ngrok/ngrok_mipsle_Linux
080aa15c838eac8ee9502acf4a2a0b1cb39f63e24486f28b386c8043d7366c19  ./ngrok/ngrok_powerpc64_Linux
48802d238c78d8a1412638441305431e0cdc8ed8cfdd29448fe71978ced2e6f7  ./ngrok/ngrok_powerpc64le_Linux
c56834b158e38475a4db58a827a20de5df7a45e9eb497901f61156662512121f  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.10.1

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

