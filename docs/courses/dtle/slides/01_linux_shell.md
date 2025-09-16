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


Why Linux & the Terminal?
---

- Most engineering tools run best on Linux
- The **shell** = your universal remote for the computer
- Terminal = efficiency, automation, reproducibility
- Professional developers **live in the terminal**
- Editing, compiling, debugging → all faster

Starting the VM
---

- Start **VirtualBox** → load the provided VM
- Log in with given username & password
- Explore:
  - **Desktop** (graphical view)
  - **Terminal** (command line interface)

👉 **Exercise**: Open a terminal window!

First Shell Commands
---

```bash
pwd        # where am I? (print working directory)
ls         # list files
cd dir/    # change directory
mkdir lab1 # make new directory
cp a b     # copy file
mv a b     # move/rename
rm file    # remove
man ls     # manual page for ls
```

👉 Exercise:

- Create a folder unit1
- Inside, create a file with echo "hello" > hello.txt

Viewing Files
---

```bash
cat file.txt # show whole file
more file.txt # scroll page by page
tail file.txt # show last lines
```

👉 Exercise: Write a log file with

```
dmesg > syslog.txt
```

View first and last lines of syslog.txt.

neovim as your editor
---

# Overview

- Neovim = modern Vim
- Fast, keyboard-driven
- Great for coding in C++

# Core keys

- i → insert mode
- Esc → back to normal mode
- :w → save
- :q → quit

👉 Exercise:

- Open hello.txt in neovim
- Add your name to the file
- Save & quit

VSCode
---

# Overview

- VSCode = full-featured IDE
- Good for browsing, debugging, extensions
- Terminal + Neovim = speed
- VSCode = overview & comfort

👉 Explore:

- File explorer
- Terminal inside VSCode
- Extensions

Working Like Professionals
---

# Why terminal workflow?

- Portable, scriptable, efficient
- Works on servers, embedded boards, remote machines
- Many developers use `tmux` + `vim` + `git` as daily tools

Hands-On Challenge
---

1. Create `project1/` directory
2. Inside:

```bash
echo "int main(){return 0;}" > main.cpp
```

3. Open with neovim and change 0 → 42
4. Download a file (we’ll provide in class):

```bash
wget https://raw.githubusercontent.com/.../sensor.cpp
```

5. Find line with word "temperature":

```bash
grep "temperature" sensor.cpp
```

Questions?
---

![](question.jpg)
