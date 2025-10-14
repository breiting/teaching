---
title: Unit 6
sub_title: Testing with Google Test
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---

AGENDA
---

- Why testing matters
- What is Google Test?
- Introduction to Test Driven Development (TDD)
- Writing your first test
- Adding a C++ library and testing it
- Mini exercises

Why Testing?
---

- Prevent regressions (avoid breaking working code)
- Validate expected behavior automatically
- Enable safer refactoring
- Improve software quality and reliability
- In professional engineering: **no production code without tests**

What is Google Test?
---

- C++ testing framework by Google
- Simple and powerful
- Integrated into CMake easily
- Works cross-platform (Linux, Windows, macOS)

Test Driven Development (TDD)
---

- **Write a test → Run it (fails) → Write code → Run again (pass)**  
- Cycle: **Red → Green → Refactor**
- Advantages:
  - Ensures clarity about expected behavior
  - Keeps code modular and testable
  - Encourages clean interfaces


Example: Simple Math Library (1/4)
---

# Step 1: CMake Project

`CMakeLists.txt`

```
cmake_minimum_required(VERSION 3.10)
project(mathlib)

# Produce json file for code completion (optional)
set (CMAKE_EXPORT_COMPILE_COMMANDS 1)

# Enable testing
enable_testing()
add_subdirectory(gtest)

# Library
add_library(mathlib src/mathlib.cpp)
target_include_directories(mathlib PUBLIC inc)

add_executable(runTests tests/test_math.cpp)
target_link_libraries(runTests mathlib gtest_main)

add_test(NAME runTests COMMAND runTests)
```


Example: Simple Math Library (2/4)
---

# Step 2: Write the test first (expectation)

`tests/test_math.cpp`

```cpp
#include <gtest/gtest.h>
#include "mathlib.hpp"

TEST(MathTest, Addition) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(MathTest, Subtraction) {
    EXPECT_EQ(subtract(5, 2), 3);
}
```

Example: Simple Math Library (3/4)
---

# Step 3: Implement the Library

`inc/mathlib.hpp`

```cpp
#pragma once

int add(int a, int b);
int subtract(int a, int b);
```

`src/mathlib.cpp`

```cpp
#include "mathlib.hpp"

int add(int a, int b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}
```

Example: Simple Math Library (4/4)
---

# Step 4: Build & Run Tests

```bash
mkdir build && cd build
cmake ..
make
ctest
# or
./runTests
```

Expected Output:

```
[==========] Running 2 tests from 1 test suite.
[----------] Global test environment set-up.
[ RUN      ] MathTest.Addition
[       OK ] MathTest.Addition (0 ms)
[ RUN      ] MathTest.Subtraction
[       OK ] MathTest.Subtraction (0 ms)
[==========] 2 tests from 1 test suite ran.
[  PASSED  ] 2 tests.
```


Mini-Exercise
---

1. Add a new test for a `multiply(int, int)` function.
2. Run tests (should fail).
3. Implement `multiply` in `mathlib.cpp`.
4. Run again until all tests pass.

Survival Package (Testing)
---

- Always test critical code paths
- Write tests **before** implementation (TDD mindset)
- Run tests automatically in CI/CD (later!)
- Use `ctest` or `./runTests` to verify

Wrap-Up
---

- Understood the purpose of testing
- Learned basics of Google Test
- Practiced TDD workflow
- Built and ran unit tests using CMake

Next Session
---

- Classes
- STL
- Start with your assignment

