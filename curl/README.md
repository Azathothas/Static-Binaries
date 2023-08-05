
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
$ file ./curl/curl_DOS ./curl/curl_aarch64_arm64_Linux ./curl/curl_aarch64_arm64_macOS ./curl/curl_amd_x86_64_Linux ./curl/curl_amd_x86_64_Windows.exe ./curl/curl_amd_x86_64_macOS ./curl/curl_amd_x86_Windows.exe ./curl/curl_arm32_Android ./curl/curl_arm64_Android ./curl/curl_arm_x64_Windows.exe ./curl/curl_armhf_arm32_Android ./curl/curl_armv7_Linux ./curl/curl_i686_Linux ./curl/curl_lite_DOS ./curl/curl_mips64_Linux ./curl/curl_mips64el_Linux ./curl/curl_mips_Android ./curl/curl_mips_Linux ./curl/curl_mipsel_Android ./curl/curl_mipsel_Linux ./curl/curl_powerpc64le_Linux ./curl/curl_powerpc_Linux ./curl/curl_riscv64_Linux ./curl/curl_s390x_Linux ./curl/curl_tiny_DOS ./curl/curl_x64_Android ./curl/curl_x86_64_Android ./curl/curl_x86_Android
$ grep -v .txt
./curl/curl_DOS:                    MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_aarch64_arm64_Linux:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./curl/curl_aarch64_arm64_macOS:    Mach-O 64-bit arm64 executable, flags:<NOUNDEFS|DYLDLINK|TWOLEVEL|PIE>
./curl/curl_amd_x86_64_Linux:       XZ compressed data, checksum CRC64
./curl/curl_amd_x86_64_Windows.exe: PE32+ executable (console) x86-64, for MS Windows
./curl/curl_amd_x86_64_macOS:       XZ compressed data, checksum CRC64
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
./curl/curl_mipsel_Linux:           XZ compressed data, checksum CRC64
./curl/curl_powerpc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_powerpc_Linux:          ELF 32-bit MSB executable, PowerPC or cisco 4500, version 1 (SYSV), statically linked, stripped
./curl/curl_riscv64_Linux:          XZ compressed data, checksum CRC64
./curl/curl_s390x_Linux:            ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, stripped
./curl/curl_tiny_DOS:               MS-DOS executable, COFF for MS-DOS, DJGPP go32 DOS extender, UPX compressed
./curl/curl_x64_Android:            ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_64_Android:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./curl/curl_x86_Android:            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
fc6b3d39195df7af245b211c2cc9e8b22ff8624d14ca67703db1862f782defcd  ./curl/curl_DOS
eeec242083888bbb12deb31e7c897f4f32a3c11a381f0ae41ece985dcd4ece1e  ./curl/curl_aarch64_arm64_Linux
eeec242083888bbb12deb31e7c897f4f32a3c11a381f0ae41ece985dcd4ece1e  ./curl/curl_aarch64_arm64_macOS
3c6cfb9f124dc0f9f8b3cc7bf03619c41ba7492f6509544d30f41f05ae299aa0  ./curl/curl_amd_x86_64_Linux
16b86dcf2fcd33aa336eda70fe126c9e34d2e95161b01323c517d6782f3a78ee  ./curl/curl_amd_x86_64_Windows.exe
3c6cfb9f124dc0f9f8b3cc7bf03619c41ba7492f6509544d30f41f05ae299aa0  ./curl/curl_amd_x86_64_macOS
c6694c5bb5904312a7aa8b872a4a0e438a91203417b4e1d35b7d1d817db9ffe5  ./curl/curl_amd_x86_Windows.exe
3881ce6eb521d36f997eb8c9246bb66949943470046c35b9f19fd5f6dc25c82a  ./curl/curl_arm32_Android
95d8d5219b4d67543573af5d0728c2c8e0bfe134967467fe50795f73186a9349  ./curl/curl_arm64_Android
df03bd33205d8d7451aeef464d3c34e48aec3a362ca12b6649ca0d6aa9026abb  ./curl/curl_arm_x64_Windows.exe
81ec9164f1146c12be106c839778a5b54183525c50e667b2284350b8a737b4ae  ./curl/curl_armhf_arm32_Android
2ef35a8096fb79f996a44733218f85edd12ee980ea9a8048e8d0cdac4631dc04  ./curl/curl_armv7_Linux
c9656abd9b0bb19a243d41b7eab85c3f8baf4f64d8edc1975fac599367c2e5de  ./curl/curl_i686_Linux
4195b16faa890b17ffb9141412ef3acf8e95e70420b0f73476be4dcb6b336cf9  ./curl/curl_lite_DOS
a6fd402ec2bf8d3351258b2ac3149d400430ea1bce0f02e1b9e5c7c090358c37  ./curl/curl_mips64_Linux
7e7bf3cd8f6118a20b0bbbfd43aa7cacb8783e67716ad05757080d8c0b349dc2  ./curl/curl_mips64el_Linux
7cf8b67fb0b339143a42e5d2fee025234b86d91ec5522a5e6294c7b0c45bc088  ./curl/curl_mips_Android
493a419b4e94f2f1efe6280dd7f7b41ab377bb339198d91fda4da897989c58df  ./curl/curl_mips_Linux
bab2310bf1ecc68a6ec0f7b9d48c8d3b1c234b5ee3b6a54f72405dc51f532630  ./curl/curl_mipsel_Android
78fa791dd50013d105cde7419a4de424886d187e532a0df3fee5d7a6fb721d6e  ./curl/curl_mipsel_Linux
ffb9736c2b358fe10769d6121c2216547b3111a43532d7ec58e4ce4e7a4c43be  ./curl/curl_powerpc64le_Linux
58f19cf823b6ad0a80f053d8d4b79375f68e1a1b177bfe23c65aa24258210747  ./curl/curl_powerpc_Linux
120bdffe4f4c3edc3181b7a2153ac55fccbfcf006bd841000af83706b6da0b15  ./curl/curl_riscv64_Linux
dae2da497625e1125ef290ecb33ad88ef2a5de4bc4e11e50fa944718db614646  ./curl/curl_s390x_Linux
7704aa5287a62d0758e6c0d62fbd490a7ed59a4c004bd6861e50031e7995c1b4  ./curl/curl_tiny_DOS
1a0c608d62d59aaee32c00d1fec588ffd9f7709d12ee18541babab49cc7478b8  ./curl/curl_x64_Android
6a126cfd5c7b5f3a8de45a634dfde47ac7b9b0f74942058b1d301873964554e8  ./curl/curl_x86_64_Android
1480ebe150175f70c5c950f0420c1e270500f742956ce8df4aea53f1ec37c88d  ./curl/curl_x86_Android
```


---

- #### Sizes

```console
1.2M  ./curl/curl_DOS
5.3M  ./curl/curl_aarch64_arm64_Linux
5.3M  ./curl/curl_aarch64_arm64_macOS
2.2M  ./curl/curl_amd_x86_64_Linux
6.2M  ./curl/curl_amd_x86_64_Windows.exe
2.2M  ./curl/curl_amd_x86_64_macOS
4.5M  ./curl/curl_amd_x86_Windows.exe
4.9M  ./curl/curl_arm32_Android
6.7M  ./curl/curl_arm64_Android
4.8M  ./curl/curl_arm_x64_Windows.exe
3.2M  ./curl/curl_armhf_arm32_Android
4.1M  ./curl/curl_armv7_Linux
7.3M  ./curl/curl_i686_Linux
531K  ./curl/curl_lite_DOS
7.0M  ./curl/curl_mips64_Linux
2.1M  ./curl/curl_mips64el_Linux
2.1M  ./curl/curl_mips_Android
6.5M  ./curl/curl_mips_Linux
2.0M  ./curl/curl_mipsel_Android
2.1M  ./curl/curl_mipsel_Linux
8.0M  ./curl/curl_powerpc64le_Linux
6.6M  ./curl/curl_powerpc_Linux
2.4M  ./curl/curl_riscv64_Linux
6.4M  ./curl/curl_s390x_Linux
359K  ./curl/curl_tiny_DOS
8.0M  ./curl/curl_x64_Android
5.1M  ./curl/curl_x86_64_Android
8.1M  ./curl/curl_x86_Android
```

---

- #### Version
```console

$ ./curl/curl_amd_x86_64_Linux -V
/bin/bash: line 1: ./curl/curl_amd_x86_64_Linux: cannot execute binary file: Exec format error
