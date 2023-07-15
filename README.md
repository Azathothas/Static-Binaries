
```console
$ file './masscan/massdns_*'
./masscan/massdns_*: cannot open `./masscan/massdns_*' (No such file or directory)
-e\n--> SHA256SUM\n
$ sha256sum './masscan/massdns_*'
sha256sum: './masscan/massdns_*': No such file or directory
```console
$ file ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
./masscan/masscan_linux_arm64_aarch64_gcc:  ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=88169f6b930d6b9c7d68e0924c7ba83f88ca7e83, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_arm64_aarch64_musl: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), static-pie linked, with debug_info, not stripped
./masscan/masscan_linux_s390x_gcc:          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), dynamically linked, interpreter /lib/ld64.so.1, BuildID[sha1]=4aed4c444ae6f900c3870ef2fc661066ff248af8, for GNU/Linux 5.4.0, with debug_info, not stripped
./masscan/masscan_linux_x86_64_gcc:         ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=1b94767c05fcecb0a4681767d4da43970a7df44f, for GNU/Linux 3.2.0, with debug_info, not stripped
./masscan/masscan_linux_x86_gcc:            ELF 32-bit LSB pie executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, BuildID[sha1]=05315b23502c46bd0924703eb78c19082fd46fd7, for GNU/Linux 3.2.0, with debug_info, not stripped
-e\n--> SHA256SUM\n
$ sha256sum ./masscan/masscan_linux_arm64_aarch64_gcc ./masscan/masscan_linux_arm64_aarch64_musl ./masscan/masscan_linux_s390x_gcc ./masscan/masscan_linux_x86_64_gcc ./masscan/masscan_linux_x86_gcc
57a1738dc22e7bd422f3587dacf0cec693c5b7447d748b91a6ae0361551feff3  ./masscan/masscan_linux_arm64_aarch64_gcc
e5df596972dcd2404ecd62bd4e9f89bf7bd2c293eff9f8c9a8d6fa84b7336141  ./masscan/masscan_linux_arm64_aarch64_musl
28318279599d17c5592c7e8a3d0300ec9fc026a94880726768df9707d1d4ee61  ./masscan/masscan_linux_s390x_gcc
c228589aec4f4907e418697090987ec80935e1b115ed9cb4a2fb5bc2b4c91314  ./masscan/masscan_linux_x86_64_gcc
f9beff2629173bdc6fdc4d8f7dd75f3c7533949517f7c22deeb6a9413beaff04  ./masscan/masscan_linux_x86_gcc
```


---
- #### Bundled Commands
```console
