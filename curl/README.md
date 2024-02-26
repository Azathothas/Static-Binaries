
---
- #### Download [Curl](https://curl.se/download.html)
> - Nothing is rebuilt/re-compiled
> - This is just a mirror, with the following sources
> > ```bash
> > --> Android:
> >      - https://github.com/bol-van/bins
> >      - https://github.com/Zackptg5/Cross-Compiled-Binaries-Android
> > --> DOS:
> >      - http://mik.dyndns.pro/dos-stuff/bin
> > --> Linux:
> >      - https://github.com/moparisthebest/static-curl/releases/latest
> >      - https://github.com/stunnel/static-curl/releases
> >      - https://github.com/ryanwoodsmall/static-binaries
> > --> Windows:
> >      - https://curl.se/windows
> > ```
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

!# For Android
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_armhf_arm32_Android"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_arm32_Android"             
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_arm64_Android"     
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mips_Android"               
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mipsel_Android"  
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_x86_Android"  
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_x86_64_Android"            
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_x64_Android"
          
!# DOS
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_DOS"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_lite_DOS"                  
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_tiny_DOS"

!#For Linux
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_aarch64_arm64_Linux"       
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd64_x86_64_Linux"                 
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_armv7_Linux"               
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_i686_Linux"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mips_Linux"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mipsel_Linux"  
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mips64_Linux"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_mips64el_Linux"  
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_powerpc_Linux"       
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_powerpc64le_Linux"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_riscv64_Linux"
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_s390x_Linux"

!# macOS
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_aarch64_arm64_macOS"       
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd64_x86_64_macOS"

!# For Windows
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd_x86_Windows.exe"    
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd_x86_64_Windows.exe"    
--> wget "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_arm_x64_Windows.exe"
  -- Addtionally, using 'Invoke-Webrequest'
--> Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd_x86_Windows.exe" -OutFile "curl.exe"   
--> Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_amd_x86_64_Windows.exe" -OutFile "curl.exe"    
--> Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/curl_arm_x64_Windows.exe" -OutFile "curl.exe"

```
---
- #### Install Curl
```bash
!# Copy downloaded curl binary to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded curl binary to that DIR
 mv "$Path_To_curl_Binary" "/usr/bin/curl"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/curl"
```

---
```console

