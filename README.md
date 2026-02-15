# 🛡️ Auditd Rules for Kali Linux

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Linux-green.svg)]
[![Auditd](https://img.shields.io/badge/Auditd-Active-orange.svg)]

---

## 🔹 Overview

This project contains **comprehensive Auditd rules for Kali Linux** to monitor and secure critical system activities, including:

- Kernel module loading/unloading
- Modification of sensitive files: `/etc/passwd`, `/etc/shadow`
- Changes in systemd service files
- Network-related system calls
- Execution of programs in critical directories (`/tmp`, `/home`)

The rules are modular and organized for easy maintenance and deployment.

---

## 📁 Project Structure

```text
auditd-linux-kali/
├── README.md          # Project description
├── LICENSE            # MIT License
├── rules/             # Auditd rules by category
│   ├── kernel.rules
│   ├── passwd.rules
│   ├── shadow.rules
│   ├── systemd.rules
│   ├── network.rules
│   └── execution.rules
├── scripts/           # Helper scripts
│   └── install_rules.sh
└── .gitignore         # Files to exclude from git
