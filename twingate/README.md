
---
- #### Download [Twingate](https://github.com/schollz/twingate#install)
> - **Sources**
> > ```bash
> > --> Linux:
> >   - All binaries are downloaded using official apt sources inside containers
> >     - 'https://binaries.twingate.com/client/linux/install.sh' !# Client
> >     - 'https://binaries.twingate.com/connector/setup.sh'      !# Connector 
> >   - They are then extracted and optionally made static using 'StaticX' !# https://github.com/JonathonReinhart/staticx
> > 
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

!# Linux
--> aarch64 || arm64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_client_aarch64_arm64_dynamic_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_connector_aarch64_arm64_dynamic_Linux"
--> Amd x86_64 || x86_64 [64-bit] (SYSV)
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_client_amd_x86_64_dynamic_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_client_amd_x86_64_staticx_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_connector_amd_x86_64_dynamic_Linux"
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_connector_amd_x86_64_staticx_Linux"
--> ARM_abi|| ARMv4 || ARMv5 || ARMv7 (?) [32-bit]
-->  curl -qfSLO "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/twingate/twingate_connector_arm32v7_dynamic_Linux"

```
---
- #### Install Twingate
```bash
!# Recommended way to install Twingate is:

!# Linux
--> Client  !# Requires ROOT
 curl -qfsSLO "https://binaries.twingate.com/client/linux/install.sh" && sudo bash "./install.sh"
--> Connector !# Requires ROOT
 curl -qfsSLO "https://binaries.twingate.com/connector/setup.sh" && sudo bash "./setup.sh"

!# Windows
--> Client
  https://api.twingate.com/download/windows
--> Connector
  !# This is just a linux binary being run and passed through multipass (https://multipass.run/install)
  https://www.twingate.com/docs/deploy-connector-on-windows-with-chocolatey

!# Copy downloaded twingate binaries to /usr/bin || /usr/local/bin
!# For $HOME/bin
 mkdir -p "$HOME/bin" && export PATH="$HOME/bin:$PATH"

!# Move Downloaded twingate binaries to that DIR
 mv "$Path_To_twingate_Binary" "/usr/bin/twingate"
 
!# Give Writeable Perms
 chmod +xwr /usr/bin/twingate*
```

---
```console
$ file ./twingate/twingate_client_aarch64_arm64_dynamic_Linux ./twingate/twingate_client_amd_x86_64_dynamic_Linux ./twingate/twingate_client_amd_x86_64_staticx_Linux ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux ./twingate/twingate_connector_amd_x86_64_dynamic_Linux ./twingate/twingate_connector_amd_x86_64_staticx_Linux ./twingate/twingate_connector_arm32v7_dynamic_Linux ./twingate/twingate_connector_version.txt ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux ./twingate/twingate_notifier_amd_x86_64_staticx_Linux ./twingate/twingate_version.txt
$ grep -v .txt
./twingate/twingate_client_aarch64_arm64_dynamic_Linux:       ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=57437e857159e560c36e85b5d4d39bda82f47efc, stripped
./twingate/twingate_client_amd_x86_64_dynamic_Linux:          ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=89d35e6dcc013182189dd3f52c4d7503aa8be398, stripped
./twingate/twingate_client_amd_x86_64_staticx_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_aarch64_arm64_dynamic_Linux:    ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=1aa0f104868c49b48a227478a740d98a8d39714a, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connector_amd_x86_64_dynamic_Linux:       ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=3078b3775be15f02cc84d5c3ed16294919e57c6b, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connector_amd_x86_64_staticx_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_arm32v7_dynamic_Linux:          ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=53c609aabf2adc57dbfa20d097d367bba0ef3972, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=2f54e181c4d0e9a1f1a881f795b926a38fe52f60, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=61a7b2cb73ccf16280164870b0657b4382cd4aab, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux:    ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connectorctl_arm32v7_dynamic_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=05a86ec598166e9c0d39f36e08008afbde0f2d37, for GNU/Linux 3.2.0, stripped
./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux:     ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=52f8cfa718ae3b3c645272cee4ee4ec99504a1eb, stripped
./twingate/twingate_notifier_amd_x86_64_dynamic_Linux:        ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=c7e0166d016fc14d5c661de6754ce02dc1c8d819, stripped
./twingate/twingate_notifier_amd_x86_64_staticx_Linux:        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
499f102e450326756164a9a76c505aee30355598e8ccb57aa99e3966fcc36ed0  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
a458e81cd9c470a03db71c39f4ab0b3eb5799eaab6757e060198b8e9c7046dba  ./twingate/twingate_client_amd_x86_64_dynamic_Linux
556e55a509bf855c835f6d478c632acca3e292dfe180781e3966eb32d4810824  ./twingate/twingate_client_amd_x86_64_staticx_Linux
00e685e2a56e59518aab37cdff6b5a0ec83f29786abc23c3214bc66aa6909f7f  ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
2578913d5d4c8294ae3a73147f86a6aad817de55dd4053e197f60db46e68495b  ./twingate/twingate_connector_amd_x86_64_dynamic_Linux
382b78eacc81577095c26a937866a2aceebf05e1e7b65dd238d7028a4ecb3b00  ./twingate/twingate_connector_amd_x86_64_staticx_Linux
b281825a6ec49477f5981366e4d362b874b410b8f5737e8696178f2f43d7408d  ./twingate/twingate_connector_arm32v7_dynamic_Linux
feccb34beef3f952a5b7987c544bff96e25c7b3ec61a1da1c6f662df968e962b  ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
e7b03e9c56f2218e1e9485581f8adbce80486b62c0d799bb64c12c1864021685  ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux
594287b9f586e5a52fe2df0c7e6a9023bd2ee54e0d26ceba479f1a1fafd86d82  ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux
e60b554e1ed91584625a1274294468db0c4c75c61f34b4a15c2337b5d7ea6645  ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux
ef4aa42b9a7b0baa77bd9b06f89fa88d280c8025d802a4600a6fc06076d52c0f  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
235797cdaeecc8d5377412eab126f437ec4559077e1d56a9a995f73067e29708  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
65e188780c1279efe5f1f961b7e2553d3b5fb1ebe78e1a2ba117e2b7ebb25476  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux
```