--> METADATA
./curl/curl_DOS:                    MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_aarch64_arm64_Linux:    ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./curl/curl_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64, for MS Windows
./curl/curl_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./curl/curl_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386, for MS Windows
./curl/curl_arm32_Android:          ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_arm64_Android:          ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_arm_x64_Windows.exe:    PE32+ executable (console) Aarch64, for MS Windows
./curl/curl_armhf_arm32_Android:    ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_armv7_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_i686_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./curl/curl_lite_DOS:               MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, stripped
./curl/curl_mips64el_Linux:         XZ compressed data, checksum CRC64
./curl/curl_mips_Android:           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mipsel_Android:         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mipsel_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_powerpc_Linux:          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./curl/curl_riscv64_Linux:          ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./curl/curl_tiny_DOS:               MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_x64_Android:            ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_64_Android:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_Android:            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
9f2e27b6d86d80370311935dd010d03ca4ff7357f8e8e0ad86225d1a0d17ac9c  ./curl/curl_DOS
d5029e27abaa03e17ff384eb32bfbdda5fc8a70defd841cb771110f643ce5601  ./curl/curl_aarch64_arm64_Linux
34e44be048545532fbe45e6a59dc0572dc3e0a141afc9cd7f6be58d5eb21d3f9  ./curl/curl_aarch64_arm64_macOS
0adfe698393078d51b76bc63a29fea36605211a898afe474a0547bebadaabe28  ./curl/curl_amd_x86_64_Linux
d3f4c750d482fdf0901d8295dded6867858156ade56e26eddf3f7f8401025416  ./curl/curl_amd_x86_64_Windows.exe
c2a8dfd8a16c601c7cdf19628e93354b5cc91b80aec58e5a9e07d0aff640613d  ./curl/curl_amd_x86_64_macOS
259bff44b145c8ffa70c9842b9dc4647c0cecca10ba214877c5948fef0844154  ./curl/curl_amd_x86_Windows.exe
24725b6d5ff913aac000f50751941454faf6a08cce35f6470dbfc53a4f5b03ad  ./curl/curl_arm32_Android
6e0d711c9f4fb7a1096c9100839e8f57dcff9e4f816cb461eed8d1bb8429066f  ./curl/curl_arm64_Android
a8be142248324828810fef0b284154ba412e4d40bd73b86c4eb3eaa57e5bc544  ./curl/curl_arm_x64_Windows.exe
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
ecba6876ce708dadf1953ffaa8edc78343acc1668acefe315d714c06dfdd61c5  ./curl/curl_armv7_Linux
77f8fa2596f0386d65cd63723881fd68983764ab0e84458fef5c73ac1c4b4f3f  ./curl/curl_i686_Linux
e2af07e0fd704c7c2442e74b959e0012e6870a66ed97533af9e4a214c0d23e91  ./curl/curl_lite_DOS
4cfa4df7e9a01cd6ca48d16233f68725b793ca3d7e7a62d0a43515729a45b239  ./curl/curl_mips64_Linux
7e7bf3cd8f6118a20b0bbbfd43aa7cacb8783e67716ad05757080d8c0b349dc2  ./curl/curl_mips64el_Linux
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
52bbea6109c7245d0c30c8909938e70b630b0f7bf04e007cd93971890f46a269  ./curl/curl_mips_Linux
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
102fa237bb8759c1a515764a2794b458aed54e34eb92b88d4fc99b81b9d271f9  ./curl/curl_mipsel_Linux
42af03e95ae2128d1fd3ecf42729d560f7ce6afa47ac71dc0e0dee4244d849c3  ./curl/curl_powerpc64le_Linux
3ac2b71060b8276495a590f9032e21c9669ce5dc2cdbe8b4e0662b20cf58e145  ./curl/curl_powerpc_Linux
d7508170423dfa27a6c28781235886ad9d6d8bc331c3c123173d6c1a30887d12  ./curl/curl_riscv64_Linux
61bcb1a597ff4a6e1394b03afd1b01a150bab859088876a3ede2c682a4c62f8b  ./curl/curl_s390x_Linux
d832603b8badcae8fc36ab8ebe37c5861049aa5ee5825b6e5b6b00633ee54bb1  ./curl/curl_tiny_DOS
5e9faa914fbed8b116d384805dc1765e7a5cf69dd44f22171cd949ff40630718  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
c5e6fde2163ae93e898c04ca88ec0226fedcec62b98896003d6f1e18a4f5f633  ./curl/curl_x86_Android
```


---

- #### Sizes

```console
1.3M  ./curl/curl_DOS
7.0M  ./curl/curl_aarch64_arm64_Linux
7.1M  ./curl/curl_aarch64_arm64_macOS
7.7M  ./curl/curl_amd_x86_64_Linux
3.2M  ./curl/curl_amd_x86_64_Windows.exe
7.7M  ./curl/curl_amd_x86_64_macOS
3.0M  ./curl/curl_amd_x86_Windows.exe
5.0M  ./curl/curl_arm32_Android
6.8M  ./curl/curl_arm64_Android
3.0M  ./curl/curl_arm_x64_Windows.exe
3.2M  ./curl/curl_armhf_arm32_Android
4.6M  ./curl/curl_armv7_Linux
7.7M  ./curl/curl_i686_Linux
540K  ./curl/curl_lite_DOS
7.4M  ./curl/curl_mips64_Linux
2.1M  ./curl/curl_mips64el_Linux
2.1M  ./curl/curl_mips_Android
7.9M  ./curl/curl_mips_Linux
2.0M  ./curl/curl_mipsel_Android
7.9M  ./curl/curl_mipsel_Linux
8.3M  ./curl/curl_powerpc64le_Linux
7.9M  ./curl/curl_powerpc_Linux
5.6M  ./curl/curl_riscv64_Linux
6.7M  ./curl/curl_s390x_Linux
368K  ./curl/curl_tiny_DOS
8.0M  ./curl/curl_x64_Android
5.1M  ./curl/curl_x86_64_Android
8.2M  ./curl/curl_x86_Android
```

---

- #### Version
```console

$ ./curl/curl_amd_x86_64_Linux -V
curl 8.6.0 (x86_64-pc-linux-gnu) libcurl/8.6.0 OpenSSL/3.2.1 zlib/1.3.1 brotli/1.1.0 zstd/1.5.5 c-ares/1.26.0 libidn2/2.3.7 libpsl/0.21.5 libssh2/1.11.0 nghttp2/1.59.0 nghttp3/1.1.0
Release-Date: 2024-01-31
Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Largefile libz NTLM PSL SSL threadsafe TLS-SRP TrackMemory UnixSockets zstd

$ ./curl/curl_amd_x86_64_Linux -h
Usage: curl [options...] <url>
 -d, --data <data>          HTTP POST data
 -f, --fail                 Fail fast with no output on HTTP errors
 -h, --help <category>      Get help for commands
 -i, --include              Include protocol response headers in the output
 -o, --output <file>        Write to file instead of stdout
 -O, --remote-name          Write output to a file named as the remote file
 -s, --silent               Silent mode
 -T, --upload-file <file>   Transfer local FILE to destination
 -u, --user <user:password> Server user and password
 -A, --user-agent <name>    Send User-Agent <name> to server
 -v, --verbose              Make the operation more talkative
 -V, --version              Show version number and quit

This is not the full help, this menu is stripped into categories.
Use "--help category" to get an overview of all categories.
For all options use the manual or "--help all".


```

---

