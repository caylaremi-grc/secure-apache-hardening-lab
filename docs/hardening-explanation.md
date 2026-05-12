# Apache Hardening Explanation

This project implements defense-in-depth security at the web server layer.

## Why Apache Hardening Matters

Even secure applications can be attacked if the web server is misconfigured.

This configuration reduces attack surface by:

- Limiting HTTP methods
- Restricting network access
- Enforcing security headers
- Hiding server version information

## Security Layers

1. Network layer (IP allowlist)
2. Web server layer (Apache hardening)
3. Browser layer (CSP, XSS protection headers)

## Key Design Principle

"Assume the application may have vulnerabilities and restrict what an attacker can do even if they exist."
