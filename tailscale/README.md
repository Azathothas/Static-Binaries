
---
- #### Download tailscale
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using dockercross (Dynamic Only)
> >      - Currently this fails with: loadinternal: cannot find runtime/cgo
> > --> Linux:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
> >      - Binaries for 'ppc64' | 'ppc64le' | 's390x' are compiled using dockercross
> > --> Windows:
> >      - This rquires a GUI, so better to just download from: https://pkgs.tailscale.com/stable/#windows
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

!#For Linux
--> tailscalec_aarch64_arm64_musl_Linux || aarch64 || arm64 [64-bit] (GNU/Linux)
--> tailscalec_aarch64_arm64_musl_latest_Linux
--> tailscalec_aarch64_arm64_libressl_musl_Linux
--> tailscalec_aarch64_arm64_libressl_musl_latest_Linux
--> tailscalec_amd_x86_64_musl_Linux || amd x86_64 || x86_64 [64-bit] (GNU/Linux)
--> tailscalec_amd_x86_64_musl_latest_Linux
--> tailscalec_amd_x86_64_libressl_musl_Linux
--> tailscalec_amd_x86_64_libressl_musl_latest_Linux
--> tailscalec_arm_abi_musl_Linux || ARMv4 || ARMv5 || ARMv7 (?) [32-bit] {Hardware Floating-Point Unit (FPU) support : NO}
--> tailscalec_arm_abi_musl_latest_Linux
--> tailscalec_arm_abi_libressl_musl_Linux
--> tailscalec_arm_abi_libressl_musl_latest_Linux
--> //_gnueabihf_Linux || ARMv7 [32-bit] {Hardware Floating-Point Unit (FPU) support : YES}
--> // || x86_64 [32-bit] (GNU/Linux)
--> //_m68k_Linux || Motorola_NXP [32-bit] (SYSV)
--> tailscalec_mips_musl_Linux || MIPS (Big-Endian) [32-bit] (SYSV)
--> tailscalec_mips_musl_latest_Linux
--> tailscalec_mips_libressl_musl_Linux
--> tailscalec_mips_libressl_musl_latest_Linux
--> tailscalec_mips64_musl_Linux || MIPS (Big-Endian) [64-bit] (SYSV)
--> tailscalec_mips64_musl_latest_Linux
--> tailscalec_mips64_libressl_musl_Linux
--> tailscalec_mips64_libressl_musl_latest_Linux
--> //_mips64el_Linux || MIPSel (Little-Endian) [64-bit] (SYSV)
--> tailscalec_mipsel_musl_Linux || MIPSel (Little-Endian) [32-bit] (SYSV)
--> tailscalec_mipsel_musl_latest_Linux
--> tailscalec_mipsel_libressl_musl_Linux
--> tailscalec_mipsel_libressl_musl_latest_Linux
--> //powerpc_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64_Linux || ppc || cisco 4500 [32-bit] (SYSV)
--> //powerpc64le_Linux || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (GNU/Linux)
--> //riscv32_Linux || UCB RISC-V || RVC [32-bit] (SYSV)
--> //riscv64_Linux || UCB RISC-V || RVC [64-bit] (SYSV)
--> //s390x_Linux || IBM S/390 [64-bit] (GNU/Linux)


!# Export
export tailscale_ARCH="$YOUR_CPU_ARCH_FROM_LIST_ABOVE"

!# Download Def
 curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/$tailscale_ARCH"

```
---
- #### Install tailscale
```bash
!# Copy downloaded tailscale binaries to /usr/bin || /usr/local/bin

!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded tailscale binaries to that DIR
 mv "$Path_To_tailscale_Binary" "/usr/bin/tailscale"
 mv "$Path_To_tailscaled_Binary" "/usr/bin/tailscaled"

!# Give Writeable Perms
 chmod +xwr /usr/bin/tailscale*
