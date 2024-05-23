
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=_Ex_Dpo6ye6HmydcV5vJ/-rScCJyHT057L4GZPgtM/dP4JR2TpsOciRaEKWtS_/JXP7Znkk2el-W71CPmgZ, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=KTxDOUf7LRlmqyjnzKxs/ni4jwyiAbgS0z5unQebN/g8a7smETUeBnjWrIYBOw/WyqEBvzGoJpoAbaAj5F4, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=pXlFhWFC3sK8huqHqtjF/WyBD-cmXTlpiwNtMmZD5/DxyFNZ8OalNcczZ-OQY2/qCX_fS8iVzG8GgO6vKof, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=nFNtRXj1Hi-IqKCK6Q4k/PCDpkBIwhClo1H0NuIO9/pZH4Fe9pbFp2W2LayRYQ/BncakGHH2thEmuGWlY0g, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=gp6JFPKvDJxfrePngxwb/XZl4-JeVmmPMZmFvlnmv/bQcY115j89laS0rEB6kg/6VO_LZCypTmsnXUT2guF, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=cnUwk3JQntMOMKwrR1NU/v4HQqvleAcvRyxUqYOow/faK6h7yce8mrzTEO3dRC/_FPXpwC7xjMJGiWX88MT, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=v1iXiAt_yKViFU59oDxg/URpdwsr_fIkynMfgx2Qb/izqj9GsBuc20AFG-kUpR/3qG8bN8ixPwTq0_O4FK3, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=tkphiC0tahRC2rZnfb_Y/oZKAIg7s7StbmkMzWZMC/Uu6yH6UNHC-RhZAkL1VJ/kdMQYyg4zzVrla16GLfp, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=zue4blYrYOoleGTdMafh/qcne85zlqWTA_FHIw8vg/KDdZmrDhhgBSo7LzCF9V/uGeu5U2f9zMDOqzDXn_E, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=8nkUf4l8OxCKbak-EGMY/B0Z9jNlniVqLFYuXVMS6/J4QupAT-m5uiA456VSU8/ZHkckmAwS9rfRE4COMY0, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=EURo3ZBz2KJVQz-dhvc4/46DzCN0zvWfseghOXcXA/uNODuNGQ1IXG0higKmVL/-ZQc6HZnG_Ymv1yBy7oc, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=rpuZYwZJ_a1ZXOhyZdGd/Azzb03L-S-xbiU18dEDT/Poqllwc2N7UFpYOBzJs5/66nNTUFpQTRaAHR-fYZZ, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=vb4D4TtnwxBaIPElp6wi/HaFuSsM0lzUOdJt3dUve/7roRJrSm6KrHqbGdgr99/fo4UAUa8UojEGrM0elZx, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=KcJ2nu6ZwyPm16A_Aqrv/OeDXQbmNWVsaaDXP2Gno/MHw9gGOzSSsKfxfECmLI/vGE9zmVBrI8CwsYUdwVt, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=HNr7-CBR19va7Qjnw7r7/pQtPKn0iCbKtNwgKBjlI/U8iwWnYDxJEh9uRjSTGO/vjJjiCmcnOUeHYLNDMhl, stripped

--> SHA256SUM
a1f28aba73cb8fce57584264da7dd1fa6bbc2fa6b2eed08c2fbebbf6c5b1aaea  ./ngrok/ngrok_386_FreeBSD
0b83c064d700474565e36d29c4428fc179081867a84ab8a7500d2a58c29661f7  ./ngrok/ngrok_aarch64_arm64_Linux
e4d88341c325f66a82b5508dbcee9304105d9fc120d31e3f3a467683d5c8545c  ./ngrok/ngrok_aarch64_arm64_macOS
b63856ba967bcf53953ad00b0fed497fffccc8c6ecd19c8decd28b014b2dc59c  ./ngrok/ngrok_amd_x86_64_FreeBSD
436b0dc89e7b069f6078b9931242664d2f249d17787781e597c8742ce9a21083  ./ngrok/ngrok_amd_x86_64_Linux
df1266feddace1e078e346f8685fe426990786a4d7c72c98ab6a1a602cc180f2  ./ngrok/ngrok_amd_x86_64_Solaris
7d5b17efdc46f2f20ced4ff78bf63d96e524c86d447c68bcf6851d49998d6990  ./ngrok/ngrok_amd_x86_64_Windows.exe
110cf65c70199a17d77129eed60e10043b0ddbe10190430ad510960c0d68f7fc  ./ngrok/ngrok_amd_x86_64_macOS
56eaced564127c95bac89b2b0bcc3d3db623d4337e87dd162918ed756fb4718f  ./ngrok/ngrok_amd_x86_Windows.exe
f5b79b5c0a070f17dab160ac88c317a5d47a722cdff2c7f9ceab71a58fba33c8  ./ngrok/ngrok_arm_FreeBSD
3a4b295806128fc37a699590fe923cc294697ff8a8972d5b07de88687999c8d0  ./ngrok/ngrok_arm_Linux
22baa463d836f1863dcf91eb19303a3517cd9d5d4a96529ecd2dac1d1c37c8cc  ./ngrok/ngrok_i386_Linux
7385b5015d2c9d699422e34b6b72d368f09cdcba110296456675069bdc5220d3  ./ngrok/ngrok_mips64_Linux
ecdb4109c0f2be567619760399d3d47d8305148dc11100eecdddd8a5f5fdcc3e  ./ngrok/ngrok_mips64le_Linux
a318e17ff360347e502336755afb8f6514b1e4a72e4606e32bd8b46ee3359112  ./ngrok/ngrok_mips_Linux
824b85e009e1feb8d708b826d8e55e0ed133e0bc6c62c4780041e5038932308a  ./ngrok/ngrok_mipsle_Linux
8ecb5b5fe2258dc3ffebfdf619786ecf8923c6f73b9407656211de4c68ee4526  ./ngrok/ngrok_powerpc64_Linux
1b6006c8e89cb497fd2f11b844c950fd6c87e18c8e1cc29c90d5f06dbff1f134  ./ngrok/ngrok_powerpc64le_Linux
026eebb555f45cfc41f2f28012f48b061a42fe695058ac2e027bed1714332a64  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.10.0

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

