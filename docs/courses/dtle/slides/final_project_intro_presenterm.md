% Final Project Assignment
% Master Course: Linux, Git & C++
% Instructor: [Your Name]

# The Final Project
- Runs through the entire course
- Integrates all skills: Linux, Git, C++, CMake, Debugging, Documentation
- You will build a **mini C++ project** from scratch
- Final hand-in at the end of Block 2

# Why a Project?
- Learn by doing
- Simulates a professional workflow
- Demonstrates mastery of tools and concepts
- Helps distinguish excellent work from minimal effort

# Project Requirements
- Must be a **Git repository**
- Must build with **CMake**
- Must include:
  - `src/main.cpp`
  - `CMakeLists.txt`
  - `README.md`
  - Proper `.gitignore`
- Must show a **Git history** with multiple commits

# C++ Program (main.cpp)
- Should use **STL containers** (`vector`, `map`)
- Reads input (stdin or file)
- Performs some processing (calculation, parsing, simulation)
- Produces meaningful output on stdout

# README.md
- Project description
- How to build and run
- Example usage
- Bonus: Example output

# Git History
- Several commits (not everything in "Initial commit")
- At least one feature branch merged into main
- Meaningful commit messages
- Bonus: Bugfix commit

# Possible Project Topics
1. **Text Analyzer**: count words, characters, top frequent words
2. **Sensor Data Simulator**: generate random measurements, compute statistics
3. **Test Report Parser**: parse log files for PASS/FAIL and summarize

# Bonus Features (Optional)
- Unit tests (GoogleTest or Catch2)
- Debugging evidence (bug + fix)
- Command-line arguments
- Logging results into a file

# How It Will Be Evaluated
- Build works (CMake + make)
- Program runs correctly on test input
- README.md is clear and complete
- Git history shows real workflow
- Extra points for tests, bugfixes, logging

# Automatic Checking
Your project will be checked with scripts:
- Clone repo
- Build with `cmake .. && make`
- Run program with test input
- Verify required files exist
- Inspect Git history

# Wrap-Up
- This project starts **now**
- You build it step by step through the course
- Every exercise can become part of it
- Final delivery = Git repo with working code and documentation

