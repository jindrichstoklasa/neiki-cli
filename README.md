<h1 align="center">Neiki CLI</h1>

<p align="center">
  <img src="logo.png" alt="neiki" width="400">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Linux-FFCC33?style=for-the-badge&logo=linux&logoColor=white" alt="Linux">
  <img src="https://img.shields.io/badge/Debian-CE0058?style=for-the-badge&logo=debian&logoColor=white" alt="Debian">
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ubuntu">
  <br>
  <img src="https://img.shields.io/badge/Language-Bash-2563EB?style=for-the-badge&logo=gnu-bash&logoColor=white&labelColor=000F15&logoWidth=20" alt="Bash">
  <img src="https://img.shields.io/badge/License-MIT-2563EB?style=for-the-badge&logo=open-source-initiative&logoColor=white&labelColor=000F15&logoWidth=20" alt="License">
  <img src="https://img.shields.io/badge/Version -1.0.1-2563EB?style=for-the-badge&logo=semantic-release&logoColor=white&labelColor=000F15&logoWidth=20" alt="Version">
</p>

<p align="center">
  <b>All-in-One Linux Productivity CLI Tool</b><br>
  <i>30+ commands for system management, networking, deployment, and more.</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Commands-30%2B-3b82f6?style=flat&labelColor=383C43" />
  <img src="https://img.shields.io/badge/Features-System%20Tools-8b5cf6?style=flat&labelColor=383C43" />
  <img src="https://img.shields.io/badge/Setup-Auto%20Install-22c55e?style=flat&labelColor=383C43" />
  <img src="https://img.shields.io/badge/Extras-Zero%20Config-f97316?style=flat&labelColor=383C43" />
</p>

---

## 📦 Installation

### Quick Install (recommended)

```bash
git clone https://github.com/jindrichstoklasa/neiki-cli.git
cd neiki-cli
chmod +x install.sh
sudo ./install.sh
```

### Manual Install

```bash
git clone https://github.com/jindrichstoklasa/neiki-cli.git
cd neiki-cli
chmod +x neiki
sudo cp neiki /usr/local/bin/neiki
```

### Uninstall

```bash
sudo rm /usr/local/bin/neiki
```

---

## 🚀 Usage

```bash
neiki <command> [arguments]
```

Run `neiki help` to see all available commands.

---

## 📋 Commands

### 🖥️ System

| Command | Description |
|---------|-------------|
| `neiki info` | Display full system information |
| `neiki status` | Quick system overview (CPU, RAM, disk with progress bars) |
| `neiki uptime` | How long the system has been running |
| `neiki users` | List logged-in users |
| `neiki disk` | Disk usage (color-coded) |
| `neiki mem` | Memory usage + top memory consumers |
| `neiki top` | Process overview (top CPU & memory consumers) |

### 📦 Package Management

| Command | Description |
|---------|-------------|
| `neiki update` | Full system update (`apt update` + `apt upgrade`) |
| `neiki clean` | System cleanup (apt cache, thumbnails, journals) |
| `neiki temp` | Clean temp files, cache, and trash |

### ⚙️ Services

| Command | Description |
|---------|-------------|
| `neiki services` | List all running services |
| `neiki start <service>` | Start a service |
| `neiki stop <service>` | Stop a service |
| `neiki restart <service>` | Restart a service |

### 🌐 Network

| Command | Description |
|---------|-------------|
| `neiki ip` | Show local & public IP addresses |
| `neiki ports` | List open ports |
| `neiki scan [target]` | Network scan (auto-detects subnet) |
| `neiki dns <domain>` | DNS lookup (A, MX, NS, TXT records) |
| `neiki whois <domain>` | WHOIS domain information |
| `neiki curl <url>` | Simple HTTP request (headers + body) |

### 🔥 Firewall

| Command | Description |
|---------|-------------|
| `neiki firewall` | Show firewall status (ufw) |
| `neiki open <port>` | Open a port |
| `neiki close <port>` | Close a port |

### 📄 Logs

| Command | Description |
|---------|-------------|
| `neiki logs [lines]` | Show system logs (default: 50 lines) |
| `neiki watch [file]` | Live log watcher (tail -f) |

### 📁 Files

| Command | Description |
|---------|-------------|
| `neiki search <pattern> [path]` | Search in files (grep wrapper) |
| `neiki extract <archive>` | Extract archives (tar.gz, zip, rar, 7z, etc.) |
| `neiki compress <output> <files>` | Compress files into an archive |

### 🔪 Processes

| Command | Description |
|---------|-------------|
| `neiki kill <name>` | Kill process by name (with confirmation) |

### 🚀 Deployment

| Command | Description |
|---------|-------------|
| `neiki deploy <src> <dest>` | Deploy files via rsync |

### ❓ Help

| Command | Description |
|---------|-------------|
| `neiki help` | Show help with all commands |
| `neiki version` | Show version |

---

## 🔧 Auto-Install

**neiki** automatically installs missing dependencies when needed. For example, if `nmap` is not installed and you run `neiki scan`, it will install it for you via `apt`.

Packages that may be auto-installed:
- `net-tools` — for port scanning
- `nmap` — for network scanning
- `ufw` — for firewall management
- `whois` — for domain lookups
- `dnsutils` — for DNS lookups
- `curl` — for HTTP requests
- `rsync` — for deployment
- `unzip`, `unrar`, `p7zip-full` — for archive extraction
- `zip` — for compression

---

## 💻 Compatibility

| Distribution | Version | Status |
|-------------|---------|--------|
| **Ubuntu** | 20.04+ | ✅ Fully supported |
| **Ubuntu** | 22.04+ | ✅ Fully supported |
| **Ubuntu** | 24.04+ | ✅ Fully supported |
| **Debian** | 11 (Bullseye) | ✅ Fully supported |
| **Debian** | 12 (Bookworm) | ✅ Fully supported |

---

## 📖 Examples

```bash
# Quick system status with visual bars
neiki status

# Full system update
sudo neiki update

# Check who's using the most memory
neiki mem

# Scan your local network
neiki scan

# Deploy a website
neiki deploy ./dist user@server:/var/www/html

# Find all TODO comments in your project
neiki search 'TODO' ./src

# Extract any archive format
neiki extract backup.tar.gz

# Open port 443 in firewall
sudo neiki open 443

# Watch logs in real-time
neiki watch /var/log/nginx/access.log

# Kill a runaway process
neiki kill node
```

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  Made with ❤️ for the Linux community
</p>
