
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
./ngrok/ngrok_386_FreeBSD:             ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=M14wKv7Zf3Hu3O4Tz6rb/ixHbZ1xuYEj1fAZhsHGQ/44XAG32GqR9fTvzR2PJV/jPLE9xhPN4xBWKPpcn6W, stripped
./ngrok/ngrok_aarch64_arm64_Linux:     ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=R3BAT4gSpynrs0bA-Rio/dYm5E5Cat0fJUr-QvSLD/sZ1xPmYA-wu_I1nDF5LL/0qH9vOZCgWWr76ObhlRl, stripped
./ngrok/ngrok_aarch64_arm64_Linux.upx: ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_aarch64_arm64_macOS:     Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_aarch64_arm64_macOS.upx: Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:      ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=0GBR6W-fv6pPlXgLGq4R/9rtXbo6SMyc6KGAGEOLK/C4aRnASgXOMqzogr8EYU/Z9RyB1SAVmL2eexW6ixH, stripped
./ngrok/ngrok_amd_x86_64_Linux:        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=7Us_L1Qe9fx_5a3lfZUu/_F5FYavZXNGFV0SWXcgt/Ia9WnZnzt4X2ChlJidbX/632GgNpO0EqmrlVOYrnq, stripped
./ngrok/ngrok_amd_x86_64_Linux.upx:    ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_amd_x86_64_Solaris:      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=pw7klbvnhBQwcroF0EdQ/uK2pV7wqCh5LvJkoSPfR/tP12mwBECd-FZlpmi1kH/iSszVuVDsBaIImq7EfkZ, stripped
./ngrok/ngrok_amd_x86_64_Solaris.upx:  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_amd_x86_64_Windows.exe:  PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:        Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_64_macOS.upx:    Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS>
./ngrok/ngrok_amd_x86_Windows.exe:     PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=21UzD3OGGORasmi3t9I3/e0oJyjw74aeVBw8CRB4u/ZQwNgbW7WIh4BcEpIjo3/-Ochdx7Bo0NCUTlPxvvl, stripped
./ngrok/ngrok_arm_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=MI79YaRTAi2mfY0B2DFi/CIi5BVBpfEiiLysqJMZl/Tge0EMKpOmFXc56VSzO8/jcrRCbLSg_J8WOuh8WDN, stripped
./ngrok/ngrok_arm_Linux.upx:           ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, no section header
./ngrok/ngrok_i386_Linux:              ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=C-pndk2wsPxB6ZwK4dZb/WOdutifNHTZbA-Jv52jJ/qwHqi8yK8APf9vHgDtvm/UgPQnFnmnwN_69Zhef9G, stripped
./ngrok/ngrok_i386_Linux.upx:          ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, no section header
./ngrok/ngrok_mips64_Linux:            ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=2mm6YalCTf62T9tXEJNy/-sW4tjaXT1_0ar3cpAGj/EK7sfoEw3b6kF5kvB2TK/hrY3rn2HlWdO_E0ojcGT, stripped
./ngrok/ngrok_mips64le_Linux:          ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=dvXTZCPvPlT1cCuaMe5d/uv0MNBSsQd3Uceb9eFdK/MlqiD2niSkQyN_ORrJ1k/WLN0rxz_fSu2XvkcW4mX, stripped
./ngrok/ngrok_mips_Linux:              ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=otdXzFyJWSN3yfotVAsm/pcnypT_aHTBmO9iW_Uqr/wfx_n1gQSk4SItWTuuQM/Co-U-3D5lwTRkF-dVbIQ, stripped
./ngrok/ngrok_mips_Linux.upx:          ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_mipsle_Linux:            ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=oQAsnCEDwoql4VFdue_G/2OmURjxfIoW9pSKK1FRc/rqiyGdtqZ4BVx4xv3TZu/v4YVvUGFpJ_wtPC6SRKD, stripped
./ngrok/ngrok_mipsle_Linux.upx:        ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_powerpc64_Linux:         ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=idWQRk74DlsyNq_CpaOn/VT4hIO6K2pcTKuDLf40h/sCdaiIbWP_jM37vIvPFv/zIkKH9leqta1nTkFIW2L, stripped
./ngrok/ngrok_powerpc64_Linux.upx:     ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_powerpc64le_Linux:       ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=XGs2wdDlTpCJxOuyx3mQ/rDAd0qo1eKGp_z5vdkyJ/kd12n_976vv5QYmweZPz/5i80fLwrCjcaWZz1RnDw, stripped
./ngrok/ngrok_powerpc64le_Linux.upx:   ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, no section header
./ngrok/ngrok_s390x_Linux:             ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=pk-Aq68tm-LuCSojZpmS/nZto2cCW-En-wxh6USay/PZ_K5KIhQKqPmtGi0Mu7/acX-VGjaMu6wX6TyQvRU, stripped

