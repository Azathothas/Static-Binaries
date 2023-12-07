
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=_S7f9-dCP2g2CGtJ9C-k/jQdiQh8MFHbBFtalKVgG/WnjvkwtFiOzoPuQqcHJa/49TDhZgKSwR9i1hTzhts, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=QPZ9l5-tzG76Kk2I0POg/-NChmDQc4YwR3yv_yNDK/-98ljn0GlGITZJK9Lc_P/Dfq-CKePBSO1jQ3kPy1i, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=tXg03XgjCVHzee3qgMW8/qZiPFakzpK5jr0DuvnQh/IkfBGFoc8ewsKg8CsmfT/hDU27NcCBUKAMzQKyY-X, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=CiTFBJr2B6YazCfS6McQ/g_BqhSPj7HGi1xnoN9Jz/K_WUR3O0491ZsWwHusFl/jrPMVfjEKcVOhRggJTw0, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=VIjX-feYHDEm-reHPQa_/5UjwqOlcCMZ_NxJNg9Bh/QqhuG5WbYmUYKpfTTivw/dZaG-hmPdSHOaHF0ezRn, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=CHNlnv5DkZhG4r1j0iCB/Pg_JeunIYbvqu8v3zSJv/-tOVpPRyfSDBNjE6RTVd/-S2a3DNLmL3I2NPbLAll, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=H8xvWpeSpxKeTZsAE_u2/4oQW7pudypE08M5mOFtC/Rz4rcnQU-AFAJ0CLUP8e/Ccwp3Cln8c-QhkhUUPmw, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=rbKUT3h6Z6fM_GS5ttqq/vCX8wFmuGAm47sakYSWl/Kiq8y1P1FQLaNUNJ4Kly/4M62r6ok3oBIQoNvDvbi, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=qagm7r0QDGmPZrerRBs0/kw_G71X-tJIFCl5W4uF5/ZD03Y6qVq4nDtaR3qcm_/oR998UGap_jBq03nF6re, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=ZhGzMWVoB3l21ZBdQEID/xE31ThrFvlaWYDfc8fzv/OOe_-KaynLpzm8eLzbGm/XoXXYEKmNJHNbInr4075, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=aBR28sYX7zFVx5Zw1Tpu/sYInbm95EbCQhLnDvNGO/oYAye7VaOaqjHezqw63Q/MT_CUPcrzL4vNpWxJI_8, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=Zz9OweCGpVCKNlZgN9Lx/4vtD2kWbKplpb-4eGIq2/OUfULeiPr7P9HT9FhYoi/gBOSCzCmELUl7sf2IWtp, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=WBZjblcNvIUUFUQuTW3w/bSxJVNvVtlUXXu_fw8mj/ykaPlqiM3BhFubdD4_42/qsBiSWUcaM5oLlCLFDeQ, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=Z4A-rNzY9ccZdWyNXRX_/V4_SV1rT327ztN4zGswt/Kntlngk3iJM5PeiECLnB/vmQyZOQH9EfElcf8n2s9, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=m66-mI0LgfzsN4Et6Hbd/xLF8sMN2oCFX03sgRkHc/OaPpGdL4EUncUqZAWnyH/oJ7_VWUqf22f-TqCSKvz, stripped

--> SHA256SUM
d3e388347f4dcaa6c0ef6a1e99ae200eac28bcf0e9367ac8b65a89159acb96e3  ./ngrok/ngrok_386_FreeBSD
85b5ecc96a56a1d19324acb3ca3a38e11a9075be8cb97ee466a1538f8711a69d  ./ngrok/ngrok_aarch64_arm64_Linux
cbfd0bcd1d53aa1bc3b6afa54e0c8f01d77f6a369727f4f6eb1451b3a1eab3df  ./ngrok/ngrok_aarch64_arm64_macOS
ff6cf58653b5a801298c6c21c8e20a6d43259cfe072e4c147294de7abd0a6657  ./ngrok/ngrok_amd_x86_64_FreeBSD
e89438cc4040669a7739900992c05c19d792e5b5f2f06ad2abbf4088eb70d879  ./ngrok/ngrok_amd_x86_64_Linux
13ce4f3dd4c0ce13f90e01bfe00db60020e7971535fae57061e9e398dcf470f2  ./ngrok/ngrok_amd_x86_64_Solaris
4c3f7f6d85a2674423ea38a18a0475c67eb72f7d0b696e578b5c5545fda05a4d  ./ngrok/ngrok_amd_x86_64_Windows.exe
3380a2e742600fcef21e390291c4224e3e23fb31e832b695f922a24899125808  ./ngrok/ngrok_amd_x86_64_macOS
431fbfb832e49c7a5f635eed54e894d75ad3f46064df58a992359f74fd1227f5  ./ngrok/ngrok_amd_x86_Windows.exe
6f9a9812f486f8143a7e1158bcc3558f1e38bf0b76d5c710fb21247f4789ebe6  ./ngrok/ngrok_arm_FreeBSD
ba0ab1d956a0b05e35da6901691bd18166acc6a833c993e8f6b80f6d608e1d8c  ./ngrok/ngrok_arm_Linux
5a80ce828c3eddeaddb49e3837d6ffb1409f2f8c246c1ddad7ac3ce85d605eea  ./ngrok/ngrok_i386_Linux
977682de3ef5782e4353f722d39e83d91e803f79ceb01c6ed9dc7d6ff9d30fde  ./ngrok/ngrok_mips64_Linux
4de17803ae25f77a115074b424451101038e71303f4665912ca669c4d0c431ef  ./ngrok/ngrok_mips64le_Linux
41313a3e4dc55f11eafc17c01aa55eabd9c682b44c358ca0a348dff84a272558  ./ngrok/ngrok_mips_Linux
be76b481b2e636b4dd1ad8285b48300732023a7a313d342b8f31a45c4e818425  ./ngrok/ngrok_mipsle_Linux
a1e1145c6f107a836a16c0b0aff77a89679a1a6c9bf3c19cbec1b2326323204b  ./ngrok/ngrok_powerpc64_Linux
be88eab0af36b7aedb505ec15fd0fcb70d4057c4ed684d686102332349b2585c  ./ngrok/ngrok_powerpc64le_Linux
6e40b5b04aabb8fe6962f64a70215cc16f36d695b5d82a621c3d2f9f713bac24  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.5.0

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
23M  ./ngrok/ngrok_386_FreeBSD
24M  ./ngrok/ngrok_aarch64_arm64_Linux
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
26M  ./ngrok/ngrok_mips_Linux
26M  ./ngrok/ngrok_mipsle_Linux
24M  ./ngrok/ngrok_powerpc64_Linux
24M  ./ngrok/ngrok_powerpc64le_Linux
25M  ./ngrok/ngrok_s390x_Linux

```

