
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=641HCcDzUXayKX2Sye3Q/qG9igjHysoimdNTntH_P/P9mYKbr0PFBTIg2_WVSx/bsnr_ycbkm6Z2fgO1a20, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=JHdDV0LSAX0Ut83-O7T-/J6tSwQM-6bSj7OjD6mKU/rtlWpja0mQ4_A-1ErEKr/jwXKbgCx0AeDliZaV9Bv, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=68NkwLTle3gNvb3o8Iyn/WfkDcMKzAnVir6lA5yEm/OlJuwxq4RvMBUyAEx6s2/E6XZNlPKvW3YCrgLhUZw, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=WZ--5VPZGvT33IUTnou8/cZRgMf3tnjDzx7_Dup6U/XTWkeI4pQqoIUEakDQJY/RxYJjkEXGnpBPWBpDU_l, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=fBOOUhl7q0Cb18m0RdZi/wqdZsf5WiMvFhXSxa1Qp/sfxotcyz2JfZnSJ1byVg/anxBe6IKEIGIlBSLw7uK, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=_0DayZT7J9bFwxODODiy/vRWkdL4QpZv3KTDcTXOA/whZUAW5-Q5QNFVTrJY1U/5CBx0qhEfCgUJJsW7SID, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=VIq-ZnrDKK82Fn6kgRFI/E3DAkyll2jYJo1jRIIDs/a2lmujaa20qEH3dR9UZF/Fqx7G5oxDc4gQyNv8_pF, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=XJJQKcR_YcIu0C5yPQlH/jL3mV9RW2c_vQVlGv0n4/BgGfp3o9_IDHtJiJEEcj/dkHevzvYV3EEGEl5yH53, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=2fgUi8VXsb42zPnqwtUo/urhgBEIuhDMMR4bMFPK2/skeIAbkIFBtqYXZDPRI1/5uVyS1zJAEbUncSyDWVT, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=6-tXCbpdYpTyuj3oeHYp/_fe_XQ1Gk7R-E7YRrdwE/jbWxpae-u00T-OYiFmht/AmDoZLksXxQltrfICUMg, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=x7B7GTEhdSfE5aJuHwro/Zu878GaijFx2xWeWWWxg/7DednUG7VdOaXcgys_ep/73Yc93rAM6mFvAik_1qw, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=h-NoKXOp6qE1pygzcD81/5EO3up-JlBcVfjJXq4Iz/cjaIOuqB7XGOhAb-BxcG/HdxLODxd6xBD7e7LaRDA, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=FAAX_3PM8qbJ59niNQ33/_GPFMWCGOPSjfJ7xtVQ2/ogpbICF7epqd5ouDg2kJ/DFB_giLMm-c9uXUmHXPY, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=-_IerR1SdMN0KtGrdAhJ/_RHwu26ZLtVxdZIyH9JJ/TFaxkAVf_DnQw8biOM5v/ERlr3Vb-PSTtgKqbRbHU, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=EA3TGc4VKz4qNDpzlw7w/d07M--09IZotj4bO3GHT/YgXbimfBtZpZtae4V6H0/LzFOohHihnuU9DIdGzDd, stripped

--> SHA256SUM
fabc3ef3c2e6e813fa814e5c24d2795e2905fc029e4c6e5f389b0cb07dd7d7af  ./ngrok/ngrok_386_FreeBSD
23abbf5ad12686e60f2fe02ff6b2c670f10feb5a25fc38c13634d71743aea900  ./ngrok/ngrok_aarch64_arm64_Linux
7846b024703341fa0d1e3bd794684bd2a53f612ade1396c6deca862c12391b08  ./ngrok/ngrok_aarch64_arm64_macOS
7a6997a5cefd536aae548010868856ca52b773e362395d1c328d0d6b40efaf56  ./ngrok/ngrok_amd_x86_64_FreeBSD
f6d14ad4c12a8aadb15aa4f4b60d463670a8c63aa1ec07aa4df0fbdbe371b7dc  ./ngrok/ngrok_amd_x86_64_Linux
63c4461a6816bbddc400fc9659fc0b3e18d3978810398a4da98886411034c7a1  ./ngrok/ngrok_amd_x86_64_Solaris
31e80c76e06f6abea8d311fd1e47c4d2527e28330d40c91e30a0c77f1c37edda  ./ngrok/ngrok_amd_x86_64_Windows.exe
e436f6d9b4ce656ab0ae5cefa03e502a6df40e4dc8da70466328d804356293d2  ./ngrok/ngrok_amd_x86_64_macOS
27cffbf453377790ba115ce7c19656567b9973a2f50d2a5121f4a33a1e310f72  ./ngrok/ngrok_amd_x86_Windows.exe
818f065cb2a71b15bef87b61705f91a06279ad0e009f8c07300f7769d12105dd  ./ngrok/ngrok_arm_FreeBSD
8f2925b48fbc4a1a1647e07c58f986918aacdfcd288d20de4764e858039c8309  ./ngrok/ngrok_arm_Linux
1c54287670ce0752e16acba949d9ddb931a8b65dcd68d16fae7cf138b6ab647f  ./ngrok/ngrok_i386_Linux
2c9abd640803bdfd1bc4167acc3ab336ebf9dc5c8e6afbd94143c518a8d10128  ./ngrok/ngrok_mips64_Linux
3fcb749637ff07ea054475017f10c874fe770a7e7b16ebc1cb0b53a8576ad98f  ./ngrok/ngrok_mips64le_Linux
9e9162b46d0da50ef52d087a40154745d490230b601f18395928fd6c80a7126e  ./ngrok/ngrok_mips_Linux
5432430f5f0ee9feb47901a23a2587342b6d0dc3e52a6a6306ea236dc04b589e  ./ngrok/ngrok_mipsle_Linux
bb5ef75bfe29fb7822d4974a1cf4f756525457b67aef0659fac0993a49809f8f  ./ngrok/ngrok_powerpc64_Linux
67a5a821f9c39c352e5a4b535c896f8f83c7abd82682b702b0e2f731f9f6aa56  ./ngrok/ngrok_powerpc64le_Linux
933106ccbc65844c821a2be3aa8f2912b045035adf516da8c696451a1e91fd41  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.3.3

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

