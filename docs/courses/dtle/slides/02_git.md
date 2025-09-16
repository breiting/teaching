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

Branches and Tags
---

Working with remotes
---
