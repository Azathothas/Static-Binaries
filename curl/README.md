---
curl test
---

---
```console
$ file ./curl/curl_aarch64_arm64 ./curl/curl_amd64_x86_64 ./curl/curl_armhf ./curl/curl_armv7 ./curl/curl_i386 ./curl/curl_ppc64le_powerpc64le ./curl/curl_windows_amd_x86.exe ./curl/curl_windows_amd_x86_64.exe ./curl/curl_windows_arm_x64.exe
./curl/curl_aarch64_arm64:          ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, stripped
./curl/curl_amd64_x86_64:           ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, BuildID[sha1]=cfb60fe53d998710e2f981131c5e092757ab5fdf, stripped
./curl/curl_armhf:                  ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_armv7:                  ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, stripped
./curl/curl_i386:                   ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, stripped
./curl/curl_ppc64le_powerpc64le:    ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, stripped
./curl/curl_windows_amd_x86.exe:    PE32 executable (console) Intel 80386, for MS Windows
./curl/curl_windows_amd_x86_64.exe: PE32+ executable (console) x86-64, for MS Windows
./curl/curl_windows_arm_x64.exe:    PE32+ executable (console) Aarch64, for MS Windows

--> SHA256SUM
$ sha256sum ./curl/curl_aarch64_arm64 ./curl/curl_amd64_x86_64 ./curl/curl_armhf ./curl/curl_armv7 ./curl/curl_i386 ./curl/curl_ppc64le_powerpc64le ./curl/curl_windows_amd_x86.exe ./curl/curl_windows_amd_x86_64.exe ./curl/curl_windows_arm_x64.exe
3e17d3a355cc7dc00d953d65cffbc54e07d2bebbdf5be2d0f1031240c7798d08  ./curl/curl_aarch64_arm64
f58feb42ebdb075aa3534c75c7f5fc5c247fb022f432b804962928e38164bc42  ./curl/curl_amd64_x86_64
e42730533f7306dcce51f280b654c50ed57cf2054295a625528ab1aece95d3fc  ./curl/curl_armhf
e63d1fc5718fa2784bd3aa4a3c1a4307689ca53c2cdc92aea6ea2e13ea00eb92  ./curl/curl_armv7
56328b876c1bab7376cd8429913e3346b6df7526e2c40b563e07f0d7ce6d7ba1  ./curl/curl_i386
65c651e8c6b00c12a67366cfdfde6e85189616b8fe3e85ca9f446c5f472b42e7  ./curl/curl_ppc64le_powerpc64le
8e707a23cc6aceb9dfd6bf72060ac2faf80d108a8fe9334dd83786970041ac8b  ./curl/curl_windows_amd_x86.exe
acff6102d02e9996f6982114f3618de80d4887ee7d423f5961d2238466df185b  ./curl/curl_windows_amd_x86_64.exe
3534e71577d5fc1024236f8edf3fc3de50819a283f8e564099add87022743f74  ./curl/curl_windows_arm_x64.exe
```


---
- #### Version
```console
$ qemu-aarch64-static ./curl/curl_aarch64_arm64
curl: try 'curl --help' for more information
