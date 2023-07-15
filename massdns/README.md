ss

---
```console
$ file ./massdns/massdns_linux_arm64_aarch64_gcc ./massdns/massdns_linux_arm64_aarch64_musl ./massdns/massdns_linux_s390x_gcc ./massdns/massdns_linux_x86_64_gcc
./massdns/massdns_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, BuildID[sha1]=5c1dffb6074b3aeafe11ce16bda15438ae12807c, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, stripped
./massdns/massdns_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, BuildID[sha1]=c0d9f2596e0f561b992c2f9056c604c3c1724c72, for GNU/Linux 5.4.0, stripped
./massdns/massdns_linux_x86_64_gcc:         ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=5e314b0cc581fbcbef556bbde8afb938eadda89f, for GNU/Linux 3.2.0, stripped

--> SHA256SUM
$ sha256sum ./massdns/massdns_linux_arm64_aarch64_gcc ./massdns/massdns_linux_arm64_aarch64_musl ./massdns/massdns_linux_s390x_gcc ./massdns/massdns_linux_x86_64_gcc
1e724b103f8afc409bf10297c927a33414e7c92855ccf54d8137e60ea233eae1  ./massdns/massdns_linux_arm64_aarch64_gcc
98766f958c91b3c0f3df951ed9d820d7ddc5ea07df553ea8d12e38a3a6be9b34  ./massdns/massdns_linux_arm64_aarch64_musl
cdb5186718434cef14ddc69dbc8187e53591dc8ae94f9f0dfc334293c1004e7e  ./massdns/massdns_linux_s390x_gcc
4a7954a675919fc435775ab530797a227bdd2450625b9ab391d604228092ad56  ./massdns/massdns_linux_x86_64_gcc

---
