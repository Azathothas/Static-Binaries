
---
- #### Download MassDNS
> - An effort to compile as many binaries as there are **ARCH** of Systems has been put in, however, there's still no process to compile for the following **Architectures**
> > ```bash
> >  --> 32-bit Only
> >    - Currently all builds of MassDNS against dockcross 32 bit only images fail
> > 
> >  --> Windows*
> >    - There is much work to be done before dockcross can compile for Windows
> > ```
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
--> linux_arm64_aarch64_gcc || arm64 [64-bit] (GNU/Linux)
--> linux_arm64_aarch64_musl || arm64 [64-bit] (GNU/Linux)
--> linux_s390x_gcc || IBM S/390 [64-bit] (GNU/Linux)
--> linux_x86_64_gcc || x86_64 [64-bit] (GNU/Linux)

!# Export
export MASSDNS_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/massdns/massdns_$MASSDNS_ARCH"
```
---
- #### Install MassDNS
```bash
!# Creae & export $USER writeable $DIR
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded Busybox binary to that DIR
 mv "$Path_To_MassDNS_Binary" "$HOME/bin/massdns"

!# Give Writeable Perms
 chmod +xwr "$HOME/bin/massdns"

#! Install libpcap: https://github.com/the-tcpdump-group/libpcap
!# apt
 sudo apt-get install libpcap-dev -y

!# conda
!# To Install:
!# curl -qfSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o /tmp/install_conda.sh && chmod +xwr "/tmp/install_conda.sh" && /tmp/install_conda.sh -b
!# export PATH=$HOME/miniconda3/bin:$PATH
!# export PATH=$HOME/miniconda3/condabin:$PATH

 conda install -c conda-forge libcap --all -y
 conda install -c conda-forge libpcap --all -y

!# dnf
 sudo dnf install libpcap --nogpgcheck

!# pacman
 sudo pacman -S libpcap

!# yum
 sudo dnf install libpcap --nogpgcheck
```

---
```console
$ file ./massdns/massdns_linux_arm64_aarch64_gcc ./massdns/massdns_linux_arm64_aarch64_musl ./massdns/massdns_linux_s390x_gcc ./massdns/massdns_linux_x86_64_gcc
./massdns/massdns_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=643b921270718ef76d7fd0c7a3b32c5e693755f4, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./massdns/massdns_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=f2d97b560af153b951ac02a4a3cb4e991e055425, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=863a96346344ab420845be781439c47258cc9b99, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./massdns/massdns_linux_arm64_aarch64_gcc ./massdns/massdns_linux_arm64_aarch64_musl ./massdns/massdns_linux_s390x_gcc ./massdns/massdns_linux_x86_64_gcc
72a3fd33e19c97f73a62b3bd72d1f89a891e2c7f9ff04f75541ff7142020bdca  ./massdns/massdns_linux_arm64_aarch64_gcc
e99579778473cd77f895e803e6706318c7b9b170a6e2daab91a3ea10b0c6cf2a  ./massdns/massdns_linux_arm64_aarch64_musl
e2b08194db8a5c5acc2a2c6355a87357404866b2bcf8f6157bf3a0972042d3ec  ./massdns/massdns_linux_s390x_gcc
1b48a86b52446fba9ba5ec2d9fb2ca30c22141b42045a3e8f6036707f5ae7ef0  ./massdns/massdns_linux_x86_64_gcc
```


---

- #### Sizes

```console
2.1K  INFO.md
3.6K  README.md
713K  massdns_linux_arm64_aarch64_gcc
147K  massdns_linux_arm64_aarch64_musl
833K  massdns_linux_s390x_gcc
928K  massdns_linux_x86_64_gcc
```

---

