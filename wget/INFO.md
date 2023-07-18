
---
- #### Download Curl
> - **Sources**
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
> >      - https://github.com/lifenjoiner/wget-for-windows
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

!# Move Downloaded Busybox binary to that DIR
 mv "$Path_To_curl_Binary" "/usr/bin/curl"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/curl"
```

