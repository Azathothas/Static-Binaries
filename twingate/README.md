
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
$ grep -v .txt
$ file ./twingate/twingate_client_aarch64_arm64_dynamic_Linux ./twingate/twingate_client_amd_x86_64_dynamic_Linux ./twingate/twingate_client_amd_x86_64_staticx_Linux ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux ./twingate/twingate_connector_amd_x86_64_dynamic_Linux ./twingate/twingate_connector_amd_x86_64_staticx_Linux ./twingate/twingate_connector_arm32v7_dynamic_Linux ./twingate/twingate_connector_version.txt ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux ./twingate/twingate_notifier_amd_x86_64_staticx_Linux ./twingate/twingate_version.txt
./twingate/twingate_client_aarch64_arm64_dynamic_Linux:       ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=9cdfde2c3d7e07a488436a9a2c9ab2fdaceab42e, stripped
./twingate/twingate_client_amd_x86_64_dynamic_Linux:          ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=e9255c6298fef261072be8ccb9e77c6232b5c968, stripped
./twingate/twingate_client_amd_x86_64_staticx_Linux:          ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_aarch64_arm64_dynamic_Linux:    ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=6c8acdc287164b6d28b7fab177dc98002fe7343d, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connector_amd_x86_64_dynamic_Linux:       ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=89185892e9d1b3f80eb1bfda115da637702deeae, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connector_amd_x86_64_staticx_Linux:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connector_arm32v7_dynamic_Linux:          ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=d34fe7f3bf1aa962649484b7c64e853f66d83761, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux: ELF 64-bit LSB pie executable, ARM aarch64, version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=33c2eb8bfaca6d9091087b58ef23e3fd600ed506, for GNU/Linux 3.7.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=ce9d78be58588b268ae32fd771d8a52029cb1a95, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux:    ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped
./twingate/twingate_connectorctl_arm32v7_dynamic_Linux:       ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (GNU/Linux), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=6bb1138ec1df2ff76062ea51c0943f7d52d8dfe3, for GNU/Linux 3.2.0, stripped
./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux:     ELF 64-bit LSB pie executable, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, for GNU/Linux 3.7.0, BuildID[sha1]=673bc5771b0e923b985000e52b907ab1fe6a777c, stripped
./twingate/twingate_notifier_amd_x86_64_dynamic_Linux:        ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=9e4f39c82f2fa2d81d1b5b616e2b943f7a72f191, stripped
./twingate/twingate_notifier_amd_x86_64_staticx_Linux:        ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, stripped

--> SHA256SUM
bd32f0ed99bac3840f8ddd21784be29e586598c52b0578372c04a428408cefa4  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
d7bfe5e9dfa24b998c89c2727aa4b3403ab609a1bc5f888954fdf8f0f1a88262  ./twingate/twingate_client_amd_x86_64_dynamic_Linux
bf32d4a82ddadbd63016d87ff90197dc436d7c8255dcb43f5a3028fa761f4d42  ./twingate/twingate_client_amd_x86_64_staticx_Linux
fe191c26f0fd21e6f35d29c6d3def780fe84e8a8b075aa438552cabb17f5477c  ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
cd276b84b11ad6baf8dfaadf339f488611979a028ce1e4dd033709fffecc68cf  ./twingate/twingate_connector_amd_x86_64_dynamic_Linux
89460919c7d94660cab6d66b12a48a023c398cb2e5a00c526c4931aed9e0514a  ./twingate/twingate_connector_amd_x86_64_staticx_Linux
c11c039fcfb900e9b2ae2fc7495345ab9b3cf4f9c41d2f23888de4661283acc5  ./twingate/twingate_connector_arm32v7_dynamic_Linux
e4b63207d4b1c9c98cbb9b08b05bab376ed6ac841c6d5cc50b1b84bbeaa5767f  ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
418cc57b4e6c17b3ae1b316e1163a9320606f75310f2ebeb3970bafc6332e0d5  ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux
f801add8f9fe0f7ce617d6a0d4e19e5009af9fa86ee173f93744c65c2bf3b303  ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux
a11a2ffc40c3da9ca62c5cea8854e57e9ddc5f9f25b1ffb579f4bb4df813be74  ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux
1592a95e3dfdbb7defe819f9c38ea0d51a2341509bb9d61d52bcb4461086630c  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
e63cb576f602feb1ee5a12063b2688c34c71bd32cb3367288954e339e3279dac  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
b2fd025c95032104059add9e65f61f8c443472f02a75ac19867c253a3c046eae  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux
```


---

- #### Versions
```console
$ ./twingate/twingate_client_amd_x86_64_dynamic_Linux --version
Twingate 2023.208.90980 | 0.146.0

Twingate 2023.208.90980 | 0.146.0
Copyright (C) 2023 Twingate

Twingate allows you to connect to private, remote resources as if they were
available locally. Only network traffic intended for your private resources
is routed via Twingate. For more detailed information: https://docs.twingate.com

Usage: twingate_client_amd_x86_64_dynamic_Linux [OPTIONS] <COMMAND>

Commands:
  setup            First-time setup & configuration
  version          Show version information and exit
  start            Connect to your Twingate network
  service-start    Start Twingate daemon
  desktop-start    Start UI notifications
  stop             Disconnect from your Twingate network
  service-stop     Stop Twingate daemon
  desktop-stop     Stop UI notifications
  desktop-restart  Restart UI notifications
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
1.58.0

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
4.9M  ./twingate/twingate_client_amd_x86_64_dynamic_Linux
2.9M  ./twingate/twingate_client_amd_x86_64_staticx_Linux
16M   ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
18M   ./twingate/twingate_connector_amd_x86_64_dynamic_Linux
6.9M  ./twingate/twingate_connector_amd_x86_64_staticx_Linux
11M   ./twingate/twingate_connector_arm32v7_dynamic_Linux
11M   ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
12M   ./twingate/twingate_connectorctl_amd_x86_64_dynamic_Linux
4.3M  ./twingate/twingate_connectorctl_amd_x86_64_staticx_Linux
6.7M  ./twingate/twingate_connectorctl_arm32v7_dynamic_Linux
3.7M  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
4.3M  ./twingate/twingate_notifier_amd_x86_64_dynamic_Linux
3.9M  ./twingate/twingate_notifier_amd_x86_64_staticx_Linux

```