```






h

---
```console
$ file ./tailscale/tailscale_aarch64_arm64_Linux ./tailscale/tailscale_amd_geode_Linux ./tailscale/tailscale_amd_x86_64_Linux ./tailscale/tailscale_arm_abi_Linux ./tailscale/tailscale_i386_Linux ./tailscale/tailscale_mips64_Linux ./tailscale/tailscale_mips64le_Linux ./tailscale/tailscale_mips_Linux ./tailscale/tailscale_mipsle_Linux ./tailscale/tailscale_riscv64_Linux ./tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux ./tailscale/tailscaled_aarch64_arm64_systemd.service_Linux ./tailscale/tailscaled_amd_geode_systemd.defaults_Linux ./tailscale/tailscaled_amd_geode_systemd.service_Linux ./tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux ./tailscale/tailscaled_amd_x86_64_systemd.service_Linux ./tailscale/tailscaled_arm_abi_systemd.defaults_Linux ./tailscale/tailscaled_arm_abi_systemd.service_Linux ./tailscale/tailscaled_i386_systemd.defaults_Linux ./tailscale/tailscaled_i386_systemd.service_Linux ./tailscale/tailscaled_mips64_systemd.defaults_Linux ./tailscale/tailscaled_mips64_systemd.service_Linux ./tailscale/tailscaled_mips64le_systemd.defaults_Linux ./tailscale/tailscaled_mips64le_systemd.service_Linux ./tailscale/tailscaled_mips_systemd.defaults_Linux ./tailscale/tailscaled_mips_systemd.service_Linux ./tailscale/tailscaled_mipsle_systemd.defaults_Linux ./tailscale/tailscaled_mipsle_systemd.service_Linux ./tailscale/tailscaled_riscv64_systemd.defaults_Linux ./tailscale/tailscaled_riscv64_systemd.service_Linux
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=ctk5j_qUbjZDuT1-CIUU/zq7OcZSvTr0W0yyqsYMU/6io3wXIlF4f1pcuBUdU0/J4_6_41WHYdhzzSNv0Pf, with debug_info, not stripped
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=Xkr9aADoeoBViHP6SKSN/d5q-JIw_6GYrbO8imSvo/FwEWECEHAQ1eL1AgeO8e/TKrlhVCQZy_6DNvChn-F, stripped
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=SgJ43OkBzUQGX9l9qoGl/XWzZM_N_aFa1fJVu1Bqr/4PDeMtEFX_s5uJvWR8EU/cZkI7IesymvQHxjnBjPn, stripped
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=cOfVsWp4WAOm5XJDrAnx/mfqtPBY8IRFcqs-QnuPc/EfwiX8hyAS2yXeheuJuZ/_D87zBLPVOW60alScvpZ, with debug_info, not stripped
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=08ErR3Xsfd2czXsftpGp/qxe3c-WdqcF6O5I0INCN/rrwzxFkZaEeAy7096B5L/qv0tT0wZXoPmvftYRSDC, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=xGZNYJCKwshMjjvoaeRy/PjE0TKYw1KFTwzvi9bQP/7FuLhZ-ypw8xOVv21vOX/NasS345zFMA7PUHQEsu-, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=-h40ST-rzic7mxYBDKBO/wommK2usI4R8aZbpYbNK/XkoiS2zgfBU3zCth8RDo/0gWFyvlYFjVeHYHxW5hI, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=qr_XjMKQd3U-2ykvnzJg/b1-2uHcK3XGMSFGaF1Zm/L1FNtEgfK9GSOJHuAgln/t5Qlz1MFP8HSBdtFQN8k, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=I6l17S-EC2il0RW34_Mh/ccApJ4TUCQ1TASySMg6v/LcR3eGbzxkNHzJY0o-Qo/gXs0wbtd3vxvr6qt-5gT, with debug_info, not stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=IYMtLjsaMmyzTQlxQSQq/WOvwUE5IgynoDrEufaZ-/33x1Y1iTzCfuB8exxRbg/relmqKc0--ptpP9fnZ2K, with debug_info, not stripped
./tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux: ASCII text
./tailscale/tailscaled_aarch64_arm64_systemd.service_Linux:  ASCII text
./tailscale/tailscaled_amd_geode_systemd.defaults_Linux:     ASCII text
./tailscale/tailscaled_amd_geode_systemd.service_Linux:      ASCII text
./tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux:    ASCII text
./tailscale/tailscaled_amd_x86_64_systemd.service_Linux:     ASCII text
./tailscale/tailscaled_arm_abi_systemd.defaults_Linux:       ASCII text
./tailscale/tailscaled_arm_abi_systemd.service_Linux:        ASCII text
./tailscale/tailscaled_i386_systemd.defaults_Linux:          ASCII text
./tailscale/tailscaled_i386_systemd.service_Linux:           ASCII text
./tailscale/tailscaled_mips64_systemd.defaults_Linux:        ASCII text
./tailscale/tailscaled_mips64_systemd.service_Linux:         ASCII text
./tailscale/tailscaled_mips64le_systemd.defaults_Linux:      ASCII text
./tailscale/tailscaled_mips64le_systemd.service_Linux:       ASCII text
./tailscale/tailscaled_mips_systemd.defaults_Linux:          ASCII text
./tailscale/tailscaled_mips_systemd.service_Linux:           ASCII text
./tailscale/tailscaled_mipsle_systemd.defaults_Linux:        ASCII text
./tailscale/tailscaled_mipsle_systemd.service_Linux:         ASCII text
./tailscale/tailscaled_riscv64_systemd.defaults_Linux:       ASCII text
./tailscale/tailscaled_riscv64_systemd.service_Linux:        ASCII text