--> SHA256SUM
b66c74cafc534e733b4d5820b297988b89b83cb765a31b47f73fec157fabee7d  ./ngrok/ngrok_386_FreeBSD
81af66ada44c90e8d1c6ff3b6697657774ec7d619334903d0494c51228f00363  ./ngrok/ngrok_aarch64_arm64_Linux
9ded7ec8a931603f6f8e25c97bc125ca7f35f1d0fa54a9ed2a9fbb38ad648ba2  ./ngrok/ngrok_aarch64_arm64_Linux.upx
44e0c820ef8e52da9ffd4c0902d399c036f968c7b0a822c29c95245b7e74a729  ./ngrok/ngrok_aarch64_arm64_macOS
d1733a8ff0b6057ecbb55b26f0dac83956bf871ee9afce05b4c5f1a9efffad97  ./ngrok/ngrok_aarch64_arm64_macOS.upx
2f9c51fdc4f6daf4187b08a4d0cc88630b36da06419014011618b23762af35e3  ./ngrok/ngrok_amd_x86_64_FreeBSD
ec84d636d13fc663d27736e90be2aaa968583370ce6cd5787360784be6665cc9  ./ngrok/ngrok_amd_x86_64_Linux
194e06c46276dd2bd2759a29322ef8280e7ea2542776fa4c4ce2edbb41fa062c  ./ngrok/ngrok_amd_x86_64_Linux.upx
d448101f89ddc4a63408207766eb3b0973d59f827e217faf72101cd80edb834f  ./ngrok/ngrok_amd_x86_64_Solaris
36cfd4b19fa2e54e97d8d7ab1f6cf40c4fd1ba6ed6931f4eb7da33ea218a62e3  ./ngrok/ngrok_amd_x86_64_Solaris.upx
a2cfe16186afa8798d2ff42ba08282d97e1a855a3ae31bc25c84e871943bfdc0  ./ngrok/ngrok_amd_x86_64_Windows.exe
9d20ed0cb94735a968e5d62e94d41e7edf03be6acaaf1e300430b2c820be036c  ./ngrok/ngrok_amd_x86_64_macOS
3ff8cde6fa5101069236cb14dfd61c1e2fa55ed38d7aba2b8cc4e3c008c24f28  ./ngrok/ngrok_amd_x86_64_macOS.upx
afa347f85aa5f0a480b2ce9a67ad3705549cf5f35d2ab9c800fa504b95d0149a  ./ngrok/ngrok_amd_x86_Windows.exe
2df9025785420490a392856c17af0cb98aeeb7e04c35ac462099ee92fe56c547  ./ngrok/ngrok_arm_FreeBSD
f3da4078eed2b585ffbc2a9088d899c48d4fff15703bd506a00fcf77577ed26b  ./ngrok/ngrok_arm_Linux
a5f72872b9d7452ecc41aed8adecb2cae4e38f3afd9179d00502a061ec6304a5  ./ngrok/ngrok_arm_Linux.upx
36e7357fcb7ff566c94a63f00733400c5f722468042d3dcd651e3893236e53a1  ./ngrok/ngrok_i386_Linux
b4b5226cf606e75f7fc76812b507cb2006ae4fcd93bb81d9090c00dd7468042f  ./ngrok/ngrok_i386_Linux.upx
bad0b6dce4b25463a08c8a74e28bb27c2c97989e6baaa0e65638f17212f91fe9  ./ngrok/ngrok_mips64_Linux
643202a7ad77aba029cbd778c28fe06c1c2b65f031053b9e7c8514d39a1dae43  ./ngrok/ngrok_mips64le_Linux
2fc884dc43d678eead1d35de4020ac36b6c7de839f9f58a146065b3669d4ff34  ./ngrok/ngrok_mips_Linux
750db2e862344b6377ec57d67cea181374b6a211425bd993a834a829287ec885  ./ngrok/ngrok_mips_Linux.upx
2b7c29e91bc863b45a1b17d98d8f53f5f27f3d80c45d2d07f2ed901f10a2e88a  ./ngrok/ngrok_mipsle_Linux
826640ef4eed4924619c4e25c1ba6d71b643b60f421fcf525513f5e99c1ab74d  ./ngrok/ngrok_mipsle_Linux.upx
97d0120112253f743ba096be698a7e03295784eb9de9afdf576e2c8356d1c451  ./ngrok/ngrok_powerpc64_Linux
a5d64ab6be22e305b416450fdedb135d0fbfcba1da77b52722c651022b28eb04  ./ngrok/ngrok_powerpc64_Linux.upx
8abf24a15e0d1176c56ba6f9d35ee109d9daef1bafd23e7f897b5bb208167e83  ./ngrok/ngrok_powerpc64le_Linux
8578099c95e2866dbdceb0a7279732fa8c9090af523fad7050f6a937f3f66ed1  ./ngrok/ngrok_powerpc64le_Linux.upx
8fff711d061ff3e8c0c0f4f7d30d8d377faae6098de406dc4a9fdc6220f5d4a0  ./ngrok/ngrok_s390x_Linux
```


---

- #### UPX
```console

