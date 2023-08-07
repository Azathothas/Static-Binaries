
---
- #### Download [TailScale](https://tailscale.com/kb/installation/)
> - **Sources**
> > ```bash
> > --> Android:
> >      - Built using dockercross (Dynamic Only)
> >      - Currently this fails with: loadinternal: cannot find runtime/cgo
> > --> Linux:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
> >      - Binaries for 'ppc64' | 'ppc64le' | 's390x' are compiled using dockercross
> >      - 'tailscale_merged' is a combined & smaller binary with some omitted features
> >        - !# https://tailscale.com/kb/1207/small-tailscale/
> >        - Build Flag: CGO_ENABLED=0 go build -o tailscale.combined -v -ldflags="-s -w -extldflags '-static'" -tags "ts_omit_aws,ts_omit_bird,ts_omit_tap,ts_omit_kube,ts_include_cli" "./cmd/tailscaled"
> >
> > --> Windows:
> >      - https://pkgs.tailscale.com/stable/#static [ Stable Releases ]
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
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_aarch64_arm64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_aarch64_arm64_systemd.service_Linux"

--> Amd Geode || x86_64 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_geode_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_geode_systemd.service_Linux"

--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_amd_x86_64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_amd_x86_64_systemd.service_Linux"

--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_arm_abi_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_arm_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_arm_abi_systemd.service_Linux"

--> i386 || Intel 80386 [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_i386_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_i386_systemd.service_Linux"

--> MIPS (Big-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips_systemd.service_Linux"

--> MIPSel || MIPSle (Little-Endian) [32-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mipsle_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mipsle_systemd.service_Linux"

--> MIPS64 (Big-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64_systemd.service_Linux"


--> MIPS64le (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_mips64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_mips64le_systemd.service_Linux"


--> powerpc64|| ppc64 || cisco 7500 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_powerpc64_ppc64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_powerpc64_ppc64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_powerpc64_ppc64_Linux"

--> powerpc64le || ppc64le || cisco 7500 || OpenPOWER ELF V2 ABI (Little-Endian) [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_powerpc64le_ppc64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_powerpc64le_ppc64le_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_powerpc64le_ppc64le_Linux"


--> risc64 || CB RISC-V || RVC [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_riscv64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_systemd.defaults_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_riscv64_systemd.service_Linux"


--> s390x || IBM S/390 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_s390x_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_merged_s390x_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscaled_s390x_Linux"

!#For Windows
--> x86 || x86_64 || arm64
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_setup_Windows.exe"
!# Or using powershell
-->  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/tailscale/tailscale_setup_Windows.exe" -OutFile "tailscale-setup.exe"

```
---
- #### Install TailScale
```bash
--> Linux || macOS
!# Recommended way to install Tailscale is:
 curl -fsSL https://tailscale.com/install.sh | sh
!# But this requires `root` | `sudo` access and doesn't work on all ARCHS
!# Compile Dynamically using go (Mac OS etc.)
  go install -v tailscale.com/cmd/tailscale@main
  go install -v tailscale.com/cmd/tailscaled@main
!# Equivalent of systemd.service
sudo $HOME/go/bin/tailscaled install-system-daemon
->> /Library/LaunchDaemons/com.tailscale.tailscaled.plist

!# Copy downloaded tailscale binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded tailscale binaries to that DIR
 mv "$Path_To_tailscale_Binary" "/usr/bin/tailscale"
 mv "$Path_To_tailscaled_Binary" "/usr/bin/tailscaled"

!# For 'merged' | combined binaries, symlink them
 cd "$DIR_To_tailscale_merged_Binary"
 ln -s "$Path_To_tailscale_merged_Binary" tailscale
 ln -s "$Path_To_tailscale_merged_Binary" tailscaled

!# For Systemd Services, you have to move them to
'/etc/systemd/system/' || '/etc/default/'
!# Examples:
 sudo cp "tailscaled_riscv64_systemd.service" "/etc/systemd/system/"
 sudo cp "tailscaled_riscv64_systemd.defaults" "/etc/default/"

!# Give Writeable Perms
 chmod +xwr /usr/bin/tailscale*

--> Windows
!# In PowerShell, To Install
Start-Process -Wait -FilePath ".\tailscale-setup.exe" -ArgumentList "/install", "/quiet" ; Start-Sleep -Seconds 10
!# To enable & Run
Start-Process -NoNewWindow -FilePath "C:\Program Files\Tailscale\tailscale.exe" -ArgumentList "up", "--unattended", --hostname="$HOSTNAME", --authkey="$TSKEY"
```

