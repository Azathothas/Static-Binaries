
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
cae4b723c121dcc5c7c54809c49b286be32904384d757896fa9c4b90e6c1e807  ./curl/curl_aarch64_arm64_Linux
da1ac488da905181db0cf3265eecf516197950874a676146cbc6867242e55591  ./curl/curl_aarch64_arm64_macOS
69edc753b0c10afebc967a2408d573290b9642065b3afdda605eba30e41fbd8e  ./curl/curl_amd_x86_64_Linux
81a718015f7b81775dba23d6f63a9261efbd54e04e3f056f62c8c40a323f19ea  ./curl/curl_amd_x86_64_Windows.exe
cf310da347daa827087b6d9b69ed9a5cd6369262bfc4c89ce148166f7b24a3fe  ./curl/curl_amd_x86_64_macOS
ae85c9e3cc2e95c42256dd293c09fed776e3d87ec7e875fac321bf3aa1126dce  ./curl/curl_amd_x86_Windows.exe
8907162a6ae85e0441ab4009728f3329ee34009733856592a364bd8f8581ebbb  ./curl/curl_arm32_Android
6ef83cabbe570d753fa271fff9ad01473342718239ca327e738304f7ea8a5712  ./curl/curl_arm64_Android
678400429ccbfd5935f9253754203b824500469f79d30bc6a27674d2840551c7  ./curl/curl_arm_x64_Windows.exe
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
aed3e4e4c1cc2bca7520cc0392d380b069c116b764168338ed05be3f7c84477b  ./curl/curl_armv7_Linux
5a75dc5c37045fa225a014a59dde948cd693fdaa1a06b30e8004d242f5c096db  ./curl/curl_i686_Linux
e2af07e0fd704c7c2442e74b959e0012e6870a66ed97533af9e4a214c0d23e91  ./curl/curl_lite_DOS
d4496507e46fb582d399f2b710678fafc660409bc38f6ebf7cbf1bd15a6b8c8c  ./curl/curl_mips64_Linux
7e7bf3cd8f6118a20b0bbbfd43aa7cacb8783e67716ad05757080d8c0b349dc2  ./curl/curl_mips64el_Linux
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
f7df8a75da15c06bd144a60cfccb2107335d33ae91650b8da59752a415dd3835  ./curl/curl_mips_Linux
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
23c2f9558960ba0daffd6d0db7bdd4cbd1a13bb19708a1b5bba159b6783d1e39  ./curl/curl_mipsel_Linux
c8a041275e2ebb847118e442944002d6395d7ed67eb52b55c7a18ac35171cf1c  ./curl/curl_powerpc64le_Linux
a759237a2cc2da14c9d4f3ab8c8d56ebfe4849ad5411f9af37685c5986cf6569  ./curl/curl_powerpc_Linux
3588e86e7414c7b1e63f44acc2664e05a332289a5df25d6c80a8829b38e3501f  ./curl/curl_riscv64_Linux
079f8a19ceb5f8cbaa2186baaf8f75bff9d3c17bd85df309ec3b1e5318455a7c  ./curl/curl_s390x_Linux
d832603b8badcae8fc36ab8ebe37c5861049aa5ee5825b6e5b6b00633ee54bb1  ./curl/curl_tiny_DOS
b9b1d3702e9d9cdd813e4ab4c470bf78333a5b39dfa2cba92490f1262bc5f15d  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
ec78be372dc7759fdf725d648056de668709285c28ec1452deb6d943273fa9bc  ./curl/curl_x86_Android
```


---

- #### Sizes

```console
1.3M  ./curl/curl_DOS
7.2M  ./curl/curl_aarch64_arm64_Linux
7.1M  ./curl/curl_aarch64_arm64_macOS
7.8M  ./curl/curl_amd_x86_64_Linux
3.3M  ./curl/curl_amd_x86_64_Windows.exe
7.8M  ./curl/curl_amd_x86_64_macOS
3.1M  ./curl/curl_amd_x86_Windows.exe
4.8M  ./curl/curl_arm32_Android
6.4M  ./curl/curl_arm64_Android
3.1M  ./curl/curl_arm_x64_Windows.exe
3.2M  ./curl/curl_armhf_arm32_Android
4.7M  ./curl/curl_armv7_Linux
7.9M  ./curl/curl_i686_Linux
540K  ./curl/curl_lite_DOS
7.6M  ./curl/curl_mips64_Linux
2.1M  ./curl/curl_mips64el_Linux
2.1M  ./curl/curl_mips_Android
8.2M  ./curl/curl_mips_Linux
2.0M  ./curl/curl_mipsel_Android
8.1M  ./curl/curl_mipsel_Linux
8.6M  ./curl/curl_powerpc64le_Linux
8.1M  ./curl/curl_powerpc_Linux
5.7M  ./curl/curl_riscv64_Linux
6.8M  ./curl/curl_s390x_Linux
368K  ./curl/curl_tiny_DOS
7.6M  ./curl/curl_x64_Android
5.1M  ./curl/curl_x86_64_Android
7.6M  ./curl/curl_x86_Android
```

---

- #### Version
```console

$ ./curl/curl_amd_x86_64_Linux -V
curl 8.8.0 (x86_64-pc-linux-gnu) libcurl/8.8.0 OpenSSL/3.3.0 zlib/1.3.1 brotli/1.1.0 zstd/1.5.6 c-ares/1.28.1 libidn2/2.3.7 libpsl/0.21.5 libssh2/1.11.0 nghttp2/1.62.1 nghttp3/1.3.0
Release-Date: 2024-05-22
Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Largefile libz NTLM PSL SSL threadsafe TLS-SRP TrackMemory UnixSockets zstd

$ ./curl/curl_amd_x86_64_Linux -h
Usage: curl [options...] <url>
 -d, --data <data>           HTTP POST data
 -f, --fail                  Fail fast with no output on HTTP errors
 -h, --help <category>       Get help for commands
 -i, --include               Include response headers in output
 -o, --output <file>         Write to file instead of stdout
 -O, --remote-name           Write output to file named as remote file
 -s, --silent                Silent mode
 -T, --upload-file <file>    Transfer local FILE to destination
 -u, --user <user:password>  Server user and password
 -A, --user-agent <name>     Send User-Agent <name> to server
 -v, --verbose               Make the operation more talkative
 -V, --version               Show version number and quit

This is not the full help, this menu is stripped into categories.
Use "--help category" to get an overview of all categories.
For all options use the manual or "--help all".


```

---

