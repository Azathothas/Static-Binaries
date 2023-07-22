
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
./masscan/masscan_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=fdc217fd5c928afffc5620ec0c282eb9927379f4, for GNU/Linux 5.4.0, stripped
./masscan/masscan_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./masscan/masscan_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=a4966a4551dd838beabae4ceecb15ef4074dcb9d, for GNU/Linux 5.4.0, stripped
./masscan/masscan_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=2ec16708101dbf263efb4eb8f2649b18c9540c9a, for GNU/Linux 3.2.0, stripped
./masscan/masscan_linux_x86_gcc:            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, BuildID[sha1]=cd830e4c70df0eb0c701c18c92618102c21f7cd8, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
2c8c3e9822a97a5ec2998613e7f152911b3b9bcb702f3707528f176801392db1  ./masscan/masscan_linux_arm64_aarch64_gcc
f103751584145185b4c1ade4ddfbc1e4d9dbe48b7c0555382eca9bcd7d1bb49d  ./masscan/masscan_linux_arm64_aarch64_musl
23c9f47265bcfe11eb7777c07fd10346a109e6479ac0484c2a11b4e3a8629037  ./masscan/masscan_linux_s390x_gcc
f2c3acb59bcf6f89eff93789b5985087871bdebea4955eb4e70333bd30f1afb9  ./masscan/masscan_linux_x86_64_gcc
04bde01ff4987aa006774e8de15b61ea58fa6d1da36d52e223f99e179e497dba  ./masscan/masscan_linux_x86_gcc
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

