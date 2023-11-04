
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=kz_AwNUFdF4USbMe8kJT/fDqbv3vacjTA-j8T2wxB/W9cDt_SR3CrZzP_xspM6/5ySXGPEkUVRKVWxU31f-, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=1DkA2p63xVPREOrCSoRc/vOtXVf-1FYGgVzhRuXdA/9dAsXP958g20Kms1j4_k/atnIFIMKsrV7--b74PA7, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=SPoVpA5usovK6ZxRiMjH/WTeMHM1oJ-gU4GAA9tOS/h23qpMz_6B9AhlrXGKtP/j9ukxfnKJ7Ift1bqxdCT, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=RNgfoMwSrc66J0aHdNW4/FuLR3CxZacjuMoq9mHzj/P4wmfV6OHbSOlUuoCbW0/fDPZKsUorttuatbXP4DS, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=nYjtU3mwcuobfter8eFu/mRspfFaYl5RbBZ65_nka/GgmJTQ61ZXCuiWGBiQLg/XsDwEMms4A71n0SC5lmr, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=z58TN2ioECqTe6Blx9nw/YBIJMU-GSCiV9pRrs7NX/wkFna2xA0u3EplI8ie37/42VfhBlzjSF99HsNFAwH, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=rLW3-YsEZR1iCKyXfqJc/skAC8zZlVYMGuH8wUJWL/ldgvtvGE_eM4cMr67hUK/VHh3W_8CjMCSwsEK6tQm, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=TUtg3CKIg0okDbqR8Slk/yvuRSanOkAIdyvFomNNt/BUi8vpGBD2TJxsouDIdH/GSWrN0cPyI644-uzL8iX, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=vs0u0MRUsTv2BnX8PaUn/EIN6G21YukHupZtDuqWt/D0u4-x-owVjXjJXxbBim/bUzurwwGMWOFbbf8NdRU, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=iFDzfuL_ZxSWjkU7CAVF/l0lbR8mObSZ2kQ0i2DFG/v9X5XR0l7x7r9uegmiIY/Yl7J2Pr9n9Rdhjk1rh09, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=j4EJB53kjsS4oJr_rwWW/wRPi2o-_yAMc-SfZCaIB/kDb3WInzPWftosWItsEL/S8tyuAEBuus1ELvpoed-, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=lyMNLVctVwG86Y9zowxV/_oX4QG20malwIEImAn74/MkoqwBcuKOAotwn-Bz_J/IiPre34BbJdfFsVP0we4, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=ZSYuoLWzqzvJiFtxEgKr/UmWe7eWExuK-g3dAteAm/OxRwt4aSdHdWfMLdcT4b/nc2l8WVfzYh5TDSh3IBQ, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=93CsI1I0Z1FPQiMmm5q3/Cq7QRdIUlVmw2uBH13yg/zXI3wjGJGg1ImEwZRrGp/l43rwQNX3CwdSLoiIeYL, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=5iPVgN1MBEDPRozAcUuP/DB4MIwHNxOuACOH4gF20/JeZc2Fxnv9og6tZ5aQHp/_iQecGVLRC2FMrD5dmlL, stripped

--> SHA256SUM
da45e100cb2bca102848ab39549c6ef8dfcf63f1c9d79d224ab3af238754e085  ./ngrok/ngrok_386_FreeBSD
203ac71b0af764438ad6b0fc27df71e2e8c10204eec88d670dc78f4b92dc9116  ./ngrok/ngrok_aarch64_arm64_Linux
9fb23648c449a773eea5c0edf7c35b42b4f6432ad0bae5d7fa7321c71cd0f545  ./ngrok/ngrok_aarch64_arm64_macOS
90d0ab20802d428f3e3154172ca79160005a9d1664fa154d8de2fc0bfdbc5b7c  ./ngrok/ngrok_amd_x86_64_FreeBSD
864eb297580d0c9356ac7dd2e0def782774a636abe2afcbd1d422ab2cbc52535  ./ngrok/ngrok_amd_x86_64_Linux
509d7d0b9f4123ead38d3a9bf175f0f4240dda672e1e7429d3e5366dc2a36ef9  ./ngrok/ngrok_amd_x86_64_Solaris
e9efe5c55f14a46ad8a2ea08eee0fae313f949015b7231362b717ebdbe297229  ./ngrok/ngrok_amd_x86_64_Windows.exe
562384f2eeaa4d1ffedd17599f7ddb7968acd6267b6b06e2a3664e2e61a4dd92  ./ngrok/ngrok_amd_x86_64_macOS
bfe4c3b1854965b6f473aebc18797877335b03027a3f60d69052bec29a905ade  ./ngrok/ngrok_amd_x86_Windows.exe
70a0f9be0978108b073a91f134f54af68ef2397494187994639be1f942afadc3  ./ngrok/ngrok_arm_FreeBSD
dc56d43e353dcea410f30593c858e0240c22c9db1a803e436f8f2540143f9c10  ./ngrok/ngrok_arm_Linux
7e29b043dff90149ab85412a8989351195afb9b3e398dda4675b2dac7ba812ce  ./ngrok/ngrok_i386_Linux
802283f6c46e0d085ce69011dc430591e8925b1d96c3eb14c2e8c5220bd6587d  ./ngrok/ngrok_mips64_Linux
4588d28c5288f841bfe5b2c5eeac044e5633b37b4c7b46e5b2b1659d79e86b9c  ./ngrok/ngrok_mips64le_Linux
4f523a2de0dc201bf4e22f0592f92196363a4d3e58b8df8106990756b9702a47  ./ngrok/ngrok_mips_Linux
be49e44c862ff10cd91b098b91af02c0f936ee2ceb7bb3b03f57afd9c9059fd6  ./ngrok/ngrok_mipsle_Linux
a58c815563b18d081cd5c4e3ea48f4bdc1d1e3771b7fe97d2433d0b48cbc4bf8  ./ngrok/ngrok_powerpc64_Linux
032a6998523a2850da2c89e23c35377a23841db26cb2bb218f8d4780216ec942  ./ngrok/ngrok_powerpc64le_Linux
3c464bfa366c20a6c1974f2ce686fcc2cf12d6fe9a46ee876bb6f0e72a5500fe  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.4.0

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
24M  ./ngrok/ngrok_amd_x86_64_Solaris
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

