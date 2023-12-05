
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
./curl/curl_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=5afec806e1c979a8eb43a9b5d9ff18bd267a6e82, stripped
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
2c57831c436922e093943aa54510ef608af394d723605c4e55206b1a560b9c0a  ./curl/curl_DOS
94f800ccde6c2f755ebe1b89c222c25501c4a2ce80f1a94bbe7db6a56dbb80c6  ./curl/curl_aarch64_arm64_Linux
fa9906cf329f8d8a703c1551281e7c0ce3726c82770a531295ba342f8ce2f81e  ./curl/curl_aarch64_arm64_macOS
5005b228d29629d89f56891828c118c14e47b62f4730ad6ad4b1cdca47244975  ./curl/curl_amd_x86_64_Linux
06c573b3d0f5e0315766a05a14394e15b949b9f17de5f8917c118a44f47a555e  ./curl/curl_amd_x86_64_Windows.exe
0ed26b2aad01260ad16e56cd33fc73a2128521bb1c8e130bf9d19e4921360c09  ./curl/curl_amd_x86_64_macOS
4868149c74d6c9f5ea8e3049c9c313f030d17f5b83df012af6b59ac1025c7910  ./curl/curl_amd_x86_Windows.exe
24725b6d5ff913aac000f50751941454faf6a08cce35f6470dbfc53a4f5b03ad  ./curl/curl_arm32_Android
6e0d711c9f4fb7a1096c9100839e8f57dcff9e4f816cb461eed8d1bb8429066f  ./curl/curl_arm64_Android
dade04693ae154b7dbeee6a93300956a73208129ec1b7d10fc1c95197ccf3960  ./curl/curl_arm_x64_Windows.exe
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
1b9f40ef211c889109eb25d0ab64543319b4802e51a378163418933f1d210ccc  ./curl/curl_armv7_Linux
5d7f5529cc69f4eaf1941fd8e2318869ce81eb7dab7228cb6719e2855bada208  ./curl/curl_i686_Linux
e3a10ee70a37ad1b9cfb02a165114986efa8f4624c13f57fc734796aed9674a2  ./curl/curl_lite_DOS
1cdcf987fcc1dbc28f2b2c725cd3b151195dcda10cc6dfb90b21d3d48a4941dc  ./curl/curl_mips64_Linux
7e7bf3cd8f6118a20b0bbbfd43aa7cacb8783e67716ad05757080d8c0b349dc2  ./curl/curl_mips64el_Linux
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
79b7388e05233f7a28c5d22c1e47c7de456fc93a03b7fc4ce94f7d286138b989  ./curl/curl_mips_Linux
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
bf980136c0dde96e19daf4472cb36ffb752b65bd5d7ced114ef163f118f45189  ./curl/curl_mipsel_Linux
98bbe2eac9bc4a6fd3ca5ff0fc2ac56d8b38c036c259c63914a0fd2840380a4a  ./curl/curl_powerpc64le_Linux
b6343f64b0e35624e3151e51d3dab186fdf5e76ebd37cb989bb13dde80a15601  ./curl/curl_powerpc_Linux
d3991674cec9c121cff524580500fc047a5747dcc03065d354fbd56d901d20a2  ./curl/curl_riscv64_Linux
796993a35455356f9e4a1dfc36a6cffbe56d0bebd1cf0d760ddf2fac3cb2a806  ./curl/curl_s390x_Linux
f5babeaf4c05cdc23ac9f890c5607f8cc964b7f61edc56c63f74fff7c76e43b2  ./curl/curl_tiny_DOS
5e9faa914fbed8b116d384805dc1765e7a5cf69dd44f22171cd949ff40630718  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
c5e6fde2163ae93e898c04ca88ec0226fedcec62b98896003d6f1e18a4f5f633  ./curl/curl_x86_Android
```


---

- #### Sizes

```console
1.3M  ./curl/curl_DOS
6.3M  ./curl/curl_aarch64_arm64_Linux
5.4M  ./curl/curl_aarch64_arm64_macOS
7.4M  ./curl/curl_amd_x86_64_Linux
5.9M  ./curl/curl_amd_x86_64_Windows.exe
6.6M  ./curl/curl_amd_x86_64_macOS
4.3M  ./curl/curl_amd_x86_Windows.exe
5.0M  ./curl/curl_arm32_Android
6.8M  ./curl/curl_arm64_Android
4.7M  ./curl/curl_arm_x64_Windows.exe
3.2M  ./curl/curl_armhf_arm32_Android
4.2M  ./curl/curl_armv7_Linux
7.4M  ./curl/curl_i686_Linux
536K  ./curl/curl_lite_DOS
7.1M  ./curl/curl_mips64_Linux
2.1M  ./curl/curl_mips64el_Linux
2.1M  ./curl/curl_mips_Android
6.6M  ./curl/curl_mips_Linux
2.0M  ./curl/curl_mipsel_Android
6.6M  ./curl/curl_mipsel_Linux
8.1M  ./curl/curl_powerpc64le_Linux
6.8M  ./curl/curl_powerpc_Linux
5.4M  ./curl/curl_riscv64_Linux
6.5M  ./curl/curl_s390x_Linux
365K  ./curl/curl_tiny_DOS
8.0M  ./curl/curl_x64_Android
5.1M  ./curl/curl_x86_64_Android
8.2M  ./curl/curl_x86_Android
```

---

- #### Version
```console

$ ./curl/curl_amd_x86_64_Linux -V
curl 8.4.0 (x86_64-pc-linux-gnu) libcurl/8.4.0 OpenSSL/3.1.2 zlib/1.3 brotli/1.1.0 zstd/1.5.5 libidn2/2.3.4 libssh2/1.11.0 nghttp2/1.57.0 ngtcp2/0.19.1 nghttp3/0.15.0
Release-Date: 2023-10-11
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Largefile libz NTLM SSL threadsafe TLS-SRP TrackMemory UnixSockets zstd

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

