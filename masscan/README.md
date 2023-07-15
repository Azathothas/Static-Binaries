
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
!# Get CPU Arch:
 uname -m || dpkg --print-architecture

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
./masscan/masscan_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=263434f1953b7443f7cb6c36706b3f7835223896, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, with debug_info, not stripped
./masscan/masscan_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (GNU/Linux), statically linked, BuildID[sha1]=090ce7ad302f7cbde9e10f6f52c936d6373ebe98, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=556a9c1deba6e52af727ea2520e0a00ed8280940, for GNU/Linux 3.2.0, with debug_info, not stripped
./masscan/masscan_linux_x86_gcc:            ELF 32-bit LSB executable, Intel 80386, version 1 (GNU/Linux), statically linked, BuildID[sha1]=f488dca9a7cb63b117433e171734ab66e8306b94, for GNU/Linux 3.2.0, with debug_info, not stripped

--> SHA256SUM
$ sha256sum ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
fe597441ffa75f10e1dca0e13adf3cacfdbbed74f2118eac6e519db943220e3c  ./masscan/masscan_linux_arm64_aarch64_gcc
97bee6b95ef3d496f1942d03872f0861ed702de4fab6f5cfb85513ef145b1720  ./masscan/masscan_linux_arm64_aarch64_musl
994df59fee988d91251ae8fb9a53cd0a2bf2e06f11a50e5ba778fcfe73860833  ./masscan/masscan_linux_s390x_gcc
7c45f19b103ecc6bf135b54b90e5a50d42a6744ed456fa0cd9e04983d5bef2ae  ./masscan/masscan_linux_x86_64_gcc
41a2bbf7960cd3258aebc9e279a13dd406c7a51968fa26fc547ae8fdf7a87a43  ./masscan/masscan_linux_x86_gcc
```


---
