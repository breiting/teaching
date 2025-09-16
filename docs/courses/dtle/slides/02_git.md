---
title: Unit 2
sub_title: Git
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


Why GIT?
---

- Source code needs to be tracked
- Documentation of source
- Revert back to your last working version
- Share work with others

Create
---

Create a new local repository

```bash
git init
```

or clone an existing repository

```bash
git clone https://github.com/breiting/devbox-cpp
```

Local Changes
---

List changed files in your working directory

```bash
git status
```

Changes to tracked files

```bash
git diff
```

Add all current changes to the next commit

```bash
git add .
```

Add some changes in `file` to the next commit

```bash
git add -p <file>
```

Commit Changes
---

Commit previously staged changes

```bash
git commit
```

Commit with commit message

```bash
git commit -m "My changes"
```

Commit History
---

Show all commits, starting with the newest

```bash
git log
```

Show changes over time for a specific file

```bash
git log -p <file>
```

Who changed what and when in `file`

```bash
git blame <file>
```

Branches and Tags
---

List all existing branches

```bash
git branch -av
```

Switch HEAD branch

```bash
git checkout <branch>
```

Working with remotes
---