testing ./ngrok/ngrok_powerpc64_Linux.upx [OK]
  23986176 ->   5246876   21.87%   linux/ppc64   ./ngrok/ngrok_powerpc64_Linux.upx
testing ./ngrok/ngrok_aarch64_arm64_macOS.upx [OK]
  26093616 ->   6012944   23.04%   macho/arm64   ./ngrok/ngrok_aarch64_arm64_macOS.upx
testing ./ngrok/ngrok_mips_Linux.upx [OK]
  25821184 ->   5148032   19.94%   linux/mips    ./ngrok/ngrok_mips_Linux.upx
testing ./ngrok/ngrok_powerpc64le_Linux.upx [OK]
  23986176 ->   5523568   23.03%  linux/ppc64le  ./ngrok/ngrok_powerpc64le_Linux.upx
testing ./ngrok/ngrok_i386_Linux.upx [OK]
  22888572 ->   6108428   26.69%   linux/i386    ./ngrok/ngrok_i386_Linux.upx
testing ./ngrok/ngrok_aarch64_arm64_Linux.upx [OK]
  23527424 ->   5494708   23.35%   linux/arm64   ./ngrok/ngrok_aarch64_arm64_Linux.upx
testing ./ngrok/ngrok_arm_Linux.upx [OK]
  23003136 ->   5343088   23.23%    linux/arm    ./ngrok/ngrok_arm_Linux.upx
testing ./ngrok/ngrok_mipsle_Linux.upx [OK]
  25821184 ->   5234196   20.27%  linux/mipsel   ./ngrok/ngrok_mipsle_Linux.upx
testing ./ngrok/ngrok_amd_x86_64_Solaris.upx [OK]
  23916664 ->   6429000   26.88%   linux/amd64   ./ngrok/ngrok_amd_x86_64_Solaris.upx
testing ./ngrok/ngrok_amd_x86_64_Linux.upx [OK]
  24444440 ->   6514332   26.65%   linux/amd64   ./ngrok/ngrok_amd_x86_64_Linux.upx
testing ./ngrok/ngrok_amd_x86_64_macOS.upx [OK]
  26845496 ->   7000080   26.08%   macho/amd64   ./ngrok/ngrok_amd_x86_64_macOS.upx

```

---
- #### Version
```console
ngrok version 3.3.2

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
22M   ./ngrok/ngrok_386_FreeBSD
23M   ./ngrok/ngrok_aarch64_arm64_Linux
5.3M  ./ngrok/ngrok_aarch64_arm64_Linux.upx
25M   ./ngrok/ngrok_aarch64_arm64_macOS
5.8M  ./ngrok/ngrok_aarch64_arm64_macOS.upx
24M   ./ngrok/ngrok_amd_x86_64_FreeBSD
24M   ./ngrok/ngrok_amd_x86_64_Linux
6.3M  ./ngrok/ngrok_amd_x86_64_Linux.upx
23M   ./ngrok/ngrok_amd_x86_64_Solaris
6.2M  ./ngrok/ngrok_amd_x86_64_Solaris.upx
24M   ./ngrok/ngrok_amd_x86_64_Windows.exe
26M   ./ngrok/ngrok_amd_x86_64_macOS
6.7M  ./ngrok/ngrok_amd_x86_64_macOS.upx
23M   ./ngrok/ngrok_amd_x86_Windows.exe
22M   ./ngrok/ngrok_arm_FreeBSD
22M   ./ngrok/ngrok_arm_Linux
5.1M  ./ngrok/ngrok_arm_Linux.upx
22M   ./ngrok/ngrok_i386_Linux
5.9M  ./ngrok/ngrok_i386_Linux.upx
26M   ./ngrok/ngrok_mips64_Linux
26M   ./ngrok/ngrok_mips64le_Linux
25M   ./ngrok/ngrok_mips_Linux
5.0M  ./ngrok/ngrok_mips_Linux.upx
25M   ./ngrok/ngrok_mipsle_Linux
5.0M  ./ngrok/ngrok_mipsle_Linux.upx
23M   ./ngrok/ngrok_powerpc64_Linux
5.1M  ./ngrok/ngrok_powerpc64_Linux.upx
23M   ./ngrok/ngrok_powerpc64le_Linux
5.3M  ./ngrok/ngrok_powerpc64le_Linux.upx
25M   ./ngrok/ngrok_s390x_Linux

```