---
```console

--> METADATA
./tailscale/tailscale_aarch64_arm64_Linux:                   ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=vHVMEfQ8DizwE-NcqA4q/_oc-Ew-f34XdZYnxMTSS/Omni15wxnX51qIGn0MPD/3648biOPtxxhqh5FVMUf, with debug_info, not stripped
./tailscale/tailscale_amd_geode_Linux:                       ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=cbMH7JxaqO5t9XzZR6MX/h-xyd7CRBSUIoiC_xBKf/2nHYupr5i9W825Sic9HG/2eeRjlwC2o1r9_au__vi, stripped
./tailscale/tailscale_amd_x86_64_Linux:                      ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=DcC0BFopUv2vf_XfnDq3/6BETFVp26KuIu2eKmp_6/REJmFqEvtU_Jv8HKu3su/UyLn_n7Et4PPF23fn2FV, stripped
./tailscale/tailscale_arm_abi_Linux:                         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=oV1RXnozwfV-VyRIphF2/r6wxCopADtNXt6_NFBAK/rlYZ52HMhh0D-FVm2Jlp/H78qiUHCOyQigIw3mV4P, with debug_info, not stripped
./tailscale/tailscale_i386_Linux:                            ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=qHSfy11qiRidSqKk49lJ/LF6G0fjhYQkJg_GBzQEX/P0P1DxaAVhPap1e02GLt/b1knJhKkZu3L8J9zlDjA, stripped
./tailscale/tailscale_merged_aarch64_arm64_Linux:            ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=lTtbhI7I40bTfF59q92Z/H4JOOFJl9U4TxwYJG0LM/RTUD2jdEm-OWtobk34AK/pwPs5_4v63szt5TK5IYy, stripped
./tailscale/tailscale_merged_amd_x86_64_Linux:               ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=5XgiKL4sSOzCdAdVyVcX/F7MpfNNFihWIxLM5Q1lP/sB2Ee1MXbAyBwgiE7cO7/9s3Zeafx29Fql8JgIshN, stripped
./tailscale/tailscale_merged_arm_Linux:                      ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=AcTmeO9U6xhAKPQOW6Ka/go7-f58k2eC3ze9twTPO/7LQH7U8Q576hIXeB4SjO/SttCc5StrjfxtVcbYkAq, stripped
./tailscale/tailscale_merged_i386_Linux:                     ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=jzmIWt3CIPvUVi3_40DA/fGZfr--DlEc5pIDUWxoq/TqWhUIlo7LeaScgDKtB5/LS8yFly_hM-L8imonmVD, stripped
./tailscale/tailscale_merged_powerpc64_ppc64_Linux:          ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=H66kRFoBbOgYVMyYzsi5/fWdXDI1MOoxbtRhZbmUL/xDLr4LigslV8pDB_HQUE/V6FuzliD9fBM3oQqCf3f, stripped
./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux:      ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=DgaM_AOLBfgUAJezQeWk/__CIFMLAdKwS8HIQcqDL/YMIq-Z5P3BMqc6AiBxBS/0kaOLKA7MG-ap7o6Lm_W, stripped
./tailscale/tailscale_merged_s390x_Linux:                    ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=g_GyaDOdMpdUSQOZ-URt/2vwsEqHNd_Nhz6OU82zm/oPr_VLvTld-lyMSG-lb2/4aBnvEamlrVTGr9EsGin, stripped
./tailscale/tailscale_mips64_Linux:                          ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=XDAij88XJz-VVBNWFhde/K7CQCEqUA6dj0sad7Rf-/NQDjx8rCk3eAFOZPnHn7/Csx3IFx0RHaTEVKU_sGU, with debug_info, not stripped
./tailscale/tailscale_mips64le_Linux:                        ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=iHR8B2urP9T87NGsZrZQ/JkDsaWpMhybLtK8GfnKi/uqXTRewZkWpGqkJ5sJxH/jF2mAucI7FmNTb-fO6gZ, with debug_info, not stripped
./tailscale/tailscale_mips_Linux:                            ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=rYwmoNkRlRpysVLU_xbM/nLOhn6QYeEXFLYOUAa8Y/EPxaE7cdfaFZekAZjyhZ/vjZQG9pN-5tNh2TG_FYs, with debug_info, not stripped
./tailscale/tailscale_mipsle_Linux:                          ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=IKFcBvVONUbAcPcl8Tl9/sVanX0cpi0AkdnlEKTIw/y_AiGAyKR686lTDEbyAt/ui1l8J7sc7hXtLZQM8Jt, with debug_info, not stripped
./tailscale/tailscale_powerpc64_ppc64_Linux:                 ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=QovjO3v8tm3BBYnxZyld/bkvOqdL9MbpQt-eetSRz/QL_pMGwOCLs85sxQ1W06/zC4t-5febQTYWpmxPiA5, stripped
./tailscale/tailscale_powerpc64le_ppc64le_Linux:             ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=XOhykfl4NWxZ_6YjBdjS/8N8iX6I97otKzOqjK7HH/lS1ZxM5qGTHK6gM08MxX/pYgpr_ctZG05zLNvo_rX, stripped
./tailscale/tailscale_riscv64_Linux:                         ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=p9NLx94t9MTuaqCy5sOc/sI_-hV4_3Qrf_muWpJnw/Qje3AgqDPgy-WOZ6d943/UEhTkpYGZ5kDOw9FVOLF, with debug_info, not stripped
./tailscale/tailscale_s390x_Linux:                           ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=Gansmz4r64ajXBkz020T/75qbOfpo0ODosHUcCqCJ/zt3JiAKeZWSGOIzGEPTu/LKY0L5MXivn8sozhwB0K, stripped
./tailscale/tailscaled_aarch64_arm64_Linux:                  ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, Go BuildID=nOm764SqQu89Dfpxtn9g/DJ5QG8sekMlQ6DuT9SzG/YdVgCB8_tfaEFb0kf5Qk/_MvEEqofD2w6NUfyHzbd, with debug_info, not stripped
./tailscale/tailscaled_amd_geode_Linux:                      ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=VTVrpqn8gXkEpbf_CEVo/O4hhdF7-NCaWRaiA15Ij/rUHfnBDp81W_4gG_593t/OdTEAhy-8w0y7FgXRiXy, stripped
./tailscale/tailscaled_amd_x86_64_Linux:                     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, Go BuildID=V9PY5_6DpLHBtVP8VkYa/B5-8jXbqMckjHaPi5kdN/WT52ODodq9NQo_8L9pkN/AF16aBwpwD5XJuKlt6m7, stripped
./tailscale/tailscaled_arm_abi_Linux:                        ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, Go BuildID=o27rd9tW2kFwKaDG4F0q/EDMRqYohLfqs-tR_zrBR/tcjS_5DBEcyE6nF7hjUd/qbCjheJ20zIY3I43wPI7, with debug_info, not stripped
./tailscale/tailscaled_i386_Linux:                           ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, Go BuildID=r1b3Yb2BHhaiV8E9zRns/-xxsW-udAM9ZtXL2_W5q/wusodXbexe3QpYniGGf9/fOB_bcTjVgfByI44g_QR, stripped
./tailscale/tailscaled_mips64_Linux:                         ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=tKKU86N5P99XebSvV3Ap/_Yp-pUpmVzju6ywp8WDZ/D_pwMDERnlbZ736MB7mK/Wthc-L1wphxljbMuBXit, with debug_info, not stripped
./tailscale/tailscaled_mips64le_Linux:                       ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, Go BuildID=XgTibOfh4nS4pqBe0_Fu/iiQY699oiTyMMZyKe3zB/HGrPzqj9R9HsNIfNfrIr/ybocIi8RcKq6fRLxrfiZ, with debug_info, not stripped
./tailscale/tailscaled_mips_Linux:                           ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=1kR9SNN7Tnhf8xopMqBc/y32wCgKbKKlxvA6pqCjJ/nHRcWx9IMUqwnuVPbgpJ/xy1Xnkq01zopLigW9iyy, with debug_info, not stripped
./tailscale/tailscaled_mipsle_Linux:                         ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, Go BuildID=JU5ma2CMbLuOS8GjinCt/cpLEDlR5GLrCZYhL0_LD/UBVQlhyljM8a_pULDNhp/nbsMB2zRYTIfmopfwQsJ, with debug_info, not stripped
./tailscale/tailscaled_powerpc64_ppc64_Linux:                ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, Power ELF V1 ABI, version 1 (SYSV), statically linked, Go BuildID=v9faVn1V3E1f0LlgO_Q0/1kD8akAVoqbs_AodD7Q9/pQ94SKGF08ASqmWih8zg/XN_fnNW1TMcYcS0mCgan, stripped
./tailscale/tailscaled_powerpc64le_ppc64le_Linux:            ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, OpenPOWER ELF V2 ABI, version 1 (SYSV), statically linked, Go BuildID=7al7lKFeM7rUWGIxy4_Q/7Z1N_jf2_eJr_2ej62QA/J3vUEzE8KPhV7nvZ0dmd/pdkRa44aqxb7LGD94aXa, stripped
./tailscale/tailscaled_riscv64_Linux:                        ELF 64-bit LSB executable, UCB RISC-V, double-float ABI, version 1 (SYSV), statically linked, Go BuildID=uLRW_pnX9RV7i9f5CasY/l89QqzTaM4n1xKG-f5Yo/kmanye6rfhcQR-Sej3pN/1gm_5ZI1dWSsmDEgvQhi, with debug_info, not stripped
./tailscale/tailscaled_s390x_Linux:                          ELF 64-bit MSB executable, IBM S/390, version 1 (SYSV), statically linked, Go BuildID=gt5lnrKgnlCi-YBZtDVX/g42M8-ODnXhTDtgzsOvS/A_1JfoiOVyKec0PllbK0/2N0rdXwbFo0eGyNJCw7F, stripped

--> SHA256SUM
105b28eb44519284003944bea4a6cf7b8e817622ad6d9353e6629dbd09eff8a2  ./tailscale/tailscale_aarch64_arm64_Linux
89c9ff86472a702638a033ba70f9f1056083ecaae391fd6b33e1f835fbb7118d  ./tailscale/tailscale_amd_geode_Linux
8fffe7519c5206563e4c86a19b1471c36f6074355c42de3f397827e41cce9fd8  ./tailscale/tailscale_amd_x86_64_Linux
7b9f7d61634dc63682c96c4f47a1fa2f86c688d278fe2379014548a828176b30  ./tailscale/tailscale_arm_abi_Linux
0304e672c907759a42d9218cf72bc88609328a4e4c49922aac96c7f8bf643cd4  ./tailscale/tailscale_i386_Linux
50a47ab845ca07e08b92fe751ca09f243c6a4569becc866ac9edfe12373166cf  ./tailscale/tailscale_merged_aarch64_arm64_Linux
41dc41579ea184bd63e633bc2b6b371c94c8726379bfbd7f407f471e9068c747  ./tailscale/tailscale_merged_amd_x86_64_Linux
abd98335020d061263bff0e96e1513c972d91327bab4618a09ab833a28f534e2  ./tailscale/tailscale_merged_arm_Linux
08573b3da032bb83905558ec68e3d345c47d9d1a3687d21594f36c84eeccd6b1  ./tailscale/tailscale_merged_i386_Linux
bc14734013c2a6d7d01ee0ad41abb6c9da8e22b517b2091e752cb33052c0df49  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
cd038132115594068a8bac192256efb7d33f65c066b15d00a7e96eae2683f20b  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
e539461439a823c1db43db9197967e6fdecdddaebcc331917af54d16c6285c9f  ./tailscale/tailscale_merged_s390x_Linux
ec87eefc2772f5023fd0ec12cd7e3392fe7cedc162638b3650cfc475f9442b11  ./tailscale/tailscale_mips64_Linux
e71cc1e2d95d4ff404392334101bc690ba23d7dbba7db285029d8373eed72109  ./tailscale/tailscale_mips64le_Linux
5df3b63c5cedcd5954b7cf23293ad971c1d1e6cf1047c4ce4e41b4fefd9961df  ./tailscale/tailscale_mips_Linux
c1c49f027f00496bc05409141e367bae11fc7845a202852d749fb209d8749d67  ./tailscale/tailscale_mipsle_Linux
5320a345eaa8099ac8527735d04c2dd8651da8b9b5615724a18e7ee3ee09ec2f  ./tailscale/tailscale_powerpc64_ppc64_Linux
fe67020f59b9b25ba168e6832cd837fff78665d490008af0cc033d7c4e1b3c6d  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
d9e1ef505da7fe8b6b4e51ce9ff4055d9a33b8a47112c5b72a209c6144cf04d5  ./tailscale/tailscale_riscv64_Linux
ff2ea9cd67db85c91ef9087c91b4f1a7ee9ea1703b90b47cc116310280fee7ca  ./tailscale/tailscale_s390x_Linux
e77dcc1711237d797739eaef5a579516ad90e859d97780c4ccc5d572098c2655  ./tailscale/tailscaled_aarch64_arm64_Linux
66822bdbb8e2eccda6e2bc0dc31844b58901bf37d15c36ece1e37e0c1b4f187c  ./tailscale/tailscaled_amd_geode_Linux
1a1584c8387cd604b9844153205ddf0f335f687f7d182feb582eb52d53668b2f  ./tailscale/tailscaled_amd_x86_64_Linux
212e4ca77ce3f692a4da75d23f194d71637bece7ea8e63a13e137df7aba39e0b  ./tailscale/tailscaled_arm_abi_Linux
3671d11dfe66e174261b67975f8eb1eca8eac7cf98df0bdeef90fc77be1288fa  ./tailscale/tailscaled_i386_Linux
84a6c84c2d898c9a14a3f625aaef0d3ec22dd5f9bc70d5598bb304442415a997  ./tailscale/tailscaled_mips64_Linux
b9715d050181d4e16b35aa119f16150cb617ffb56b4b3410213329f44c39e58b  ./tailscale/tailscaled_mips64le_Linux
87fc87b27a5a8c068ccc8e0f8360f2900c208c5fbf172d432cfcbe11d607e391  ./tailscale/tailscaled_mips_Linux
d2ddbab3ddf8bc39b349c9b668f1108f889550c44575557917ee65f03528b1f2  ./tailscale/tailscaled_mipsle_Linux
d3898ad0ec5c924b5739ac5ff474aa9729f0e1b2aabeee5a201b060ecd974e1f  ./tailscale/tailscaled_powerpc64_ppc64_Linux
3948c5a6d1de21dd6c86a1039b9a1d6002ac3673f803974ede9f91a363c7fd0d  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
097fd476a7b27e7efd2b42e03db34111bcfe2758ffa4365acf6a3ce5adb11069  ./tailscale/tailscaled_riscv64_Linux
4f9058751c527b3317636e16d00bca254b88b4d104935224cf6d2e39d2024989  ./tailscale/tailscaled_s390x_Linux
```


