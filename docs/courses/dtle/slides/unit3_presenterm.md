% Unit 3: Git Basics
% Master Course: Linux, Git & C++
% Instructor: [Your Name]

# Agenda
- What is Git?
- History and motivation
- Key concepts: repo, commit, branch, remote
- First Git commands
- Working with remotes (GitHub/GitLab)
- Mini exercises

# What is Git?
- A distributed version control system (VCS)
- Tracks changes in files (mostly source code)
- Allows collaboration, history, and backups
- Invented by Linus Torvalds in 2005 for Linux kernel
- The name? British slang for "unpleasant person" – Linus being ironic

# Why Git?
- No more "final_v2_neu.cpp"
- History of every change
- Work in parallel on different features
- Collaboration across teams
- Safe backups

# Git Concepts
- **Repository (repo)**: project folder + .git directory
- **Commit**: snapshot of changes
- **Branch**: parallel line of development
- **Remote**: server version (GitHub, GitLab)
- **Clone**: copy remote repo locally

# Create a New Repo
```bash
git init
git status
echo "Hello Git" > readme.txt
git add readme.txt
git commit -m "Initial commit"
```

# Tracking Changes
```bash
git status         # show modified files
git diff           # show changes
git add file.cpp   # stage changes
git commit -m "Describe your change"
```

# Working with Remotes
- Connect local repo to GitHub/GitLab
```bash
git remote add origin <url>
git push -u origin main
git pull origin main
git clone <url>
```

# .gitignore
- Tell Git which files NOT to track
Example `.gitignore`:
```
*.o
*.log
build/
```

# Viewing History
```bash
git log
git log --oneline --graph
```

# Mini-Exercise 1
1. Create a new folder and initialize a Git repo
2. Add a file `hello.txt` and commit it
3. Edit `hello.txt` and commit the change
4. Inspect history with `git log`

# Mini-Exercise 2
1. Create a new repo on GitHub
2. Link your local repo with remote (`git remote add origin ...`)
3. Push your commits to GitHub
4. Clone the repo into a new directory to verify

# Survival Package (Git Basics)
- `git init, git status, git add, git commit -m`
- `git log, git diff`
- `git remote add origin, git push, git pull, git clone`
- `.gitignore`

# Wrap-Up
- Learned what Git is and why it matters
- Created first local repo
- Connected to a remote repo
- Practiced committing and pushing

# Next Session
- Advanced Git: branching, merging, conflicts
- Stash and blame
