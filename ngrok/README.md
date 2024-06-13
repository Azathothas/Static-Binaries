
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=E9p8WQ8jRS7HxGWU1GHw/93JPnp_KFR9YfKk8kvbA/aOtrjdR60WHJj6201yBp/B9-QosRthEDA75F1uhaD, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=VMrT2hyABE9OgVy96Wgc/zkziliBbu6cTKzl3Lfmy/Dr9rxbgXpie2lwIB6Z0m/6_UOgRMyxlX7JxdP2t5Y, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=GBuIaBEjcb3ZKTn0f7mz/JEUIUJJed-OdiVXSiXWB/M31jcRufEaj8Le8EHXZI/Oa_Wwsq_pDHnbZIlZB5z, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=rkz1lkR2r2aKlrR9_B_8/10zocqixm_CHBcwvF3_C/CFB0K3ZjbiBOiC0NIrfR/W8ERNchsmzriwYQL4puy, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=m95dhd5ddAMLxLGRbfCu/n6fks1UU-ViPByy0l84p/KMKPPiJSr8PhZwBRZoJd/R0-MT22CXIUwhCAA1Dhq, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=1-7peHLXxrhS3iZf-8ZW/oGHst_lUDUH90Tz7pN9s/0LwjxljqIfPawauoSOED/ghMQLq64XQexHPwrhsbj, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=jmqCoFaMNb9_Xo9hzCKb/cAF9ERWpWi7fIp3dZTOj/Wy8CinH1oR2iuSapDJyJ/73x8c4u0aV9u7C27_j6m, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=_aQ-_M8LtoZHuQr01i54/MAyajCZXuiFiqnQy8U-q/_5fkoewFvgFrkV0mY09y/N5ePPGxdD-5ISnMIMfoH, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=IkLjiFkg036_qrZaQh8o/cMsiqAIi7GkE4ewOhyep/53uzDCup1QGXtuCQpGg8/XDWANMzi6OUeAEqCFd78, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=J4C038WhAYK7lK7e0wRX/H4zze1w6YaMJZ-FRAB5T/GXEr0QJb_iB04nk1q8kh/VErTg-ZwJvcG1aNmc2UK, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=DJgCEIHqJmLMwy_8A9bo/RYa-ipUMG2Vlu9B5YAkR/OFB2p0DkTOeYTQ-MtPgz/TQ9qW4vze_N9yMX4QGIk, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=n5Glqp2P1XcZJyNtGSVp/mzmUYOIHz-R64n357G4T/nH5wRRmTQkjTBMnoBQ0l/THEvcBhyIc_HTb86OPst, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=LfRujxNAFTKzaXaFv77h/XUOOV5GygatUCgLBMCko/Hl-RGQ_4-atUP5N0T_ZQ/aTUplVKXuyoKz72KfDoR, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=qI91i8G_SIBatXgAgxUu/egKqCxg3SDONXUP7iKTO/55YoXI46wYU_m7kR36Jy/MBA2JAlqnT6ucbs_KphQ, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=-6YCRJElbg27Cl6N1H_X/DKRobugirUQx7SSuArnv/1xjsypfQeHQQ04UCu0Zp/POjbdqwJidECS0fkHbSL, stripped

--> SHA256SUM
0ba6d8381333999549c770575c4983b20b23e11acd6543eba11cb8ba8e2aa793  ./ngrok/ngrok_386_FreeBSD
3639f1d06c76f9d4d3b830eae6f98d2daa27de3234e1b57c6afd6e589d1dc730  ./ngrok/ngrok_aarch64_arm64_Linux
a4cbd70a99c96ac73d355893c0095a37e737ebc3521eee82113c4a20388c8715  ./ngrok/ngrok_aarch64_arm64_macOS
2a48024abfffd71304b36d14d2856ea1f713e90806104bc6e291ef73269f4b95  ./ngrok/ngrok_amd_x86_64_FreeBSD
8bed9e064f4ab27939fba93c8a6b02997bb62162cd94c349d1a0149eb76221ee  ./ngrok/ngrok_amd_x86_64_Linux
9b6b4eb5214a208e8c50af99e44a1186ee7adf64aabc31dbb4d78495498382c6  ./ngrok/ngrok_amd_x86_64_Solaris
3696e6e2a44a930284009c497839227c4178ad232d2d74bf68a9e8d591fa84ae  ./ngrok/ngrok_amd_x86_64_Windows.exe
26a5e29f9744097d6269fe55215cfa54f104724fd4f35fe6a4a90b010d0afeb9  ./ngrok/ngrok_amd_x86_64_macOS
225999472787e422fc0b8b4b387e2150bf369fc89d913d695ab1c7406a3c12a7  ./ngrok/ngrok_amd_x86_Windows.exe
a179688164d51655424d3a1876070a3367c16e4a0ffea913b68ef8522244c220  ./ngrok/ngrok_arm_FreeBSD
01cf3c0b1e84a2c89854c55d5f56fad4440dd3f23dd71d3601482620eb21efec  ./ngrok/ngrok_arm_Linux
ce06e2e47103e32a460d6ce01001dd3a9ce102b7794b257354b58b667fbc6cdb  ./ngrok/ngrok_i386_Linux
d945397e79244ae38022f3395fe0e3a4522c74eccf2d8243fbcfd94a2a51a040  ./ngrok/ngrok_mips64_Linux
f17fcf29910914e15c6ab7e47b0ffe53cef458fe36004c43182e53087b2adbb3  ./ngrok/ngrok_mips64le_Linux
8ba68fc624a42e732d633fc6f38ad4e5a1a8fef6e1f545592561ec1b9da8989f  ./ngrok/ngrok_mips_Linux
ad2bbe24b2b9ea01c47359a46e19126a294fe7bfabdaa9f1788dae809eb95f92  ./ngrok/ngrok_mipsle_Linux
baa52ab03e8a0b44bddad04ed8b8faa68c3e64774bc52314da12eddc3418a540  ./ngrok/ngrok_powerpc64_Linux
2aa6b287ff524223871ff68d2e5f962f40cbd97eadcee432a37043c63bab9177  ./ngrok/ngrok_powerpc64le_Linux
8080d03af0229731bcb994080deb51eda3425ccd18077fb2cdf843126177156c  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.11.0

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