---

- #### Sizes

```console
17M  ./tailscale/tailscale_aarch64_arm64_Linux
12M  ./tailscale/tailscale_amd_geode_Linux
12M  ./tailscale/tailscale_amd_x86_64_Linux
17M  ./tailscale/tailscale_arm_abi_Linux
12M  ./tailscale/tailscale_i386_Linux
21M  ./tailscale/tailscale_merged_aarch64_arm64_Linux
22M  ./tailscale/tailscale_merged_amd_x86_64_Linux
21M  ./tailscale/tailscale_merged_arm_Linux
21M  ./tailscale/tailscale_merged_i386_Linux
22M  ./tailscale/tailscale_merged_powerpc64_ppc64_Linux
22M  ./tailscale/tailscale_merged_powerpc64le_ppc64le_Linux
24M  ./tailscale/tailscale_merged_s390x_Linux
19M  ./tailscale/tailscale_mips64_Linux
19M  ./tailscale/tailscale_mips64le_Linux
18M  ./tailscale/tailscale_mips_Linux
18M  ./tailscale/tailscale_mipsle_Linux
12M  ./tailscale/tailscale_powerpc64_ppc64_Linux
12M  ./tailscale/tailscale_powerpc64le_ppc64le_Linux
18M  ./tailscale/tailscale_riscv64_Linux
13M  ./tailscale/tailscale_s390x_Linux
27M  ./tailscale/tailscaled_aarch64_arm64_Linux
18M  ./tailscale/tailscaled_amd_geode_Linux
19M  ./tailscale/tailscaled_amd_x86_64_Linux
26M  ./tailscale/tailscaled_arm_abi_Linux
18M  ./tailscale/tailscaled_i386_Linux
30M  ./tailscale/tailscaled_mips64_Linux
29M  ./tailscale/tailscaled_mips64le_Linux
29M  ./tailscale/tailscaled_mips_Linux
29M  ./tailscale/tailscaled_mipsle_Linux
19M  ./tailscale/tailscaled_powerpc64_ppc64_Linux
19M  ./tailscale/tailscaled_powerpc64le_ppc64le_Linux
28M  ./tailscale/tailscaled_riscv64_Linux
20M  ./tailscale/tailscaled_s390x_Linux
```

