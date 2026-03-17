# Homebrew Tap for VimCode

[VimCode](https://github.com/JDonaghy/vimcode) is a Vim-like code editor built in Rust with GTK4, tree-sitter syntax highlighting, LSP support, and a built-in terminal.

## Install

```bash
brew tap JDonaghy/vimcode
brew install vimcode    # GTK4 GUI + TUI (installs both `vimcode` and `vcd`)
brew install vcd        # TUI-only (no GTK4 dependency)
```

## Binaries

| Binary | Description |
|--------|-------------|
| `vimcode` | Full GUI editor (GTK4) |
| `vcd` | Terminal UI editor (no GUI dependencies) |

## Requirements

- **vimcode**: Requires GTK4 (`brew install gtk4`, installed automatically as a dependency)
- **vcd**: No additional dependencies beyond Rust (build-time only)

Both formulas build from source using Cargo.
