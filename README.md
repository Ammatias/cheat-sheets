# Cheat Sheets

A collection of practical scripts, deployment tools, installation guides, and administration notes for Linux, Docker, Proxmox VE, and self-hosted infrastructure.

This repository serves as a centralized knowledge base for common system administration tasks, homelab automation, and infrastructure deployment.

> :warning: Be aware, products can change over time. I do my best to keep up with the latest changes and releases, but please understand that this won’t always be the case.

## Features

* Docker installation scripts
* Proxmox VE automation
* LXC container management
* Linux administration notes
* Self-hosting utilities
* Ready-to-use deployment commands
* Infrastructure cheat sheets

## Repository Structure

```text
cheat-sheets/
├── docker/
├── linux/
├── networking/
├── proxmox/
├── tools/
│   ├── lxc/
│   └── ...
└── README.md
```

> The structure may evolve as new scripts and documentation are added.

## Quick Start

Clone the repository:

```bash
git clone https://github.com/Ammatias/cheat-sheets.git
cd cheat-sheets
```

Or download and execute individual scripts directly from GitHub.

---

## Featured Script

### Docker Installation for Debian 12 LXC on Proxmox VE

Installs:

* Docker Engine
* Docker Compose Plugin
* Docker Buildx
* Containerd

Run:

```bash
wget -O lxc.sh https://raw.githubusercontent.com/Ammatias/cheat-sheets/main/tools/lxc/lxc.sh && chmod +x lxc.sh && ./lxc.sh
```

#### Requirements

* Proxmox VE 9.x
* Debian 12 LXC Container
* Root privileges

Enable nesting before running Docker inside an LXC container:

```bash
pct set <CTID> -features nesting=1
pct restart <CTID>
```

---

## Philosophy

The goal of this repository is to provide:

* Simple and repeatable solutions
* Infrastructure automation
* Practical administration examples
* Minimal setup time
* Documentation that can be copied and used immediately

All scripts are designed to be transparent, readable, and easy to modify.

---

## Security Notice

Always review scripts before executing them in production environments.

While every effort is made to keep the scripts safe and reliable, you are responsible for validating them for your own infrastructure.

---

## Contributing

As this is my personal Homelab documentation, I don't accept any contributions. But feel free to fork this repository and use it for your own documentation.

Contributions, improvements, and suggestions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Open a Pull Request

---

## Other Resources

- [Homelab](https://github.com/ammatias/homelab) - My personal configuration files on Docker, Ansible, etc
- [Cheat-sheets](https://github.com/ammatias/cheat-sheets) - Command Reference for various tools and technologies
