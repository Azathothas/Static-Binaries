
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=t_FNZOvMcuoEZzkZ54OZ/RVWc0GrHLZWtg0wmJf7J/TwiWqaBXxHbzNxXd1-Y1/r6ArDEJ_JNLKz8mMY6ag, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=UHBoNIfgNZof86Mok7VU/TR4H4DZUs_-onZdqo3xJ/r2mTUFzIDZwv4LF5UITc/eMfpuICs8tt_9bSxuspR, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=_KgiuLmz24GjYIolDqR0/-Rw4nCKCY7E1c0vxHZCD/0L34C-KaG99Tociik03t/cCmvv0LDqjT9F68CgP0C, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=2UjBxH2811m9YXdLCmaj/sM2152pg6-DE3XpkG9lm/UexD9kyTfrRC8Eyw9HUp/QhX62AGTUfV8emxl3915, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=4-0OKNK10GSU-BqX152y/LHuHNj7Df8XFMsEhZxgt/ebs_azjchA1KTuxIOUX8/OozQogX5as0OvNFLNY3b, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=P78cv0yKjtl5w68n_T8Y/-s4SZQZiv1MFVBnUaVBg/oPuM1GmnZY3zxDn2lgG7/3W-LZE1SUjW4zwGdlGHr, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=JOR4jcAa5eG-SNc2bmhW/x-xaRTQzvDiwQci-HOlz/9GnbTDDD56R1Tv7wpJZB/ecLVot5FDhJu766Rxi2o, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=wEtd4IYM39AsQk6rMP4U/9rxKPCRQq-PiSq5VsZOQ/iO89PQ4rTZ6oHHAdDPXv/qMZEYKjntvoakvrPHiRZ, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=D_5SiFVRc0z3UqAj-SLJ/e62UJAf3jL_7s6-UovB8/s8tzlB5fABpvcZXkIkff/lxnUezxVAaCnos-Jv3YK, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=Hv5riungL_zAvEGPzoTS/u-tWrD65krc0AV-oKATy/RzORyhaI8Mx2KR4gOOAu/oqsHHGM1rWkmq1Hb8_9w, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=5wI0faT2e26WrIQz_UoM/dubk6iNe-i3tLp-31p0A/4Kt1Av1jW2eIQ3VCeKTi/k1G_WwSaF2PWg6yGf2B9, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=soqlpTDD3i3_rkfkkVnf/CNR7EoGiPuytdRDN-uj2/EGFTXOeISbbigE67_7-7/-BBT1-Vcoit5LlBnmkr1, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=CUQLP-jAB3QtSnYd1smm/L9dkFZIjmD1-78izHs-s/v7O8kWeQmPAzso6c5QRO/aj_7U8_WS6Jp2bu8dthj, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=BahM973qNTMeFwrWeYNo/hIzqOxrXEo9HLkniv76k/Nh1VOLcbMyea_AzQK4q6/mokp_gS1Sivw-xnDinOh, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=4skIVDerQwjiCTcj6MvI/JAAcP9VK75tPh8E3JpR1/ghs_n61_dxKQtOxfqY_x/2JBw_ctzGBt7izhAgSbO, stripped

--> SHA256SUM
8ea2b1172ab0e5dfcba0f352f8b752579737dffc7bae8a16f7e57dd75f25177e  ./ngrok/ngrok_386_FreeBSD
5c4e75c2b8c874b4f79a3c2427fdfb21a1b3b285a30934c59adb0180e3f67d35  ./ngrok/ngrok_aarch64_arm64_Linux
b3a2b6ee2324c09869c6b5ec9d008e4fbee86568dc589652eac41bc3d2220076  ./ngrok/ngrok_aarch64_arm64_macOS
2187c5a985f8e130f444f593f7be17bd0f4ba885d69ce273341b41eb19a68591  ./ngrok/ngrok_amd_x86_64_FreeBSD
ad906e62033cfd86eb08928516605ba5ff2e92c0aa2485b51b711bd7eabe2581  ./ngrok/ngrok_amd_x86_64_Linux
4e5b4b752e0cc3947c810ead6b6f08e8671cb236b74986e916e7ef678d09bcd0  ./ngrok/ngrok_amd_x86_64_Solaris
021bc47c89c8636feb6e5b58e8b9571f4aff8ff2e12f4a30aee076166569d7d8  ./ngrok/ngrok_amd_x86_64_Windows.exe
2d3d445c36b438b8b5abf7d270ae1ba0b40517785364f7070e0735d8920d51a9  ./ngrok/ngrok_amd_x86_64_macOS
0d8da14b39d837e82004d33e64215837de690d67c38cbe20f2c0a5239e3e38a8  ./ngrok/ngrok_amd_x86_Windows.exe
211a678a8e7bd71d08532697fb7b1973e5d810471921e321f5595a372a126da8  ./ngrok/ngrok_arm_FreeBSD
818d15c5ffd74d078eae1ded94a04ddea3870139801ddf003f7079c65b57e13e  ./ngrok/ngrok_arm_Linux
634a2af7e01f3296cdbe8ff48c9932a09ffdbe5861d0a32f13a0369fa2c2b1a4  ./ngrok/ngrok_i386_Linux
cf31c09ce6d99e8be25068c669d2ded46a499dece163c516740ac12644ac2b98  ./ngrok/ngrok_mips64_Linux
5e7d36694462149ee9590f52d83e38c29c66f0b4f6844841fb8c23d5bd27cf09  ./ngrok/ngrok_mips64le_Linux
57821cef1169ba9621269dfb5d4897d2ee5cdadd9cef87bda703b0c72c2d9d47  ./ngrok/ngrok_mips_Linux
72dab62c151ff561ab967e87be0f9ffc6a5b41d23af7e7d17f38147fa9add11f  ./ngrok/ngrok_mipsle_Linux
16c656f1d5bbf747cedcb2fc77a95c3fd1e48d6cf7418ecb9afd294ad25078b6  ./ngrok/ngrok_powerpc64_Linux
57801482c0f5b997b6ef1794c6b105111ad295381318a28c38eedc159b9e9956  ./ngrok/ngrok_powerpc64le_Linux
28545919c0dd3e832b911fdbe675a0a3c4c81c6eeb53123ea7e7bb519378484e  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.3.5

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

