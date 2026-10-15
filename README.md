# Homebrew Tap for VimCode

[VimCode](https://github.com/JDonaghy/vimcode) is a Vim-like code editor built in Rust with tree-sitter syntax highlighting, LSP support, and a built-in terminal.

## Install

```bash
brew tap JDonaghy/vimcode
brew install vimcode    # Native macOS GUI
brew install vcd        # TUI-only (no GUI dependencies)
```

## Binaries

| Formula | Binary | Description |
|---------|--------|-------------|
| `vimcode` | `vimcode` | Native macOS GUI editor (AppKit) |
| `vcd` | `vcd` | Terminal UI editor (no GUI dependencies) |

## Requirements

- **vimcode**: macOS only (native AppKit GUI, no additional dependencies)
- **vcd**: No additional dependencies
