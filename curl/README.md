
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
./curl/curl_amd_x86_64_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=7bcd94317a6b3db0f361b47344ebc31dcf4b1513, for GNU/Linux 3.2.0, stripped
./curl/curl_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64, for MS Windows
./curl/curl_amd_x86_64_macOS:       Mach-O 64-bit x86_64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./curl/curl_amd_x86_Windows.exe:    PE32 executable (console) Intel 80386, for MS Windows
./curl/curl_arm32_Android:          ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_arm64_Android:          ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_arm_x64_Windows.exe:    PE32+ executable (console) Aarch64, for MS Windows
./curl/curl_armhf_arm32_Android:    ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_armv7_Linux:            ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, BuildID[sha1]=7823a2ccdadca21d6697597d08417ea8b699d161, for GNU/Linux 3.2.0, stripped
./curl/curl_i686_Linux:             ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./curl/curl_lite_DOS:               MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_mips64_Linux:           ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=de0d359395af1396fd46d7c1812ee53ac7f3f14b, for GNU/Linux 3.2.0, stripped
./curl/curl_mips64el_Linux:         XZ compressed data, checksum CRC64
./curl/curl_mips_Android:           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mips_Linux:             ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mipsel_Android:         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mipsel_Linux:           ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=94b94cc14b9004577b7f387945b7632aa1fd410f, for GNU/Linux 3.2.0, stripped
./curl/curl_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, BuildID[sha1]=760f0717e479000d23a643e7d51d009e2904784e, for GNU/Linux 3.10.0, stripped
./curl/curl_powerpc_Linux:          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, BuildID[sha1]=f3f18419e1fd1bf58552d3a0a91b5bef41d893fd, for GNU/Linux 3.2.0, stripped
./curl/curl_riscv64_Linux:          ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, BuildID[sha1]=9556b8733ef69d7c9f3c8418d66ab9120efede4f, for GNU/Linux 4.15.0, stripped
./curl/curl_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=d6aee82cd2234db930274f7a261281d46c8ba0a3, for GNU/Linux 3.2.0, stripped
./curl/curl_tiny_DOS:               MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_x64_Android:            ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_64_Android:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_Android:            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
9f2e27b6d86d80370311935dd010d03ca4ff7357f8e8e0ad86225d1a0d17ac9c  ./curl/curl_DOS
e27e4f2372fd1add241e0d2760d8f553f0ba9afafe79a82ad0808f7072015efa  ./curl/curl_aarch64_arm64_Linux
34e44be048545532fbe45e6a59dc0572dc3e0a141afc9cd7f6be58d5eb21d3f9  ./curl/curl_aarch64_arm64_macOS
328504b4e7f025b0542903259f44e0f3695a49b11e08f4dfdb9b6ea72ebc93fb  ./curl/curl_amd_x86_64_Linux
96e3946ca59beaf85b2018fa751eacff81086fccbe8567d719df7588ad882546  ./curl/curl_amd_x86_64_Windows.exe
298402802e3b1d1e8facd4d87e683881de45c45ba2f5a6432c02bed00203a3e2  ./curl/curl_amd_x86_64_macOS
f64c06700b9da6436f92eb4a27d4e0bd129c5590020915f68786f791d4216024  ./curl/curl_amd_x86_Windows.exe
24725b6d5ff913aac000f50751941454faf6a08cce35f6470dbfc53a4f5b03ad  ./curl/curl_arm32_Android
6e0d711c9f4fb7a1096c9100839e8f57dcff9e4f816cb461eed8d1bb8429066f  ./curl/curl_arm64_Android
05bc746f49562467a3b32bd3aed1aa07c279b70a5e088f6f80b830b0c0b02c29  ./curl/curl_arm_x64_Windows.exe
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
d05aece7de73feddc9cd474c18c20552632165bb403fba6b83568688103bef93  ./curl/curl_armv7_Linux
77f8fa2596f0386d65cd63723881fd68983764ab0e84458fef5c73ac1c4b4f3f  ./curl/curl_i686_Linux
e2af07e0fd704c7c2442e74b959e0012e6870a66ed97533af9e4a214c0d23e91  ./curl/curl_lite_DOS
9e2e22f715b542378698a528fc829c0976b041de400a94051180904523c380c5  ./curl/curl_mips64_Linux
7e7bf3cd8f6118a20b0bbbfd43aa7cacb8783e67716ad05757080d8c0b349dc2  ./curl/curl_mips64el_Linux
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
52bbea6109c7245d0c30c8909938e70b630b0f7bf04e007cd93971890f46a269  ./curl/curl_mips_Linux
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
2b597c8bc9c9bf729c7b4aec195bf0830ab6e278c8f200154b3da02e46265fbd  ./curl/curl_mipsel_Linux
28dd2696b64fcf04c48767436640180bbf769a734540f4dc70082ad63f38c206  ./curl/curl_powerpc64le_Linux
5a1a8979bb531b78eed0b15c4926887cd7eea4d4b41696ecb9cc8b80c89163d4  ./curl/curl_powerpc_Linux
3a756f627770527f2dd7e2ecc6ae7617b1a1ea363b0e7e227dfca3b05abe8eef  ./curl/curl_riscv64_Linux
ee48cdceb761cc821f4788596257714ec0dab214daa799b86849170d621339ae  ./curl/curl_s390x_Linux
d832603b8badcae8fc36ab8ebe37c5861049aa5ee5825b6e5b6b00633ee54bb1  ./curl/curl_tiny_DOS
5e9faa914fbed8b116d384805dc1765e7a5cf69dd44f22171cd949ff40630718  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
c5e6fde2163ae93e898c04ca88ec0226fedcec62b98896003d6f1e18a4f5f633  ./curl/curl_x86_Android
```


---

- #### Sizes

```console
1.3M  ./curl/curl_DOS
7.1M  ./curl/curl_aarch64_arm64_Linux
7.1M  ./curl/curl_aarch64_arm64_macOS
8.3M  ./curl/curl_amd_x86_64_Linux
3.2M  ./curl/curl_amd_x86_64_Windows.exe
7.7M  ./curl/curl_amd_x86_64_macOS
3.0M  ./curl/curl_amd_x86_Windows.exe
5.0M  ./curl/curl_arm32_Android
6.8M  ./curl/curl_arm64_Android
3.0M  ./curl/curl_arm_x64_Windows.exe
3.2M  ./curl/curl_armhf_arm32_Android
5.7M  ./curl/curl_armv7_Linux
7.7M  ./curl/curl_i686_Linux
540K  ./curl/curl_lite_DOS
8.0M  ./curl/curl_mips64_Linux
2.1M  ./curl/curl_mips64el_Linux
2.1M  ./curl/curl_mips_Android
7.9M  ./curl/curl_mips_Linux
2.0M  ./curl/curl_mipsel_Android
7.9M  ./curl/curl_mipsel_Linux
8.4M  ./curl/curl_powerpc64le_Linux
7.3M  ./curl/curl_powerpc_Linux
5.0M  ./curl/curl_riscv64_Linux
7.3M  ./curl/curl_s390x_Linux
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

