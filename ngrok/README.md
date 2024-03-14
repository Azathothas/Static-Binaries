
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
./ngrok/ngrok_386_FreeBSD:            ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=Yt7P7v1kid7sr0m8zhSA/_HGk-xrfTWPqvv8tjA2l/_i_7ic_UgiU0cYh4Baak/5IQlH74DIcx3shl9ELLE, stripped
./ngrok/ngrok_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=9voG-TodNBAfIcZKWLK9/qsrmv_Zs4bjlITdKobe1/5yDHQSxMnUatb-60bVOz/KUyoAlssJyQTozxHM6YW, stripped
./ngrok/ngrok_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./ngrok/ngrok_amd_x86_64_FreeBSD:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=zwXxBJG_MStHxMFXp3TL/e8odkQ753NP0_n00UB9d/_y_YYD-y1YLFNo-rNT3m/7Nv97XDPoOYoJsTqRXvd, stripped
./ngrok/ngrok_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=-u7FLiM3BBwA7Sc873iF/RV2yg1MHfeKU3cYibC4A/pQXlccoIopAM52c0O3Vm/1o-7X5a_iEwj9tEJXOMR, stripped
./ngrok/ngrok_amd_x86_64_Solaris:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, Go BuildID=Ga1cZmfEUNIHGVvVQYJE/zzfgX7tbVGDkVLtMpSSC/o9EgrAPxD9h2NdAU6w5P/Z1o34IwbAtWHhZE581RW, stripped
./ngrok/ngrok_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
./ngrok/ngrok_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL>
./ngrok/ngrok_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
./ngrok/ngrok_arm_FreeBSD:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, for FreeBSD 12.3, FreeBSD-style, Go BuildID=m5yahnCuuXV9_GzwYMLD/93FwX5Hv2gCeY7B0eT5z/ZWs2CGyVU4ecJ5DKN17d/dTxGZp_GupPNDcsOGPJs, stripped
./ngrok/ngrok_arm_Linux:              ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=Kg9Rqtq4Bmb61F7kNfEr/RQkt8Wth11Soj1Gfbsi4/-ONBo0xHi6EkazHRh-Rf/pCyFPSzaq2r7VQpPgBhZ, stripped
./ngrok/ngrok_i386_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=ncj9dkCQ5u3ZUdvBi9yq/9HuQCD28wvkCwnvIqare/xER6jx_xwMMJ2aXEhnWc/wh85zifcjXqhPPaJsyyG, stripped
./ngrok/ngrok_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=BQcbPEra-cuMTz0knHZJ/9QRBM2uxRijmcYXpfUoB/c8k4m_hZOstqufTetylF/Njhe1UT65Op68ADLqLW7, stripped
./ngrok/ngrok_mips64le_Linux:         ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=Y8TX9zDrg5P65D4V1Bgz/GI-Bqf8PMXJOD_P56Jv0/VTcRovB7L9tHBkeCrVXO/6m2k5k_8zfpLwFgRlxLQ, stripped
./ngrok/ngrok_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=qddY6Bn3MIAc5HArvk0J/M7sgCcKJ2860X_PMZi9a/GnaOqOjH2MqbX8ltVRmX/0acTdyPc9Z1-SBlkKD4q, stripped
./ngrok/ngrok_mipsle_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=AMCFuYxjRZOor3rTvpgB/UuFrEG80TRCvQCSp2SyT/fXbRW5RxUN2XahluzXRm/OPA0VZkQZU0grOfO7CYP, stripped
./ngrok/ngrok_powerpc64_Linux:        ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=Yf5fqsiYsAgZNFe4_-26/-Ijk4mRPma57mRR9EAky/zAxu401bIwdf2kUZ0jpf/2aeaX_NPl1T6QjZKEz8r, stripped
./ngrok/ngrok_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=dL84Vn2VJWGdfIN2Mhu1/akTypArxyyHCoWAgY64t/-HJKx4gwg5zd-TN34A7x/9guZzU64SI02XTg1yNIu, stripped
./ngrok/ngrok_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=mWdOoaiWeIZF-Xm5FNDT/zp0JVDlQ4AJkejjogS86/0UhhMAog9D_cTiZOZPZC/4wsHG-8xoyuaYJvYuYyo, stripped

--> SHA256SUM
c816ad648c2eb34ad33a94c32d51e3c9dc57bb1ac3462c073789d89601eba6ac  ./ngrok/ngrok_386_FreeBSD
8c933b5f58c3f805008d600d9c6d1cbfa578b418ed61eda54ba17ec10ff6f609  ./ngrok/ngrok_aarch64_arm64_Linux
03ab4a4588997dc601a6fa4265d3d3129c463b9973da99fed80993d3af251fbe  ./ngrok/ngrok_aarch64_arm64_macOS
d29ab9ca1c2a21ec9a6dad90aa29fc1d2ccbef4a4c3544f30ebaecdbffbbce83  ./ngrok/ngrok_amd_x86_64_FreeBSD
3776a2fc08ecdc70bdf22e251b1fa0c5141385ed0f30efec0aa701acaee736de  ./ngrok/ngrok_amd_x86_64_Linux
0de9c6820248fcefcb424bb2fafb0d6e30a13d11cb12ee85b8cb394940a54e68  ./ngrok/ngrok_amd_x86_64_Solaris
2922a02b70c87f3d30ef37c870614f69143e128130e9ec910ca3610d3d520dbe  ./ngrok/ngrok_amd_x86_64_Windows.exe
c2331de6042ce2da2fa4ffbd63fecc7a8f414457ee24b9d9dd945fb3dfb90962  ./ngrok/ngrok_amd_x86_64_macOS
cbcf3594d87013cbc17e64aeb8c682dffb6b37ff1e9522868186764ebc23c6e5  ./ngrok/ngrok_amd_x86_Windows.exe
39c09e79a06604bea0071005a946c19a8b2bfda51a4a096ec4ae726f09495510  ./ngrok/ngrok_arm_FreeBSD
8ad636b367d901c36f1602fc20afe38fadb5c80df6dd1aab4e4ede7a3a58bf8f  ./ngrok/ngrok_arm_Linux
3cf74c71e0010aec9b278070a85be2b0c138f3cd4ea8a9adb1b179c2f943782d  ./ngrok/ngrok_i386_Linux
e4d398e156da8c04d08a81e4d5bfe90a76ff7c1150771e5c4e599e7080e34947  ./ngrok/ngrok_mips64_Linux
aa3c91703bfd0cc196c0d15470dd7a08616f27fb004a71d06e2308cba761810f  ./ngrok/ngrok_mips64le_Linux
69340d9df13194f0bf7149e43b3bd6dc3667de73d3d0c28a8184c7b8f50ba0d0  ./ngrok/ngrok_mips_Linux
4c2ff8c32bcb0c34a041d652527e7ac87a8e6c891c4acbadd4d834d657468f9c  ./ngrok/ngrok_mipsle_Linux
d3a2b212402c2d944b9a6941d2392485200570572d6c92aa6ff6dc01251acfe6  ./ngrok/ngrok_powerpc64_Linux
5583f2814bba0159d72d3b57801807cfe176b4a05b85dcf5f0bf05397b914e91  ./ngrok/ngrok_powerpc64le_Linux
045e116f13c823180ef3f0ea277e3f33243a7bbce992b79bae3fd52856c3147a  ./ngrok/ngrok_s390x_Linux
```


---

- #### Version
```console
ngrok version 3.8.0

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