---

- #### Version
```console
$ ./tailscale/tailscale_amd_x86_64_Linux --version
1.46.1
  tailscale commit: e42e60103b1ea58d9d06d5a0c77500e44c44f202
  other commit: 4cea91365e4754902270ab4a751a897f960b9a18
  go version: go1.21rc3

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
1.46.1
  tailscale commit: e42e60103b1ea58d9d06d5a0c77500e44c44f202
  other commit: 4cea91365e4754902270ab4a751a897f960b9a18
  go version: go1.21rc3

Usage of ./tailscale/tailscaled_amd_x86_64_Linux:
  -bird-socket string
    	path of the bird unix socket
  -cleanup
    	clean up system state and exit
  -debug string
    	listen address ([ip]:port) of optional debug server
  -no-logs-no-support
    	disable log uploads; this also disables any technical support
  -outbound-http-proxy-listen string
    	optional [ip]:port to run an outbound HTTP proxy (e.g. "localhost:8080")
  -port value
    	UDP port to listen on for WireGuard and peer-to-peer traffic; 0 means automatically select (default 0)
  -socket string
    	path of the service unix socket (default "/var/run/tailscale/tailscaled.sock")
  -socks5-server string
    	optional [ip]:port to run a SOCK5 server (e.g. "localhost:1080")
  -state string
    	absolute path of state file; use 'kube:<secret-name>' to use Kubernetes secrets or 'arn:aws:ssm:...' to store in AWS SSM; use 'mem:' to not store state and register as an ephemeral node. If empty and --statedir is provided, the default is <statedir>/tailscaled.state. Default: /home/runner/.local/share/tailscale/tailscaled.state
  -statedir string
    	path to directory for storage of config state, TLS certs, temporary incoming Taildrop files, etc. If empty, it's derived from --state when possible.
  -tun string
    	tunnel interface name; use "userspace-networking" (beta) to not use TUN (default "tailscale0")
  -verbose int
    	log verbosity level; 0 is default, 1 or higher are increasingly verbose
  -version
    	print version information and exit

```

---

