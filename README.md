# 🛠️ Automated Recon & System Health Suite

A lightweight, automated Bash script designed for Linux sysadmins and security enthusiasts. This tool automates basic system resource checks and performs multi-target network reachability scans with real-time colored output and automated logging.

---

## 🔥 Features

* 📊 **System Health Monitoring:** Displays timestamped RAM (`free -h`) and Disk space usage (`df -h`).
* 🌐 **Multi-Target Recon Scanner:** Automated ping testing across multiple IP addresses or domain names.
* 📝 **Automated Logging:** Saves all health metrics and scan outputs directly into `recon_report.txt` using `tee`.
* 🎨 **Clean CLI Interface:** Color-coded status alerts (Green for online/success, Red for offline/errors).

---

## 💻 Prerequisites

* **OS:** Linux or Windows Subsystem for Linux (WSL / WSL2 - Ubuntu / Kali Linux)
* **Shell:** Bash Shell (`/bin/bash`)
* **Utilities Required:** `ping`, `free`, `df`, `tee`

---

## 🚀 Quick Setup & Usage

### 1. Clone or Download
Create a new file named `recon_tool.sh` and paste the script code inside:
```bash
nano recon_tool.sh
