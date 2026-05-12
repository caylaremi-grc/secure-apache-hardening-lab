# secure-apache-hardening-lab
Built and hardened an Apache web server using security headers, HTTP method restrictions, and IP-based access control to reduce attack surface and mitigate common web attacks such as XSS and clickjacking.

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
