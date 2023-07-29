
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
./massdns/massdns_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=9e7a4d2475ed7a23a50934eb5b965cc19414967a, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./massdns/massdns_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=0f4f32d7710bd39559117be7958752863da00e26, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=c8ad5a698c183a8d671bc2f89274a25bf7011f35, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./massdns/massdns_linux_arm64_aarch64_gcc ./massdns/massdns_linux_arm64_aarch64_musl ./massdns/massdns_linux_s390x_gcc ./massdns/massdns_linux_x86_64_gcc
9deb8b0493eaaa373eb9124e424caca7c6f702fa4f72c380460e1e4f4a6e5769  ./massdns/massdns_linux_arm64_aarch64_gcc
66987a1eca2066b545456ccf81477f45d672c831100b02f98d3d7c7067f799fb  ./massdns/massdns_linux_arm64_aarch64_musl
7989ff2d551e45462dcecb27a24451688c98f280273071e65c51f2e689626219  ./massdns/massdns_linux_s390x_gcc
9fec350ba314fe51efedc5c4939e87861fd3747a4ec05a771b458954d7891262  ./massdns/massdns_linux_x86_64_gcc
```


---

- #### Sizes

```console
2.1K  INFO.md
3.6K  README.md
713K  massdns_linux_arm64_aarch64_gcc
147K  massdns_linux_arm64_aarch64_musl
833K  massdns_linux_s390x_gcc
876K  massdns_linux_x86_64_gcc
```

---

