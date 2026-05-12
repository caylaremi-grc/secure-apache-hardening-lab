# Secure Apache Web Server Hardening Lab

## Overview

This project demonstrates a hardened Apache web server configuration implementing defense-in-depth security controls to mitigate common web application attacks.

---

## Features

- Security headers (CSP, HSTS, X-Frame-Options, nosniff)
- HTTP method restriction (GET, POST, HEAD only)
- IP allowlist and deny rules
- Server fingerprint hiding
- Directory listing disabled
- TRACE method disabled

---

## Threats Mitigated

- Cross-Site Scripting (XSS)
- Clickjacking
- MIME sniffing attacks
- Unauthorized network access
- HTTP method abuse
- Server information leakage

---

## How to Use

1. Copy configuration to Apache:
sudo cp apache/app.conf /etc/apache2/sites-available/app.conf

2. Enable required modules:
```bash
a2enmod headers
systemctl restart apache2

3. Restart Apache:
```bash
systemctl restart apache2

4. Run security test
./tests/security-tests.sh
