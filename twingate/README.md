test

---
```console
$ file ./twingate/twingate_client_aarch64_arm64_dynamic_Linux ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux ./twingate/twingate_connector_version.txt ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux ./twingate/twingate_version.txt
./twingate/twingate_client_aarch64_arm64_dynamic_Linux:       ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=13e55a339a7baee77b0698f6a74349a761668bf2, stripped
./twingate/twingate_connector_aarch64_arm64_dynamic_Linux:    ELF 64-bit LSB pie executable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=ad1280e77179fa2200a1f64d9939df56009e1417, for GNU/Linux 3.2.0, stripped
./twingate/twingate_connector_version.txt:                    very short file (no magic)
./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=ef7a06b6955ac50b616de2ce9cdcd917380eee77, for GNU/Linux 3.2.0, stripped
./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux:     ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=889679f0ffaf5676c1675d4c9e5555283b4f89df, stripped
./twingate/twingate_version.txt:                              ASCII text

--> SHA256SUM
759e5d5359bb94f317c1ba3bb8774e916e22c84e19e294b6dec2884b6bc88fc6  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
2e3358804dab55b91ca3aed04c64ac3f023dfaa819e4205964f334bf2fb19110  ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b  ./twingate/twingate_connector_version.txt
173a05816b9f8dee51f45396fd4ecd0dc9b0c363c2c627e145b2de58396198cf  ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
1c831727a010482150660a2fc75a17017d8c43803ef730d662c91f93d339cbca  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
f5a49dc8658cecab5ba333a9914617f57186d1cac7806a98c9d393f210f0aad0  ./twingate/twingate_version.txt
```


---

- #### Versions
```console
Twingate 1.0.83+88917 | 0.146.0

Twingate 1.0.83+88917 | 0.146.0
Copyright (C) 2023 Twingate

Twingate allows you to connect to private, remote resources as if they were
available locally. Only network traffic intended for your private resources
is routed via Twingate. For more detailed information: https://docs.twingate.com

Usage: twingate_client_aarch64_arm64_dynamic_Linux [OPTIONS] <COMMAND>

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


1.56.0

The Twingate Connector runs inside your network and connects you to your Resources.

Usage: twingate_connector_aarch64_arm64_dynamic_Linux [OPTIONS] <--controller-url <CONTROLLER_URL>|--controller-network <CONTROLLER_NETWORK>|--features>

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
4.9M  ./twingate/twingate
17M   ./twingate/twingate-connector
351K  ./twingate/twingate-connectorctl
4.2M  ./twingate/twingate-notifier
4.9M  ./twingate/twingate_client_aarch64_arm64_dynamic_Linux
17M   ./twingate/twingate_connector_aarch64_arm64_dynamic_Linux
1     ./twingate/twingate_connector_version.txt
351K  ./twingate/twingate_connectorctl_aarch64_arm64_dynamic_Linux
4.2M  ./twingate/twingate_notifier_aarch64_arm64_dynamic_Linux
7     ./twingate/twingate_version.txt

```

