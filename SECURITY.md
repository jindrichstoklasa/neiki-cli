# Security Policy

## Supported Versions

| Version | Supported          |
|---------|--------------------|
| 1.0.x   | :white_check_mark: |

## Reporting a Vulnerability

If you discover a security vulnerability in neiki, please report it responsibly.

**Do not open a public issue.**

Instead, send an email to **jindrichstoklasa1@gmail.com** with:

- A description of the vulnerability
- Steps to reproduce the issue
- Any potential impact

You can expect an initial response within **48 hours**. We will work with you to understand and resolve the issue before any public disclosure.

## Scope

neiki is a local CLI tool that runs with the permissions of the executing user. Security concerns may include:

- Unintended command injection through user-supplied arguments
- Privilege escalation via sudo operations
- Unsafe handling of file paths or temporary files

## Best Practices

- Always review commands before running them with `sudo`
- Keep neiki updated to the latest version
- Do not run neiki as root unless the command explicitly requires it

## Acknowledgements

We appreciate the security research community and will credit reporters (with permission) in release notes.
