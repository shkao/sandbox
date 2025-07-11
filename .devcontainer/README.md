# Dev Container Configuration

This directory contains the development container configuration for the sandbox project.

## Files

- `devcontainer.json` - Main dev container configuration
- `Dockerfile` - Container image definition
- `init-firewall.sh` - Network security initialization script

## Configuration Details

### Base Image

- Node.js 20 with Ubuntu base
- Non-root user (node) for security

### Pre-installed Tools

- Claude Code CLI
- Git, zsh, fzf
- GitHub CLI (gh)
- Network tools (iptables, ipset)
- Development utilities

### Security Features

- Network firewall with restricted outbound access
- Approved domains only (GitHub, npm, Anthropic API, etc.)
- Non-root user execution
- Secure mount configurations

### VS Code Integration

- ESLint, Prettier, GitLens extensions
- Configured workspace settings
- Terminal profiles (bash/zsh)

## Customization

To modify the dev container:

1. Edit `devcontainer.json` for VS Code settings and extensions
2. Update `Dockerfile` for additional tools or packages
3. Modify `init-firewall.sh` for network access changes

*Note: Based on the [official Claude Code devcontainer](https://github.com/anthropics/claude-code/tree/main/.devcontainer)*
