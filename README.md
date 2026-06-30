# Cheat Sheets

A curated collection of Linux, Windows, Infrastructure, Networking, Database, and Proxmox administration notes, along with practical scripts and deployment tools.

This repository is designed as a quick-reference knowledge base for system administrators, DevOps engineers, homelab enthusiasts, and anyone working with self-hosted infrastructure.

> :warning: Be aware, products can change over time. I do my best to keep up with the latest changes and releases, but please understand that this won’t always be the case.

## Categories

### Infrastructure (`infra/`)

Infrastructure and database administration notes:

* MySQL
* PostgreSQL
* SQL
* SQLite
* Proxmox VE
* ZFS

### Linux (`linux/`)

Linux administration and troubleshooting:

* ARP
* Ethtool
* LSPCI
* User management

### Windows (`windows/`)

Windows Server and PowerShell references:

* Environment Variables
* PowerShell
* Windows Server

### Miscellaneous (`misc/`)

Useful reference materials:

* Color Codes
* DNS
* HTTP Status Codes
* SMTP Codes
* Twisted Pair Cabling

### Tools (`tools/`)

Ready-to-use scripts and utilities.

#### LXC Docker Installer

Automated Docker installation for Debian 12 LXC containers running on Proxmox VE.

```bash
wget -O lxc.sh https://raw.githubusercontent.com/Ammatias/cheat-sheets/main/tools/lxc/lxc.sh && chmod +x lxc.sh && ./lxc.sh
```

Features:

* Configure timezone
* Configure SSH
* Update operating system
* Install Docker Engine
* Install Docker Compose Plugin
* Install Docker Buildx
* Create network frontend/backend
* Install hawser agent for Dockhand
* Verify installation

## Repository Structure

```text
.
├── infra
│   ├── mysql.md
│   ├── postgresql.md
│   ├── proxmox.md
│   ├── sql.md
│   ├── sqlite.md
│   └── zfs.md
│
├── linux
│   ├── arp.md
│   ├── ethtool.md
│   ├── lspci.md
│   └── user.md
│
├── misc
│   ├── color-codes.md
│   ├── dns.md
│   ├── http-status-codes.md
│   ├── smtp-codes.md
│   └── twisted-pair-cables.md
│
├── tools
│   ├── docker.md
│   ├── git.md
│   └── lxc
│       ├── README.md
│       └── lxc.sh
│
└── windows
    ├── environment-vars.md
    ├── powershell.md
    └── windows-server.md
```

## Purpose

The goal of this repository is to provide:

* Quick access to frequently used commands
* Practical administration notes
* Infrastructure deployment references
* Ready-to-use scripts
* Self-hosting and homelab resources

## Contributing

As this is my personal Homelab documentation, I don't accept any contributions. But feel free to fork this repository and use it for your own documentation.

Contributions, corrections, and improvements are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Open a Pull Request

## Disclaimer

The information in this repository is provided as-is. Always verify commands and scripts before using them in production environments.

## License

MIT License

---

## Other Resources

- [Homelab](https://github.com/ammatias/homelab) - My personal configuration files on Docker, Ansible, etc
- [Cheat-sheets](https://github.com/ammatias/cheat-sheets) - Command Reference for various tools and technologies
