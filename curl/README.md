
---
- #### Download Curl
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
--> curl_armhf_arm32_Android
--> curl_arm32_Android             
--> curl_arm64_Android     
--> curl_mips_Android               
--> curl_mipsel_Android  
--> curl_x86_Android  
--> curl_x86_64_Android            
--> curl_x64_Android               
!# DOS
--> curl_DOS
--> curl_lite_DOS                  
--> curl_tiny_DOS  
!#For Linux
--> curl_aarch64_arm64_Linux       
--> curl_aarch64_arm64_http3_Linux 
--> curl_amd64_x86_64_Linux       
--> curl_amd64_x86_64_http3_Linux  
--> curl_armhf_Linux               
--> curl_armv7_Linux               
--> curl_i386_Linux                    
--> curl_or1k_OpenRISC_Linux       
--> curl_ppc64le_powerpc64le_Linux
--> curl_riscv64_Linux             
!# For Windows
--> curl_amd_x86_Windows.exe    
--> curl_amd_x86_64_Windows.exe    
--> curl_arm_x64_Windows.exe  

!# Export
export CURL_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/curl/$CURL_ARCH"

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
$ file ./curl/curl_DOS ./curl/curl_aarch64_arm64_Linux ./curl/curl_aarch64_arm64_http3_Linux ./curl/curl_amd64_x86_64_Linux ./curl/curl_amd64_x86_64_http3_Linux ./curl/curl_amd_x86_64_Windows.exe ./curl/curl_amd_x86_Windows.exe ./curl/curl_arm32_Android ./curl/curl_arm64_Android ./curl/curl_arm_x64_Windows.exe ./curl/curl_armhf_Linux ./curl/curl_armhf_arm32_Android ./curl/curl_armv7_Linux ./curl/curl_i386_Linux ./curl/curl_lite_DOS ./curl/curl_mips_Android ./curl/curl_mipsel_Android ./curl/curl_or1k_OpenRISC_Linux ./curl/curl_ppc64le_powerpc64le_Linux ./curl/curl_riscv64_Linux ./curl/curl_tiny_DOS ./curl/curl_x64_Android ./curl/curl_x86_64_Android ./curl/curl_x86_Android
./curl/curl_DOS:                       MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_aarch64_arm64_Linux:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_aarch64_arm64_http3_Linux: ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_amd64_x86_64_Linux:        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=cfb60fe53d998710e2f981131c5e092757ab5fdf, stripped
./curl/curl_amd64_x86_64_http3_Linux:  ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=c7d68951968401f869e4af86a21ae652a2d04f35, stripped
./curl/curl_amd_x86_64_Windows.exe:    PE32+ executable (console) x86-64, for MS Windows
./curl/curl_amd_x86_Windows.exe:       PE32 executable (console) Intel 80386, for MS Windows
./curl/curl_arm32_Android:             ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_arm64_Android:             ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_arm_x64_Windows.exe:       PE32+ executable (console) Aarch64, for MS Windows
./curl/curl_armhf_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_armhf_arm32_Android:       ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_armv7_Linux:               ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_i386_Linux:                ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./curl/curl_lite_DOS:                  MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_mips_Android:              ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_mipsel_Android:            ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, stripped
./curl/curl_or1k_OpenRISC_Linux:       ELF 32-bit MSB executable, OpenRISC, version 1 (SYSV), statically linked, stripped
./curl/curl_ppc64le_powerpc64le_Linux: ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_riscv64_Linux:             ELF 64-bit LSB executable, UCB RISC-V, RVC, double-float ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_tiny_DOS:                  MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_x64_Android:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_64_Android:            ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_Android:               ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
$ sha256sum ./curl/curl_DOS ./curl/curl_aarch64_arm64_Linux ./curl/curl_aarch64_arm64_http3_Linux ./curl/curl_amd64_x86_64_Linux ./curl/curl_amd64_x86_64_http3_Linux ./curl/curl_amd_x86_64_Windows.exe ./curl/curl_amd_x86_Windows.exe ./curl/curl_arm32_Android ./curl/curl_arm64_Android ./curl/curl_arm_x64_Windows.exe ./curl/curl_armhf_Linux ./curl/curl_armhf_arm32_Android ./curl/curl_armv7_Linux ./curl/curl_i386_Linux ./curl/curl_lite_DOS ./curl/curl_mips_Android ./curl/curl_mipsel_Android ./curl/curl_or1k_OpenRISC_Linux ./curl/curl_ppc64le_powerpc64le_Linux ./curl/curl_riscv64_Linux ./curl/curl_tiny_DOS ./curl/curl_x64_Android ./curl/curl_x86_64_Android ./curl/curl_x86_Android
fc6b3d39195df7af245b211c2cc9e8b22ff8624d14ca67703db1862f782defcd  ./curl/curl_DOS
3e17d3a355cc7dc00d953d65cffbc54e07d2bebbdf5be2d0f1031240c7798d08  ./curl/curl_aarch64_arm64_Linux
39f2c3b6d43f7450a1e64a15a93ecd65b67ab554ee4673f6675066e5a6b1c03e  ./curl/curl_aarch64_arm64_http3_Linux
f58feb42ebdb075aa3534c75c7f5fc5c247fb022f432b804962928e38164bc42  ./curl/curl_amd64_x86_64_Linux
9290d0e99737ecf244d868ef416735676174a379bba23453265de942dcd39483  ./curl/curl_amd64_x86_64_http3_Linux
acff6102d02e9996f6982114f3618de80d4887ee7d423f5961d2238466df185b  ./curl/curl_amd_x86_64_Windows.exe
8e707a23cc6aceb9dfd6bf72060ac2faf80d108a8fe9334dd83786970041ac8b  ./curl/curl_amd_x86_Windows.exe
3881ce6eb521d36f997eb8c9246bb66949943470046c35b9f19fd5f6dc25c82a  ./curl/curl_arm32_Android
95d8d5219b4d67543573af5d0728c2c8e0bfe134967467fe50795f73186a9349  ./curl/curl_arm64_Android
3534e71577d5fc1024236f8edf3fc3de50819a283f8e564099add87022743f74  ./curl/curl_arm_x64_Windows.exe
e42730533f7306dcce51f280b654c50ed57cf2054295a625528ab1aece95d3fc  ./curl/curl_armhf_Linux
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
e63d1fc5718fa2784bd3aa4a3c1a4307689ca53c2cdc92aea6ea2e13ea00eb92  ./curl/curl_armv7_Linux
56328b876c1bab7376cd8429913e3346b6df7526e2c40b563e07f0d7ce6d7ba1  ./curl/curl_i386_Linux
4195b16faa890b17ffb9141412ef3acf8e95e70420b0f73476be4dcb6b336cf9  ./curl/curl_lite_DOS
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
b11f9155a8f3441db9f6fe471eaabdd953a9c58521f679d5789595cba76b931d  ./curl/curl_or1k_OpenRISC_Linux
65c651e8c6b00c12a67366cfdfde6e85189616b8fe3e85ca9f446c5f472b42e7  ./curl/curl_ppc64le_powerpc64le_Linux
feec0e5ee0832cce1e83d22c2db818451654c7b5ccda2fcba1e9673613c04241  ./curl/curl_riscv64_Linux
7704aa5287a62d0758e6c0d62fbd490a7ed59a4c004bd6861e50031e7995c1b4  ./curl/curl_tiny_DOS
1a0c608d62d59aaee32c00d1fec588ffd9f7709d12ee18541babab49cc7478b8  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
1480ebe150175f70c5c950f0420c1e270500f742956ce8df4aea53f1ec37c88d  ./curl/curl_x86_Android
```


---
- #### Version
```console
$ qemu-aarch64-static ./curl/curl_aarch64_arm64_Linux -V
curl 8.1.2 (aarch64-unknown-linux-musl) libcurl/8.1.2 OpenSSL/1.1.1t zlib/1.2.12 libssh2/1.9.0 nghttp2/1.43.0
Release-Date: 2023-05-30
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS HSTS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL threadsafe TLS-SRP UnixSockets

$ qemu-aarch64-static ./curl/curl_aarch64_arm64_http3_Linux -V
curl 8.1.2 (aarch64-unknown-linux-musl) libcurl/8.1.2 OpenSSL/3.0.8 zlib/1.2.12 brotli/1.0.9 zstd/1.4.9 libidn2/2.3.1 libssh2/1.11.0 nghttp2/1.53.0 ngtcp2/0.15.0 nghttp3/0.11.0
Release-Date: 2023-05-30
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp ws wss
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTP3 HTTPS-proxy IDN IPv6 Largefile libz NTLM NTLM_WB SSL threadsafe TLS-SRP TrackMemory UnixSockets zstd
```
---
- #### Sizes
```console
$ ls ./curl -lh
$ awk '{print'
awk: cmd. line:1: {print
awk: cmd. line:1:       ^ unexpected newline or end of string
