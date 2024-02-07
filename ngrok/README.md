
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=m4mo2yyp0zSUZ_xs5BY9/rm68A9u2tNsq8FP4VgIg/zDaRF16gehoIQXSGag9z/-BnRFm3tryxydFcPfNYY, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=tNXTDgz8MIQ5ZCqpcF0o/-PoW4hBuIcpdhMyCAFU2/z2jVsWnjww90ydQqzz7_/eLrkqi3rx_aKKhMoaeqt, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=_sQuiLAYYmT_l6btPCcV/mAaJxm0cJkdIDB1EXF41/FCDspqu1G7LHkZG96EAu/VwagzeqmXmOzCvWX2sSA, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=Ye0NHGKa-d7O0A9VU9YL/ciRcDAf7felkeB_qNjLs/Gf77wE0th6re0sYfiYRT/8CXF0wPRkOKORDJHsDJ6, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=8HXHs-nyGu-ln2R7dDCO/MllXsdqPH6ubQEv_FKNQ/sROr8LFNxYyDaibN-Y8y/vAfbE3ZVzI2LJsFswB2r, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=e7bnGvdaLN3DiNtEWpic/imudjcaNGlyi6NATKf3N/mQTrFtsWJz2RI5i6nu5S/ng-LCx6Fkg6VWhSivYq2, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=lsRKLMDuiatiF1Fmk9Zq/CsMKD8bkszJxGfCpBQsE/aL_JmRsV-v7lBRaoDBo0/-ci704dvhedUHuC3xNk-, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=9m2AJR5jdRhfl91fSJRc/zudPFhJLDVWYLWQVDrQJ/oX4dD-Kuyk4g-5lO6wLM/kNoHm7KJnssCQHMQ4eJ_, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=5LI_Qz3p7Jl2frwKljZa/qjNQbiAn4K4su6k3_81a/NXfYoM8ejMEJgCvK8zJh/qedclofgxJZTmbDxNofD, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=6ABG_ZFfObCopPyjLnay/DOHfOF2pqmqT6DosgtpK/wjiTb_k8wS685ZHKJ4R2/Ftxhzsvt4IGScsxZXNll, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=z_itj_0UuP6vkEu5QQos/9m1zTz5nslXYz2BEOvOd/Tcl0RM505UGKiFSAmf0v/jAqWMakuHwCLerEwlGBK, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=EvXmo5zzUG9jLEKMHPor/je6hbWFZwlRnWj7sDN8M/-ouOT7AHeUX6MWqQqSXB/h2Wwpza2GSttOG7HB759, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=9Ou7XUtK4AHpMYbw4YdY/JKnwoePcKSdLZN7b-zs9/qpNqFTr4AONDxxVUwUZG/YyQr9AEDPQGidlkjpPXC, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=dx7Xm8mxncd3sBD9u4rW/p8MZqsMO4D68Rc-8Sx_B/giGI0Dv95VMTr_p06mDL/iz-M1BZ-Y8IM7KIotUiO, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=52mGYbHAlrdjWHvuO_1b/0H692IhfBt_TauKv426G/hiPrZJTbEjvsnfUswraO/g_Rk2fXPrvchmhm-54rT, stripped

--> SHA256SUM
7c4b171557543ba95d2cafbbfeb492b6a4319d600f1c3567e89cde8a7c838190  ./ngrok/ngrok_386_FreeBSD
39575a951352e571f6f96fd4409cbaa675dc4593786c9f198c2fb45360361f02  ./ngrok/ngrok_aarch64_arm64_Linux
812829dac649b27f99eaf361306a014eb7ff28d005c3c9d087171342fce9472e  ./ngrok/ngrok_aarch64_arm64_macOS
10f638d67dbb608ec46b59980565445738746ef416cb2a8e22a74b93f9f0032e  ./ngrok/ngrok_amd_x86_64_FreeBSD
acd8b688a2b39119c2748fbe7a3d706ae86f7eecb4d545bbbe0e2e4aea1928e9  ./ngrok/ngrok_amd_x86_64_Linux
2bc909ccf47a2d9ed3b42e9c867ea333e596cac4d542c19d9fe519a61043a82d  ./ngrok/ngrok_amd_x86_64_Solaris
1554f5440552567198599e5ee7711518fe87992c1c19910414f5441b3d7fc2ea  ./ngrok/ngrok_amd_x86_64_Windows.exe
05ecb8a6e79cfe57663a085d5fc7cfeddd5867b25fc185829c39de4d25e5857d  ./ngrok/ngrok_amd_x86_64_macOS
90c654b7207f882de42d06bfbe0c53e34d8e291a897343a3c9592c08bc98c646  ./ngrok/ngrok_amd_x86_Windows.exe
2e6dae4849d75925bbf5f3f462d61d13c103f636c9fb6bbde0b8e9f3e6d81c5e  ./ngrok/ngrok_arm_FreeBSD
0bbc395cc610c0017d12a812496856677f6a653f60a76203d0f031914e4cf7bc  ./ngrok/ngrok_arm_Linux
6931f0916bc9f855c3f1bf4514c0e00cf4122449fa272ecfe9987637cdc8e8c5  ./ngrok/ngrok_i386_Linux
dc0d73dbb41f0e7e48a90bcffa8b01c5d7683bdd4d30faaab351737ceb1fd7f5  ./ngrok/ngrok_mips64_Linux
4120fb5ffa0a2b764118fe62ab72034c12eb37facd2ce17454487e9df30bc2f6  ./ngrok/ngrok_mips64le_Linux
a735294398acc7dd7046c6487ccea4d1acc5104971388dad5ed83757a04f3d90  ./ngrok/ngrok_mips_Linux
d07d1bbeddf50e3e0ce19622f861d666b5721ef8bd77e5eedc48c5c38648fd37  ./ngrok/ngrok_mipsle_Linux
36955a5cf8dd647c8ee87ac0a333ae50cb3004bc2754426e6d2f3aaf7c9d439c  ./ngrok/ngrok_powerpc64_Linux
33f044d2c7890a319a83af48d5a139853e307b0e9ee202586f2ac7632e35e5fd  ./ngrok/ngrok_powerpc64le_Linux
63edb6209ab1a37331ff37eebf57ae0664101f204aaaa5cea1b43b122e17e4fe  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.6.0

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
27M  ./ngrok/ngrok_amd_x86_64_macOS
24M  ./ngrok/ngrok_amd_x86_Windows.exe
23M  ./ngrok/ngrok_arm_FreeBSD
23M  ./ngrok/ngrok_arm_Linux
23M  ./ngrok/ngrok_i386_Linux
27M  ./ngrok/ngrok_mips64_Linux
27M  ./ngrok/ngrok_mips64le_Linux
26M  ./ngrok/ngrok_mips_Linux
26M  ./ngrok/ngrok_mipsle_Linux
24M  ./ngrok/ngrok_powerpc64_Linux
24M  ./ngrok/ngrok_powerpc64le_Linux
26M  ./ngrok/ngrok_s390x_Linux

```

