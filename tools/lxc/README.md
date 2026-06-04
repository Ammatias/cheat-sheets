# Proxmox LXC Docker Installer

A simple one-command installer for Docker and Docker Compose inside Debian 12 LXC containers running on Proxmox VE.

## Features

* Sets the system timezone (`Asia/Yekaterinburg`)
* Updates and upgrades the operating system
* Installs required dependencies
* Adds the official Docker repository
* Installs:

  * Docker Engine
  * Docker CLI
  * Containerd
  * Docker Buildx
  * Docker Compose Plugin
* Enables and starts the Docker service
* Verifies the installation
* Runs a `hello-world` test container

## Requirements

* Proxmox VE 9.x
* Debian 12 LXC Container
* Root privileges

Docker requires **nesting** to be enabled for LXC containers:

```bash
pct set <CTID> -features nesting=1
pct restart <CTID>
```

## Quick Start

Download and run the installer:

```bash
wget -O lxc.sh https://raw.githubusercontent.com/Ammatias/cheat-sheets/main/tools/lxc/lxc.sh && chmod +x lxc.sh && ./lxc.sh
```

## Verify Installation

Check Docker version:

```bash
docker --version
```

Check Docker Compose version:

```bash
docker compose version
```

Check Docker service status:

```bash
systemctl status docker
```

Run a test container:

```bash
docker run --rm hello-world
```

## Installed Components

| Component             | Description                            |
| --------------------- | -------------------------------------- |
| Docker CE             | Docker Engine                          |
| Docker CLI            | Docker Command Line Interface          |
| Containerd            | Container Runtime                      |
| Docker Buildx         | Extended Build Capabilities            |
| Docker Compose Plugin | Multi-container Application Management |

## Tested On

* Proxmox VE 9.x
* Debian 12 (Bookworm) LXC Containers

## License

MIT License

## Disclaimer

This script is intended for Debian 12 LXC containers running on Proxmox VE. Always review scripts before executing them in production environments.
