
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
./twingate/twingate_client_aarch64_arm64_dynamic_Linux:       ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=b07f4f3c46ae04f0c1fc72e920ea95ebf63cd5e1, stripped
./twingate/twingate_client_amd_x86_64_dynamic_Linux:          ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=01e64d8a16ae90b5e2e3a81dd76e66dea6afa914, stripped
./twingate/twingate_client_amd_x86_64_staticx_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_aarch64_arm64_dynamic_Linux:    ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=92a03765eaeafc006bae743338336c856aeebc30, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connector_amd_x86_64_dynamic_Linux:       ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=6dfe339f40223952ee5ace2158b12395e52954db, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connector_amd_x86_64_staticx_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_arm32v7_dynamic_Linux:          ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=b28d84a60ab7ccb9fbf39168b1b569091ef8e44a, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=26dde8ea14505a8595ad19dceb09994166b2f4b6, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=37c5d359f4929d814614b8a2b7152a976508168e, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux:    ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connectorctl_arm32v7_dynamic_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=4a0d4a25aae2dd1a8b5a8b21532dee55effaa1b1, for GNU/Linux 3.2.0, stripped
./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux:     ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=1aadcb9b731414d8980eb5e268c61bce731855f9, stripped
./twingate/twingate_notifier_amd_x86_64_dynamic_Linux:        ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=3d472ca828bedbc212ee30ed9d9ecc066860d789, stripped
./twingate/twingate_notifier_amd_x86_64_staticx_Linux:        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
6567b5f085316e865063cdbd67b0fcb0665bb2b0bc40b358bacec25aa1cdcb63  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
9cf99b5c89c18253bc846539bf5bea9cabc8f17ffcdfa3732d3f83abaada655f  ./twingate/twingate_client_amd_x86_64_dynamic_Linux
c16fa990295bdaad4e3f8b7d74efe9a1c542d46b6da0695b604328aeb3ce2f82  ./twingate/twingate_client_amd_x86_64_staticx_Linux
65aaf84e15e3fe318a0258200384f8e34aeec5f16205a510c8eb80f03126fb13  ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
b9ef9b231eca237216286294943748bf83ca22fb0133bd0cb4b893bebd3359eb  ./twingate/twingate_connector_amd_x86_64_dynamic_Linux
11a822fdb875a1b6ed0e59b255381d90f3ea60effe0248610d02869f1ece7bdc  ./twingate/twingate_connector_amd_x86_64_staticx_Linux
6deeea3f28fbb30d30c47b1a36f52d7754537d00bf602509957d339487a589b9  ./twingate/twingate_connector_arm32v7_dynamic_Linux
2ede343e6fcd371c41fa6bf3ad2ee6ec074503711912f949742d320d88ef1d17  ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
101c115572b69464c279573328d71d4eb9f8e6cb5c805ca66cbf6164542a429d  ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux
a36e0b4b746d4ecde2a425bd2c80f3418f0d677dcba9403deefdce600c70a391  ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux
3abe024327e48a7adc45ebb2af79be120790130ee89a5ffa501ed261e2bf921b  ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux
38be3a7157a75aa67479703b25928f626e25c852cd412decd14701c74e1c89dd  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
3063089eca7298ca7bdf35324b53fa81d6b51ea95f7aa143c115be4100fcc2b3  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
1cfcb0837f2520cbb9a7b2c10dee5b58f552d4d35ee2d33d0966de0799f9b7e8  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux
```


---

- #### Versions
```console
$ ./twingate/twingate_client_amd_x86_64_dynamic_Linux --version
Twingate 2024.98.119300 | 0.157.1

Twingate 2024.98.119300 | 0.157.1
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
1.66.0

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
4.3M  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
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
4.3M  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
3.9M  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux

```

