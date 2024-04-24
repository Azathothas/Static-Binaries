
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=mizbUbcfPIoxej0PGRQH/zc0mcUIXPBLR4VgIzIVZ/XVJ8OlHb329X3-CxFgvy/R16ekDDu-zmQO6DrUNLn, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=Y6DRz-5Gixk8EO5CzSqJ/cBtLONVlGB3mbpndOQVM/ALe1ZeTqfg8aoRRjtcVu/V3nFEPXZAfy-bvp2ItdU, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=N_IP0L_6fntjSrQZCxtu/OESH_1SnPzBQExMQspHR/ZcqoiWw_35XGrPUyTvpw/LrdDjD6bZIxJdqTwCRDT, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=kGe8TlcwzW4HRE1AKa5j/EBcajLi0258mnFyhpwW2/hdCzVIc0ad2vYkdO_ja0/KE6TDsmkqgRSXMjsyrfe, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=fAY3WWXF6z1LR1yvn4UB/d7IXNI4mV3-L764jKv2p/cvQkmT5-n-c7-PlOt3Ic/KgmeRgip7w6E0oZ8Zfc3, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=VqPuxzrRn4gyMuUvdnwd/4IvtjQ6bYoPxIceFsy-G/tLe1Ogldk7pARFpNEssA/h8sgv9t112dcV0oKm-so, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=cx6g6Xg5RoQOMSZXJrOQ/EQLIeT6gMB14Z-CIxmUT/d5p9iD_r6PZ9PIajqnWj/Sz7rtXpYLhxhT06f9bAk, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=yZKS17LyMY69m-zfDo77/qX-WSUNg1l7lSGaM0foP/KRo3_CKOO3cmNDu0rh50/fLmtZYHgR5nwpZStNxI7, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=6zldKgLV3sUFfzS-zRCv/TZeH93hZtBcVAsLlDslI/H3FCM5aB5U9GcxtO7Y7J/xUMHvRsbrOTgIPy_DzW4, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=7d5D7rrING3mD8u7abg6/FpBZljLkohvslZtFpbn9/IMlovv7aOL2Gk60UhE_A/IB1CHzEm0MbnKHJm5Enc, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=bE3KS5QW3VYOYMjgRSob/Vw23CBR40iqNOvCrpcr4/x9OZsxtWfHXhBS_i1tL4/N7OSI-sJV3DROX3l2YKD, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=7BjF1wUgOAKvdl2jX1TD/-uYr0jJfa5AaezUgrFW4/JJLJJ6C5J3QrrZNghmMw/Ffu4FriF14SKVDzX4EBP, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=kMrb19qRtRtOAgzWp_jD/Hqx2piVchWjuLlGZRpvf/nmW3Uj8u7YiIJwmMNgOH/pcrhAw10daxRu8RuwfN4, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=URknySkSm1dGEYM5vczC/lh3nT1ZYwLRag9vb1cBI/fM7uIbtjWw7a6QT56EOE/y4Lb-76jdcZFwpK61EfM, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=Ms2s3XwcPv5BLib52Rzj/3jvvi-OB29mbRR_zHnrj/5aLNteqAXr1ulKuahauZ/IyKQcVbxzVW6FMtJ-GR9, stripped

--> SHA256SUM
e0be56ece7ecd09ebc9f5adc13c0452c539f28316294cf0fdcadfde8294db524  ./ngrok/ngrok_386_FreeBSD
363c6757ccf511579ed0215b3e9ce723e0bc728d26981ee9c77ceda94d626603  ./ngrok/ngrok_aarch64_arm64_Linux
134a4b69f53731b6fac0a60ee2c7eef9450b966dd51b895c10fc5705a4211a55  ./ngrok/ngrok_aarch64_arm64_macOS
034a3c03bda507a9ff47ddb733527381762d6b1297a7ed54ecdeaad83d1b2245  ./ngrok/ngrok_amd_x86_64_FreeBSD
0fd7ce06d36c258e342dfbfa990ecc46e25f3c6bb5c1695272039cc6ae3c52fe  ./ngrok/ngrok_amd_x86_64_Linux
d7d322d05cf2ae2c0836c92bbda6eb73d7011b6d4f53bd348cc3c0163a69dbb6  ./ngrok/ngrok_amd_x86_64_Solaris
698d758ac7ec8649007ca01b1527d6bd7d46127fdd56b061904eb9bd631a7847  ./ngrok/ngrok_amd_x86_64_Windows.exe
29d699bca2cac98964ebb4f49573c5b5f005d2db1f182d6fc34d98ebc675df6c  ./ngrok/ngrok_amd_x86_64_macOS
957ebe3f7800fa03e3d23a76fffc9437699ce52536f7f9e7184fded7e4fcce6b  ./ngrok/ngrok_amd_x86_Windows.exe
fd87c631993662e7caca3635db3ada1cbfceb4a2f8b8edbff3ef10ca33187ea0  ./ngrok/ngrok_arm_FreeBSD
d4080caaf7d178c9c04ab26826d9dd190e2c94679aba6ac68afcc9066d1b4eb8  ./ngrok/ngrok_arm_Linux
66d95918081a5b90f3e672b4c5ffc4cc2e8592d373e572f3331f8af96e01d0d6  ./ngrok/ngrok_i386_Linux
fe141b4f4a6291891578b3352eb10cbe9044237757c94f5c9df299df6eb034d3  ./ngrok/ngrok_mips64_Linux
96cb3abe0cf7459908e8c0cc118984846a39feeaf515f655d157d392f47af88c  ./ngrok/ngrok_mips64le_Linux
d992612961d6fcb77e1cfded35eaaeae1a3606a50b0481d4a13874080c7f7c2d  ./ngrok/ngrok_mips_Linux
61fd6c875795ce10227bcdce5c63328848327f7ace64abf7384397e2db4306f2  ./ngrok/ngrok_mipsle_Linux
828a7fb97c3a6eb33172918093f2a3470bbbe78cd908d4207de9082df3c6078e  ./ngrok/ngrok_powerpc64_Linux
a4aa10f9abdb36803bd79fdca48d49e321bffb536d1f0d035e14261522a55bbd  ./ngrok/ngrok_powerpc64le_Linux
4d0aadad61530463dc981226b75789f341cd1a31260f5835bb420b09bda47536  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.9.0

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
26M  ./ngrok/ngrok_386_FreeBSD
27M  ./ngrok/ngrok_aarch64_arm64_Linux
28M  ./ngrok/ngrok_aarch64_arm64_macOS
28M  ./ngrok/ngrok_amd_x86_64_FreeBSD
28M  ./ngrok/ngrok_amd_x86_64_Linux
27M  ./ngrok/ngrok_amd_x86_64_Solaris
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