--> SHA256SUM
$ sha256sum ./tailscale/tailscale_aarch64_arm64_Linux ./tailscale/tailscale_amd_geode_Linux ./tailscale/tailscale_amd_x86_64_Linux ./tailscale/tailscale_arm_abi_Linux ./tailscale/tailscale_i386_Linux ./tailscale/tailscale_mips64_Linux ./tailscale/tailscale_mips64le_Linux ./tailscale/tailscale_mips_Linux ./tailscale/tailscale_mipsle_Linux ./tailscale/tailscale_riscv64_Linux ./tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux ./tailscale/tailscaled_aarch64_arm64_systemd.service_Linux ./tailscale/tailscaled_amd_geode_systemd.defaults_Linux ./tailscale/tailscaled_amd_geode_systemd.service_Linux ./tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux ./tailscale/tailscaled_amd_x86_64_systemd.service_Linux ./tailscale/tailscaled_arm_abi_systemd.defaults_Linux ./tailscale/tailscaled_arm_abi_systemd.service_Linux ./tailscale/tailscaled_i386_systemd.defaults_Linux ./tailscale/tailscaled_i386_systemd.service_Linux ./tailscale/tailscaled_mips64_systemd.defaults_Linux ./tailscale/tailscaled_mips64_systemd.service_Linux ./tailscale/tailscaled_mips64le_systemd.defaults_Linux ./tailscale/tailscaled_mips64le_systemd.service_Linux ./tailscale/tailscaled_mips_systemd.defaults_Linux ./tailscale/tailscaled_mips_systemd.service_Linux ./tailscale/tailscaled_mipsle_systemd.defaults_Linux ./tailscale/tailscaled_mipsle_systemd.service_Linux ./tailscale/tailscaled_riscv64_systemd.defaults_Linux ./tailscale/tailscaled_riscv64_systemd.service_Linux
7dc6ada0109656ec28efe21174d936f8352b4430dff716b16b349fb75c5bbc11  ./tailscale/tailscale_aarch64_arm64_Linux
fc523e74e88df063f575cc5333681d7dbaca5a3223e6974b0783c2b78104b8f6  ./tailscale/tailscale_amd_geode_Linux
241ccaf46aec4e2a4696d25ee62eb7389631aae2c044d682123dff61de585ec6  ./tailscale/tailscale_amd_x86_64_Linux
1fb2096374c9076b2adc3c8b20283c69b6731438f2291ae20d8307c8cafe0032  ./tailscale/tailscale_arm_abi_Linux
2adef4452eebb59dfe4e6f335a43fb483d33cade8111e5b6ffe3706b3ec93b5b  ./tailscale/tailscale_i386_Linux
ae883b4339c97c4f76bd16e23087cef57ca5d1735df17ef8793b1da9f37f54b1  ./tailscale/tailscale_mips64_Linux
c899b83150cbdb3e21710bfd5912a3512e517032a8b5694e6e186e3010589e39  ./tailscale/tailscale_mips64le_Linux
d785a80f46adb6e9f6b7117ca0df2c73e04179375c47e753dbb2050681c6ded9  ./tailscale/tailscale_mips_Linux
1eb670928d5e9532d62748c10e45c592e1deb96cf5aa180bc6bf2d04f007488f  ./tailscale/tailscale_mipsle_Linux
9ed551f3158c514927951925ec5b1d294c7aaed97f6c3944ee6b6f9df74c3ed8  ./tailscale/tailscale_riscv64_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_aarch64_arm64_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_amd_geode_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_amd_geode_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_amd_x86_64_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_arm_abi_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_arm_abi_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_i386_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_i386_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_mips64_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_mips64_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_mips64le_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_mips64le_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_mips_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_mips_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_mipsle_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_mipsle_systemd.service_Linux
dccbbcb1f19cf455e41c9f2551733ab92433d162bd7d17564390db21f76bff93  ./tailscale/tailscaled_riscv64_systemd.defaults_Linux
206910f922a4d771c6d02f5737bf6b8cec40574c1dfab1fd92e224156532858b  ./tailscale/tailscaled_riscv64_systemd.service_Linux
```


---

- #### Sizes

```console
3.4K  INFO.md
14K   README.md
15M   tailscale_aarch64_arm64_Linux
12M   tailscale_amd_geode_Linux
13M   tailscale_amd_x86_64_Linux
17M   tailscale_arm_abi_Linux
12M   tailscale_i386_Linux
19M   tailscale_mips64_Linux
19M   tailscale_mips64le_Linux
18M   tailscale_mips_Linux
18M   tailscale_mipsle_Linux
18M   tailscale_riscv64_Linux
287   tailscaled_aarch64_arm64_systemd.defaults_Linux
676   tailscaled_aarch64_arm64_systemd.service_Linux
287   tailscaled_amd_geode_systemd.defaults_Linux
676   tailscaled_amd_geode_systemd.service_Linux
287   tailscaled_amd_x86_64_systemd.defaults_Linux
676   tailscaled_amd_x86_64_systemd.service_Linux
287   tailscaled_arm_abi_systemd.defaults_Linux
676   tailscaled_arm_abi_systemd.service_Linux
287   tailscaled_i386_systemd.defaults_Linux
676   tailscaled_i386_systemd.service_Linux
287   tailscaled_mips64_systemd.defaults_Linux
676   tailscaled_mips64_systemd.service_Linux
287   tailscaled_mips64le_systemd.defaults_Linux
676   tailscaled_mips64le_systemd.service_Linux
287   tailscaled_mips_systemd.defaults_Linux
676   tailscaled_mips_systemd.service_Linux
287   tailscaled_mipsle_systemd.defaults_Linux
676   tailscaled_mipsle_systemd.service_Linux
287   tailscaled_riscv64_systemd.defaults_Linux
676   tailscaled_riscv64_systemd.service_Linux
8     version.txt
```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.46.0
  tailscale commit: 03b5aa8b4d846b67e5f6e14543f5e8fd25ff259d
  other commit: ea91237a35098bf2e10af36cddde53bb96e7ad3c
  go version: go1.21rc3

$ ./tailscale/tailscale_amd_x86_64_Linux -h
USAGE
  tailscale [flags] <subcommand> [command flags]

For help on subcommands, add --help after: "tailscale status --help".

This CLI is still under active development. Commands and flags will
change in the future.

SUBCOMMANDS
  up         Connect to Tailscale, logging in if needed
  down       Disconnect from Tailscale
  set        Change specified preferences
  login      Log in to a Tailscale account
  logout     Disconnect from Tailscale and expire current node key
  switch     Switches to a different Tailscale account
  configure  [ALPHA] Configure the host to enable more Tailscale features
  netcheck   Print an analysis of local network conditions
  ip         Show Tailscale IP addresses
  status     Show state of tailscaled and its connections
  ping       Ping a host at the Tailscale layer, see how it routed
  nc         Connect to a port on a host, connected to stdin/stdout
  ssh        SSH to a Tailscale machine
  funnel     Turn on/off Funnel service
  serve      Serve content and local servers
  version    Print Tailscale version
  web        Run a web server for controlling Tailscale
  file       Send or receive files
  bugreport  Print a shareable identifier to help diagnose issues
  cert       Get TLS certs
  lock       Manage tailnet lock
  licenses   Get open source license information

FLAGS
  --socket string
    	path to tailscaled socket (default /var/run/tailscale/tailscaled.sock)

$ ./tailscale/tailscaled_amd_x86_64_Linux -version
/bin/bash: line 1: ./tailscale/tailscaled_amd_x86_64_Linux: No such file or directory
