# Sandbox

A development sandbox with a secure, isolated dev container environment featuring comprehensive network restrictions and essential development tools.

## Features

- **Claude Code CLI** pre-installed and configured
- **Network Security** - firewall restricts outbound connections to approved domains only
- **Development Tools** - Node.js 20, Git, zsh, fzf, and more
- **VS Code Integration** - ESLint, Prettier, GitLens extensions included

## Quick Start

### Prerequisites

- Docker Desktop running
- VS Code with Dev Containers extension

### Using Dev Container

1. Open this folder in VS Code
2. Click "Reopen in Container" when prompted (or use Command Palette: "Dev Containers: Reopen in Container")
3. Wait for container build and firewall initialization
4. Claude Code will be ready to use

### Manual Docker Usage

Use the included Makefile for easy container management:

```bash
# Build the container
make build

# Enter the container shell
make shell

# Run Claude Code directly
make claude

# Clean up the container image
make clean
```

## Network Security

The firewall allows connections to:

- GitHub (api.github.com, github.com)
- npm registry (registry.npmjs.org)
- Anthropic API (api.anthropic.com)
- Sentry (sentry.io)
- Statsig (statsig.anthropic.com, statsig.com)
- Local network and localhost

All other outbound connections are blocked for security.

## License

MIT License - see [LICENSE](LICENSE) for details.
