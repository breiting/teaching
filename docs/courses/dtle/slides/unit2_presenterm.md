% Unit 2: Terminal & Workflow
% Master Course: Linux, Git & C++
% Instructor: [Your Name]

# Agenda

- Streams, Pipes & Redirects
- Essential tools: grep, find, sed, ack
- tmux basics
- neovim introduction
- Mini exercises

# Streams in Linux

- stdin (0) → input
- stdout (1) → normal output
- stderr (2) → error output
- Redirection:
  ```bash
  command > file   # stdout to file (overwrite)
  command >> file  # append stdout to file
  command < file   # use file as input
  ```

# Pipes

- Combine commands using `|`

```bash
ls -l | grep ".cpp"
ps aux | grep firefox
dmesg | less
```

# grep

- Search for text patterns in files

```bash
grep "main" *.cpp
grep -i "error" /var/log/syslog
```

# find

- Search for files by name, type, size

```bash
find . -name "*.cpp"
find /etc -type f -size +1M
```

# sed

- Stream editor for search/replace

```bash
sed 's/foo/bar/g' file.txt
```

# ack (if installed)

- Like grep, but optimized for source code

```bash
ack "main"
```

# Mini-Exercise 1

- Redirect the output of `ls -l` into a file called `listing.txt`
- Append a second listing to the same file
- Use `grep` to search for `.txt` entries

# Mini-Exercise 2

- Use `find` to locate all `.log` files in `/var/log`
- Replace the word "TODO" with "DONE" in a test file using `sed`

# tmux Basics

- Terminal multiplexer
- Keep sessions running in background
- Key bindings (default prefix: `Ctrl-b`):
  - `%` split vertically
  - `"` split horizontally
  - `o` switch pane
  - `d` detach session
- Reattach: `tmux attach`

# neovim Introduction

- Modal editor (Normal, Insert, Command modes)
- Basic commands:
  - `i` → insert mode
  - `:wq` → save and quit
  - `/pattern` → search
  - `dd` delete line
  - `yy` yank (copy), `p` paste
  - `u` undo

# Mini-Exercise 3

1. Open a tmux session
2. Split the screen into two panes
3. In the left pane, open a file with `nvim`
4. In the right pane, run `ls -l` and `grep`

# Survival Package (Tools & Workflow)

- Pipes and redirection: `|`, `>`, `>>`
- grep, find, sed, ack
- tmux: sessions, splits, detach/attach
- neovim: insert, save, quit, navigation, search, undo

# Wrap-Up

- Learned how to combine commands with pipes
- Practiced essential search & replace tools
- Worked with tmux splits
- Got comfortable editing in neovim

# Next Session

- Git basics: init, add, commit
- Connecting to remotes
- Push & pull
