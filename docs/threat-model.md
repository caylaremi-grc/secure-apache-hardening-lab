# Threat Model

This project secures an Apache web server against common web vulnerabilities.

## Threats Addressed

### 1. XSS (Cross-Site Scripting)
- Mitigated using Content-Security-Policy
- Blocks execution of unauthorized scripts

### 2. Clickjacking
- Mitigated using X-Frame-Options
- Prevents embedding in iframes

### 3. MIME Sniffing Attacks
- Mitigated using X-Content-Type-Options: nosniff

### 4. Unauthorized Access
- Mitigated using IP allowlisting

### 5. HTTP Method Abuse
- Mitigated using LimitExcept (GET, POST, HEAD only)

### 6. Server Fingerprinting
- Mitigated using ServerTokens Prod and ServerSignature Off
