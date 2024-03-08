
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=TTW21OApys-vcRk7xNcx/9bEi3L49N-BYfmOELbWF/SGKTClJmuEZAhjCdx5UA/r7augHtrczAYw9VGmVfo, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=fJgbxnr_H8RILDjaYinn/wjFWiNUwWqXk6HqfXQBB/zg9Q_YMFOtwvFl2-H3p4/QhrZeYaOAeNSY78ZXoF6, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=nvBjtQUBmx9yNY50bnAm/-YRVi9Fp25ZQ0kQuk-nu/Tk9k-Q2sRAxjiT4WgdW1/VPloNXkp2rx2O50fAuaV, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=DWaG0vq5qFbIOdaynSgY/EcpaAMUg-ff4Vn5GYKH8/r6BtDeWRXKDw-FPvchsz/TYEzFSmCVfYHQN6SWBx6, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=655bQ-4iYwgtULXAVGjG/UOlLRrDP9dToBe49ei-u/qlloibZsZ7w7Euu-9ai_/kza1uTcYlv_LFO0UAQyW, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=P7k7ec2YG1lNNKD8YTyC/6DEQkWmN_VFCnCKMcnbG/g_7rqGaJsJiqyq3g_90z/_ePf40cPxzCyQ1bPsMJV, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=O2KZu3PgkCR2YKUlkTIF/BxOGO6Wre06AbY18fF3w/FZHK3kJrdUsM9evxwdGl/nw5Ymay_Vkh4jCxQ9_zw, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=IFgaKXTLyIONTEMAYuNu/QUpQPindU6tdwEkhOzyH/B79x951WKL0JTAIIoxK5/TE0M1r_El8HsdLTXOZ_q, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=lTGS5f8MOC6n94YV1wFM/E1qoVxf26tE9crxBBHdO/c1tXagnz5JSPGmCfL6cL/peCH4g3H6gZFP5VZfuJJ, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=uyT6S7Apxehs48K43XMC/6AQOjTakyZDwlMVWcl1f/C3JVwnV-YqH3e6hIpqog/CLpRsT7WNh1lxm6TKGuy, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=M-BIfTw2kHFmR6ZBvAUO/59ClNfQnKH6YGlFuLsm6/zTiOkL85Uj2I-wpf4D2e/D4JjSY8sTzBvv14Qdj4t, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=opzPb5m6ULvJhrjyvURB/8AJ6DSK90F-QuhSZ8NNe/W06d734QxQWalLcoIFgd/fB3HbqCeEznGTzWXRf18, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=gpAM70YV9OmJOcbVB1Sn/qkgpocJNIr3xzdDgL202/raYTgs-jMaz7IHDj0U4K/CxNb-XtF6eXltavWXMc3, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=U1hdg7wzx5onD9yCXgh2/XKDoFwKKnSelwGA8MHUR/AYPU0lopGAAbpSP8pNDL/dYwfIsFJS_raUGrJls-0, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=aishcokf_J1TYsK3_zoH/PtUPIwWByeExo01SJkST/MbMTvSuCQjSbf0QRbWQf/RrQubmRSTTDYKdIqS-9Q, stripped

--> SHA256SUM
8858370a6755a28251b3acb5ff666c97a20d974ef325b4d6a1a01e071ef11e41  ./ngrok/ngrok_386_FreeBSD
f43af93d9d7a9af22a2a5423a0b7b964790b1d2dccfd532142a807282360c21a  ./ngrok/ngrok_aarch64_arm64_Linux
99df3b5a7a1cbf943931aba41fdbb9b7081ea860ef9dec41b7fb08e53433d498  ./ngrok/ngrok_aarch64_arm64_macOS
2a4236bcd75934b99559f8cd22e02969862fc470d0be341f486fd7077b3b6c3e  ./ngrok/ngrok_amd_x86_64_FreeBSD
50cc97243a23889e8305c0b708cb65581a526d126a2b1497e6b68864aeed927d  ./ngrok/ngrok_amd_x86_64_Linux
824c689b990623f25f1bd2b851e95fd0924b6f927ece1a890536c882da571728  ./ngrok/ngrok_amd_x86_64_Solaris
d3942bf80b4ff16377a5345c0f3a4d24d4b0f9bb5f1c61025d51e02680451baf  ./ngrok/ngrok_amd_x86_64_Windows.exe
30903672a673454feaafde92e09f04804a3fcea69ef9c02027b6fb12e2ae8df2  ./ngrok/ngrok_amd_x86_64_macOS
ef6d337d0f7707a2c5d36a3cf579bf2244a408a78bff5a2409fd0f6ae88c579e  ./ngrok/ngrok_amd_x86_Windows.exe
9d545d400c4142cfd5acf19789c2b319d6b22e068b4325881301d3b1f5e1b5bb  ./ngrok/ngrok_arm_FreeBSD
5f2f0bf4ae42f5c8dcb945694bd1aedf963d631c39ba0cb9c0b9626eb396b2c4  ./ngrok/ngrok_arm_Linux
899f8a3c75343dc454d4cac266e9226911983e897fc5579e9388fe103fe58980  ./ngrok/ngrok_i386_Linux
2a27753de33a583005561cb88cdd209692b054d30f52310cc1b99ea3d2e8a8a8  ./ngrok/ngrok_mips64_Linux
0dd160bd819c78fa539eed6822b680d79b929d970978d7d4a7ff73828357d6d0  ./ngrok/ngrok_mips64le_Linux
cb1e6f9c2e8f90af012bb6ed628b50e13c667d5bdd9af6e1ece1c65c34c1683f  ./ngrok/ngrok_mips_Linux
8fbb9c13808b1a04b3d325311588638dbfb7bd916b18680d4e5e88d947a2f5c8  ./ngrok/ngrok_mipsle_Linux
abf54f24b97a3e6920b7612fc603ec8144d1b454c0818253e8a03fb2c64d5666  ./ngrok/ngrok_powerpc64_Linux
18c2f99fde882031664992461e8c13bd83001aa116beda5f794e42ac3b44db35  ./ngrok/ngrok_powerpc64le_Linux
aca1ba6d040ef4ba276c812db2830a935f750f58b41a3267b7e91ddb3a5ec192  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.7.0

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
26M  ./ngrok/ngrok_aarch64_arm64_macOS
24M  ./ngrok/ngrok_amd_x86_64_FreeBSD
24M  ./ngrok/ngrok_amd_x86_64_Linux
23M  ./ngrok/ngrok_amd_x86_64_Solaris
25M  ./ngrok/ngrok_amd_x86_64_Windows.exe
26M  ./ngrok/ngrok_amd_x86_64_macOS
23M  ./ngrok/ngrok_amd_x86_Windows.exe
23M  ./ngrok/ngrok_arm_FreeBSD
23M  ./ngrok/ngrok_arm_Linux
23M  ./ngrok/ngrok_i386_Linux
26M  ./ngrok/ngrok_mips64_Linux
26M  ./ngrok/ngrok_mips64le_Linux
25M  ./ngrok/ngrok_mips_Linux
25M  ./ngrok/ngrok_mipsle_Linux
24M  ./ngrok/ngrok_powerpc64_Linux
24M  ./ngrok/ngrok_powerpc64le_Linux
25M  ./ngrok/ngrok_s390x_Linux

```