---

- #### Versions
```console
$ ./twingate/twingate_client_amd_x86_64_dynamic_Linux --version
Twingate 2024.63.115357 | 0.156.1

Twingate 2024.63.115357 | 0.156.1
Copyright (C) 2024 Twingate

Twingate allows you to connect to private, remote resources as if they were
available locally. Only network traffic intended for your private resources
is routed via Twingate. For more detailed information: https://docs.twingate.com

Usage: twingate_client_amd_x86_64_dynamic_Linux [OPTIONS] <COMMAND>

Commands:
  setup            First-time setup & configuration
  version          Show version information and exit
  start            Connect to your Twingate network
  service-start    Start Twingate daemon
  desktop-restart  Restart UI notifications
  desktop-start    Start UI notifications
  stop             Disconnect from your Twingate network
  service-stop     Stop Twingate daemon
  desktop-stop     Stop UI notifications
  status           Return the status of Twingate network
  resources        Display a list of authorized resources
  auth             Initiate the authentication process for a locked resource
  config           Configure Twingate
  report           Collect diagnostic information
  help             Print this message or the help of the given subcommand(s)

Options:
  -p, --print-commands                Print commands instead of running them
  -d, --disable-colors                Disable colors in command output
  -n, --disable-network-verification  Accept the network value without verification
  -h, --help                          Print help
  -V, --version                       Print version


$ ./twingate/twingate_connector_amd_x86_64_dynamic_Linux --version
1.64.0

The Twingate Connector runs inside your network and connects you to your Resources.

Usage: twingate_connector_amd_x86_64_dynamic_Linux [OPTIONS] <--controller-url <CONTROLLER_URL>|--controller-network <CONTROLLER_NETWORK>|--features>

Options:
  -u, --controller-url <CONTROLLER_URL>
          Twingate Network URL (ex: https://mynetwork.twingate.com) [env: TWINGATE_URL=]
  -n, --controller-network <CONTROLLER_NETWORK>
          Twingate Network name (ex: mynetwork) [env: TWINGATE_NETWORK=]
  -l, --log-level <LOG_LEVEL>
          Log level (-1 to 7: -1 for no logs, 0 - least verbose, 7 - most verbose) [env: TWINGATE_LOG_LEVEL=] [default: 3]
      --log-timestamp-format <LOG_TIMESTAMP_FORMAT>
          Log timestamp format (0 - None, 1 - Relative to start, 2 - Absolute) [env: TWINGATE_TIMESTAMP_FORMAT=] [default: 0]
      --log-analytics <LOG_ANALYTICS>
          Enable local analytics logs in STDOUT [env: TWINGATE_LOG_ANALYTICS=] [possible values: v1, v2]
      --dns <DNS>...
          Custom DNS servers (comma separated) [env: TWINGATE_DNS=]
      --systemd-watchdog
          Enable systemd watchdog
  -h, --help
          Print help
  -V, --version
          Print version
```

---

- #### Sizes

```console
4.4M  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
5.0M  ./twingate/twingate_client_amd_x86_64_dynamic_Linux
3.5M  ./twingate/twingate_client_amd_x86_64_staticx_Linux
17M   ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
18M   ./twingate/twingate_connector_amd_x86_64_dynamic_Linux
7.0M  ./twingate/twingate_connector_amd_x86_64_staticx_Linux
12M   ./twingate/twingate_connector_arm32v7_dynamic_Linux
12M   ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
12M   ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux
4.4M  ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux
6.8M  ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux
3.8M  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
4.4M  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
3.9M  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux

```

