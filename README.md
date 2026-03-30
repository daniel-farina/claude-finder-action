# Claude Finder Action


<img width="508" height="198" alt="image" src="https://github.com/user-attachments/assets/3caf05aa-6be0-414d-86e2-54dfa78077ac" />


Add "Open with Claude" to the macOS Finder right-click menu. Opens a terminal window, `cd`s into the selected folder, and launches Claude Code CLI.

![Quick Actions menu](https://img.shields.io/badge/macOS-Quick_Actions-blue)

## What you get

Two Finder Quick Actions:

- **Open with Claude** - opens the folder in Claude Code
- **Open with Claude (Skip Permissions)** - opens with `--dangerously-skip-permissions` flag

## Install

```bash
git clone https://github.com/daniel-farina/claude-finder-action.git
cd claude-finder-action
chmod +x install.sh && ./install.sh
killall Finder
```

## Uninstall

```bash
./uninstall.sh
killall Finder
```

## Requirements

- macOS
- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed and available as `claude` in your PATH

## Terminal support

The actions auto-detect your terminal:
- **iTerm2** - used if `/Applications/iTerm.app` exists
- **Terminal.app** - used as fallback

## License

MIT
