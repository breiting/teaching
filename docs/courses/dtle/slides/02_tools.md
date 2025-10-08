---
title: Unit 2
sub_title: Linux Essentials
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


AGENDA
---

- Installing programs
- Streams, Pipes & Redirects
- Essential tools: `grep`, `find`, `sed`
- `tmux` basics
- `neovim` introduction
- Mini exercises
- New kids on the block: `rg`, `fd`

Installing programs
---

- Requires **super-user** permissions
- Either use `su` or `sudo`
- Password for **super-user**: `root66`

```bash
sudo su                ... get super-user shell (student password)
apt-get update         ... updates the package list
apt-get install <name> ... installs a package
```

Streams in Linux
---

> Everything is a file/stream under Linux.

- stdin (0) → input (keyboard)
- stdout (1) → normal output (terminal)
- stderr (2) → error output (terminal)
- Redirection:

```bash
command > file   # stdout to file (overwrite)
command >> file  # append stdout to file
command < file   # use file as input
```

Default: `ls` prints the directory listing to `stdout` by default!

Pipes
---

Streams can be forwarded to other programs. `stdout` gets `stdin` for the other

- Combine commands using `|`

```bash
ls -l | grep ".cpp"
ps aux | grep firefox
```

Mini-Exercises
---

```bash
cat                ... without arguments (what happens?)
cat > test.txt     ... use Control-D
ls /notfound > out.txt 2> err.txt
```

Tool: grep
---

- Search for text patterns in files

```bash
grep main "*.cpp"
grep -i "error" /var/log/syslog
```

Tool: find
---

- Search for files by name, type, size

```bash
find . -name "*.cpp"
find /etc -type f -size +1M
```

Tool: sed
---

- Stream editor for search/replace

```bash
sed 's/foo/bar/g' file.txt
```

Mini-Exercises
---

# Exercise 1

- Redirect the output of `ls -l` into a file called `listing.txt`
- Append a second listing to the same file
- Use `grep` to search for `.txt` entries

# Mini-Exercise 2

- Use `find` to locate all `.log` files in `/var/log`
- Replace the word "TODO" with "DONE" in a test file using `sed`

tmux Basics
---

- Terminal multiplexer
- Keep sessions running in background
- Key bindings (default prefix: `Ctrl-b`):
  - `%` split vertically
  - `"` split horizontally
  - `o` switch pane
  - `d` detach session
- Reattach: `tmux attach`

neovim Introduction
---

- Modal editor (Normal, Insert, Command modes)
- Basic commands:
  - `i` → insert mode
  - `Esc` → back to normal mode
  - `:wq` → save and quit
  - `/pattern` → search
  - `dd` delete line
  - `yy` yank (copy), `p` paste
  - `u` undo

Mini-Exercises
---

# Exercise 3

1. Open a tmux session
2. Split the screen into two panes
3. In the left pane, open a file with `nvim`
4. In the right pane, run `ls -l` and `grep`

Other Shell Commands
---

```bash
export     # sets an environment variable
echo $PATH # print an environment variable
./<cmd>    # executes an application in the current dir
chmod      # change file attributes
```

# New kids on the block

## `ripgrep`

ripgrep recursively searches directories for a regex pattern while respecting your gitignore. A fast replacement for `grep`.

`apt-get install ripgrep`

## `fdfind`

A simple, fast and user-friendly alternative to `find`

`apt-get install fd-find`

Survival Package (Tools & Workflow)
---

- Pipes and redirection: `|`, `>`, `>>`
- `grep` or `ripgrep`, `find` or `fdfind`, `sed`
- `tmux`: sessions, splits, detach/attach
- `neovim`: insert, save, quit, navigation, search, undo

# Wrap-Up

- Learned how to combine commands with pipes
- Practiced essential search & replace tools
- Worked with tmux splits
- Got comfortable editing in neovim

# Resources

[](https://github.com/teiniker/teiniker-lectures-computerscience/tree/master/linux)

# Next Session

- Configuration management
- Git basics
