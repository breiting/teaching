---
title: Unit 1
sub_title: Linux, Shell & First Tools
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


AGENDA
---

- Why Linux?
- VirtualBox & VM login
- Linux filesystem basics
- The Terminal and the Shell
- First shell commands
- Mini exercises

Why Linux?
---

<!-- incremental_lists: true -->

- Linux is widely used (server, super-computer, embedded)
- Open source, stable, flexible
- Good development ecosystem
- Essential for professional software workflows
- Most engineering tools run best on Linux
- The **shell** = your universal remote for the computer
- Terminal = efficiency, automation, reproducibility
- Professional developers **live in the terminal**
- Editing, compiling, debugging → all faster

VirtualBox & VM
---

- Start VirtualBox VM
- Login with provided credentials (`student`/`student`)
- Open a terminal window

Linux Filesystem Basics
---

- Hierarchy structure:
  - `/` root
  - `/home` user data
  - `/etc` configuration
  - `/usr` system applications

The Terminal & The Shell
---

- Terminal: program to access the shell
- Shell: command interpreter (`bash`, `zsh`)
- You communicate with the OS via text commands

First Shell Commands
---

```bash
pwd        # print working directory
ls -l      # list files with details
cd dir     # change to directory
cd ..      # go one directory up
mkdir test # create new directory
rm -r test # remove directory recursively (be aware!)
```

More Shell Commands
---

```bash
cp file1 file2   # copy file
mv file1 file2   # move/rename file
cat file.txt     # show file contents
less file.txt    # view file with navigation
head file.txt    # first lines
tail file.txt    # last lines
man ls           # manual for ls command
```

Mini-Exercises
---

# Exercise 1

1. Create a directory called `myproject`
2. Inside `myproject`, create a file `notes.txt` with:

```bash
   echo "Hello Linux" > notes.txt
```

3. Display its content with `cat`

<!-- pause -->

# Exercise 2

1. Append more text into `notes.txt`:

```bash
   echo "More notes" >> notes.txt
```

2. Use `tail` to show only the last line
3. Delete `notes.txt` and recreate it with new content

Survival Package (Linux Basics)
---

<!-- incremental_lists: true -->

- Navigation: `pwd`, `ls`, `cd`
- File handling: `cp`, `mv`, `mkdir`, `rm`
- Viewing: `cat`, `head`, `tail`
- Documentation: `man`

Wrap-Up
---

- Started VM and terminal
- Learned Linux filesystem structure
- Practiced essential shell commands
- Hands-on exercises with files and directories

Next Session
---

- Pipes and redirects
- Essential tools: `grep`, `find`, `sed`
- `tmux` and `neovim` basics

Questions?
---

![](question.jpg)
