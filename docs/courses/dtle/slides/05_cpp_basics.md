---
title: Unit 5
sub_title: C++ Basics
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


AGENDA
---

- Introduction to C++17
- First program: Hello World
- Compile with g++
- Intro to Makefile
- Intro to CMake
- Project structure
- Mini exercises

Why C++?
---

- Widely used in embedded, power electronics, and system testing
- High performance and control
- Large ecosystem (STL, libraries)
- Industry standard for engineering projects

Hello World in C++
---

```cpp
#include <iostream>
int main() {
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
```

Compile and Run
---

```bash
g++ main.cpp -o main
./main
```

Makefile (Intro)
---

- Automate compilation
  Example `Makefile`:

```
all:
	g++ main.cpp -o main
clean:
	rm -f main
```

- Run:

```bash
make
make clean
```

CMake Basics
---

- Cross-platform build system generator
- Easier for larger projects

Minimal `CMakeLists.txt`:

```
cmake_minimum_required(VERSION 3.10)
project(HelloWorld)
add_executable(main main.cpp)
```

Building with CMake
---

```bash
mkdir build
cd build
cmake ..
make
./main
```

# Project Structure

```
myproject/
├── src/
│   └── main.cpp
├── inc/
├── CMakeLists.txt
└── build/
```

Mini-Exercises
---

# Exercise 1

1. Create a new folder `cpp_project`
2. Write `main.cpp` with Hello World
3. Compile with `g++` and run

# Exercise 2

1. Write a Makefile to compile `main.cpp`
2. Use `make` to build and `make clean` to remove binaries

# Exercise 3

1. Create `CMakeLists.txt` as shown
2. Build with CMake in `build/`
3. Run the program

Survival Package (C++ Project Setup)
---

- `g++ main.cpp -o main`
- Makefile: `make`, `make clean`
- CMake: `cmake .. && make`
- Project structure: `src/`, `inc/`, `build/`

Wrap-Up
---

- Wrote and compiled first C++ program
- Learned Makefile basics
- Used CMake to build project
- Understood standard project structure

# Resources

[](https://github.com/teiniker/teiniker-lectures-computerscience/tree/master/programming-c%2B%2B)

Next Session
---

- Start with your assessment project
