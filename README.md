
```console
$ file ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
./masscan/masscan_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=e6d8dfe207f54986c1514dc0d6eed8079113d621, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, with debug_info, not stripped
./masscan/masscan_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), dynamically linked, interpreter /lib/ld64.so.1, BuildID[sha1]=11eed17c92705c7c4845ca94c42617d9836f5af3, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_x86_64_gcc:         ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=47f5375f3cbe6124db584e5bb49c14e93505bba2, for GNU/Linux 3.2.0, with debug_info, not stripped
./masscan/masscan_linux_x86_gcc:            ELF 32-bit LSB pie executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, BuildID[sha1]=e3ed3ffd71d6bfb138cd88565048cd9abd379348, for GNU/Linux 3.2.0, with debug_info, not stripped

--> SHA256SUM
$ sha256sum ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
70c445faafcacbc19d50aa8b72ee31188a7664ed48d38d5f832982ac378fe3aa  ./masscan/masscan_linux_arm64_aarch64_gcc
132ff2dd9a115070d9448bffdad81cc6b3e400050dcb74a65efe9e9d7d4682c5  ./masscan/masscan_linux_arm64_aarch64_musl
7e66db743b2bb973458971d2c3566ccaef70a5bd0eddb173df56a2126f314c01  ./masscan/masscan_linux_s390x_gcc
241d72b18de86826482beee2e818f0fd31a84bde0d179804a72345eac06074ad  ./masscan/masscan_linux_x86_64_gcc
b594faa9093e7711955c110abf71ee7b9d6b30b0b5778f0d829ea715f63d7422  ./masscan/masscan_linux_x86_gcc
```


---
- #### Bundled Commands
```console
$ qemu-aarch64-static ./masscan/masscan_linux_arm64_aarch64_gcc
[-] FAIL: failed to load libpcap shared library
    [hint]: you must install libpcap or WinPcap
usage:
masscan -p80,8000-8100 10.0.0.0/8 --rate=10000
 scan some web ports on 10.x.x.x at 10kpps
masscan --nmap
 list those options that are compatible with nmap
masscan -p80 10.0.0.0/8 --banners -oB <filename>
 save results of scan in binary format to <filename>
masscan --open --banners --readscan <filename> -oX <savefile>
 read binary scan results in <filename> and save them as xml in <savefile>
