---
author: Bernhard Reitinger
---

| Col 1 | Col 2 |
| ----- | ----- |
|    Info  | Text  |

```

##      ## ######## ##        ######   #######  ##     ## ########
##  ##  ## ##       ##       ##    ## ##     ## ###   ### ##
##  ##  ## ##       ##       ##       ##     ## #### #### ##
##  ##  ## ######   ##       ##       ##     ## ## ### ## ######
##  ##  ## ##       ##       ##       ##     ## ##     ## ##
##  ##  ## ##       ##       ##    ## ##     ## ##     ## ##
 ###  ###  ######## ########  ######   #######  ##     ## ########
```

<br>

<br>

<br>

**Design Tools And Laboratory Engineering - Coding**

**2025**

---

# About me

- Bernhard Reitinger
- Coding ist meine Leidenschaft
- PhD in Computer Science, TU Graz
- Terminal and **neovim** guy, love simplicity
- Tried a lot of programming languages in my career
  - Pascal, Oberon, C/C++, Java/Groovy, C#, Javascript, Shell, Python, Go, Lua, ...

# Block 1 – Einstieg & Toolchain (5 Einheiten)

---

# This course

- Hands-on - learning by doing
- Practise versus theory
- I am the facilitator, you tutor

## Goals

- Get familiar with the Linux enviroment
- Learn how to work with the Linux shell
- Learn how to work with Git
- Learn how to start your first C++ project
  - CMake
  - Testing
  - Debugging
- Course C++ (the basics)

After this course, you should be able to start your next C++ project on Linux and develop your ideas using Git.

---

# Einheit 1: Einstieg in die Umgebung

- VirtualBox/VM starten, Login, Überblick Linux-Desktop/Terminal.
- Getting familiar with the terminal
- Erste Shell-Kommandos: ls, cd, pwd, man, mkdir, cp, mv, rm, more, cat, tail.
- Einführung: Warum Linux, Shell, Terminal wichtig sind für Entwickler.
- neovim as your default editor
- Start VSCode and get familiar with the core elements
- Motivation: "Warum arbeiten wir wie Profis im Terminal?"
- Miniübung: Jeder legt ein Verzeichnis an, schreibt eine kleine Textdatei mit echo > file.txt.
- Miniübung: Nutze neovim um dateien zu schreiben und zu modifizieren.
- Miniübung: Lade eine C++ datei herunter und finde die zeile mit einem gewissen text

---

# Einheit 2: Terminal & Workflow

- Terminal vertiefen: Pipes (|), Redirects (> >> <), grep, find.
- tmux Basics: Sessions, window, Splits, Detach/Attach (warum nützlich).
- Miniübung: in tmux mit 2 Splits arbeiten, eine Datei im vim öffnen, gleichzeitig ls -l daneben.
- Neovim Einführung: install my neovim startup package
- Hands-on: Studenten tippen im Terminal, öffnen Dateien mit vim, bewegen sich sicher.

---

# Einheit 3: Git Basics

- Motivation: Warum Versionskontrolle (vs. „final_v2_neu.cpp“).
- Init, git status, git add, git commit.
- .gitignore kurz zeigen.
- Remotes: GitHub/Server einrichten, git remote add origin, git push/pull.
- Remote erklären: git clone, git push, git pull.
- Übung: eigenes Repo anlegen, Datei erstellen, Commit, Push.
- Konzept: Warum Versionskontrolle? (Backup, Zusammenarbeit, Nachvollziehbarkeit).
- Hands-on: Repo lokal erstellen + mit Remote (GitHub/GitLab) verbinden.
- Bonus: git log, git diff.

---

# Einheit 4: Git Fortgeschritten/Praxis

- Branches (git branch, git switch -c, git merge).
- Konflikte demonstrieren.
- git stash (praktisch bei Experimenten).
- Übung: kleine Partnerübung: Zwei arbeiten an derselben Datei, Konflikt lösen.
- Kleine Übung: Jeder macht einen Commit, pushed in ein gemeinsames Repo.

---

# Einheit 5: Erstes C++ Projekt

- Einstieg C++17: (was ist C++, kurze theorie)
- minimaler main.cpp („Hello, world!“).
- Compiler Basics: g++ main.cpp -o main.
- Makefile introduction
- Einführung CMake: minimal CMakeLists.txt.
- cmake .. && make.
- Struktur eines Projekts: src/, inc/, build/.
- Übung: Projekt-Ordner anlegen, CMake + main.cpp, build & run.
- Warum CMake? → Portabilität, Buildsystem.
- Programm kompilieren & ausführen: ./main.
- Erste “Hello World”-Variante.
- Studenten bauen ihr erstes Projekt selbst.

---

Block 2 – C++ Grundlagen & Debugging (5 Einheiten)

---

Einheit 8: Classes
• Unterschied funktionales und oop
• Klassen, Structs, methoden, properties, getter, setter
• consts
• Übung: Klasse Complex implementieren (Addition, Ausgabe).

---

Einheit 6: Datentypen & STL – Teil 1
• Primitive Typen: int, double, bool, char.
• std::string, std::vector.
• Input/Output mit cin/cout.
• Übung: Programm, das Zahlen einliest und summiert.

---

Einheit 7: Datentypen & STL – Teil 2
• std::map, std::set, std::unordered_map.
• Iterieren mit range-based for.
• Übung: kleines Wörterbuch bauen (map<string,int>).

---

Einheit 9: Testing & Debugging
• Integrate google test
• Write your first test
• TDD
• Debug build (-g, cmake -DCMAKE_BUILD_TYPE=Debug).
• gdb Basics: start, breakpoints, step, next, print.
• lldb kurz erwähnen.
• Integration mit tmux/vim (z. B. termdebug Plugin).
• Übung: Bug einbauen, mit Debugger finden (z. B. Array out-of-bounds).

---

Einheit 10: Abschlussprojekt & Wrap-Up
• Alles zusammenführen:
• Git-Repo → CMake Projekt → mehrere Dateien → Debugger.
• Kleine Gruppenarbeit: Mini-Projekt (z. B. Taschenrechner, Text-Analyser, Simulation).
• Am Ende: Code committen & pushen.

# Resources

- [Linux Command-line for Beginners](https://youtu.be/id3DGvljhT4?si=PVgFncafJCy8CgaO)
- [Linux Command-line: Full Course](https://youtu.be/5jIIOkA0NpI?si=V0tNpDqphK095RLn)

# Tables

```bash
plantuml -tutxt -pipe < x
```

---
