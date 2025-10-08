---
title: Unit 4
sub_title: Git Advanced
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


AGENDA
---

- Branching
- Merging
- Handling conflicts
- Stash
- Log visualization
- Blame
- Mini exercises

Branching
---

- Branch = parallel line of development
- Default branch is usually `main`

```bash
git branch feature
git switch feature
```

# Working in a Branch

```bash
echo "new feature" > feature.txt
git add feature.txt
git commit -m "Add feature file"
git switch main
```

Merging
---

- Bring changes from another branch into current one

```bash
git merge feature
```

Merge Conflicts
---

- Happen when two branches modify the same line
- Git marks conflicts in files:

```
<<<<<<< HEAD
line from main
=======
line from feature
>>>>>>> feature
```

- Resolve manually, then:

```bash
git add conflicted_file.cpp
git commit
```

Log Visualization
---

```bash
git log --oneline --graph --all
```

Stash
---

- Save unfinished changes temporarily

```bash
git stash          # save changes
git pull           # update repo
git stash pop      # reapply changes
```

Blame
---

- Show who last modified each line in a file

```bash
git blame file.cpp
```

Mini-Exercises
---

# Exercise 1

1. Create a new branch `experiment`
2. Add and commit a new file
3. Switch back to `main` and merge `experiment`

# Exercise 2 (Merge)

1. Make a new branch `b1`
2. Commit change
3. Go back to `main` and make another branch `b2`
4. Commit change
5. Switch back to `b1`
6. Merge `b2`
7. Commit

# Exercise 3

1. Run `git blame` on a file with multiple commits
2. Identify who changed each line

Survival Package (Git Advanced)
---

- `git branch`
- `git switch`
- `git merge`
- Conflict resolution markers `<<<<<<<`, `=======`, `>>>>>>>`
- `git stash`
- `git stash pop`
- `git log --oneline --graph`
- `git blame`

Wrap-Up
---

- Learned branching and merging
- Practiced conflict resolution
- Used stash for temporary changes
- Investigated file history with blame

Next Session
---

- Start with C++ basics
- First project with g++, Makefile, and CMake
