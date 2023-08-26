
---
- #### Download MassScan
> - An effort to compile as many binaries as there are **ARCH** of Systems has been put in, however, there's still no process to compile for the following **Architectures**
> > ```bash
> > 
> >  --> Windows*
> >    - There is much work to be done before dockcross can compile for Windows
> >    - Further, running masscan on Windows is pointless since requests are capped at 300,000 packets/second
> >      !# https://github.com/robertdavidgraham/masscan#transmit-rate-important 
> > 
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
--> linux_x86_gcc || x86 [32-bit] (GNU/Linux)
--> linux_x86_64_gcc || x86_64 [64-bit] (GNU/Linux)

!# Export
export MASSCAN_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/masscan/masscan_$MASSCAN_ARCH"
```
---
- #### Install Masscan
```bash
!# Copy downloaded Masscan binary to /usr/bin || /usr/local/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded Busybox binary to that DIR
 mv "$Path_To_Masscan_Binary" "/usr/bin/masscan"

!# Give Writeable Perms
 chmod +xwr "/usr/bin/masscan"

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
$ file ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
./masscan/masscan_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=0315a561520e39e133bc9ea7aa98a3f29365993c, for GNU/Linux 5.4.0, stripped
./masscan/masscan_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./masscan/masscan_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=9d630ac90da6a5c680020c4e753155d4d4af4893, for GNU/Linux 5.4.0, stripped
./masscan/masscan_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=fe9a0b525299a0862b45102714901a64d8958310, for GNU/Linux 3.2.0, stripped
./masscan/masscan_linux_x86_gcc:            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, BuildID[sha1]=e2d8540e459bd0651ec843e6af9b413119238641, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
dedcbb7a1a8276ea9f3ea492644768cd95d856161746cbe64a55f0ce82f3b62d  ./masscan/masscan_linux_arm64_aarch64_gcc
0e52695897a69989b073f149fb35edb0b4569882088c124d238d770d045b97e3  ./masscan/masscan_linux_arm64_aarch64_musl
e237a96b7a4a1e1499878328c0df9ff6975e9c0c909a94a34b8c889eaa4b6e3a  ./masscan/masscan_linux_s390x_gcc
cfc614b0241a2947e54864a16538530a1531a78ba3773983e70a5d45f46ee5ce  ./masscan/masscan_linux_x86_64_gcc
b2655ea8a9f2293cfa91653e49402817a17c6212b4fa82ef52bbec43ec7293b8  ./masscan/masscan_linux_x86_gcc
```


---

- #### Sizes

```console

2.2K  INFO.md
4.1K  README.md
1.2M  masscan_linux_arm64_aarch64_gcc
507K  masscan_linux_arm64_aarch64_musl
1.4M  masscan_linux_s390x_gcc
1.4M  masscan_linux_x86_64_gcc
1.4M  masscan_linux_x86_gcc
```

---

