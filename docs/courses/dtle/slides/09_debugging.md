---
title: Unit 8
sub_title: Debugging & Error Tracing
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---

Agenda
---

- Why debugging matters
- Build types in CMake
- Using `gdb` (GNU Debugger)
- Example: debugging a simple C++ bug

Why Debugging?
---

- Every developer writes bugs – debugging is how we learn.
- Tools like **gdb** help find logic or memory errors efficiently.
- Understanding how to inspect variables and execution flow = **essential engineering skill**.

CMake Build Types
---

CMake supports different build configurations:

```bash
cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake -DCMAKE_BUILD_TYPE=Release ..
```

- `Debug`: includes symbols for gdb (`-g` flag)
- `Release`: optimized build without debug info

Simple Example Program with a Bug
---

`src/main.cpp`

```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> data = {1, 2, 3, 4};
    for (int i = 0; i <= data.size(); i++) // <-- Bug: <= causes out-of-bounds
        cout << data[i] << endl;
}
```

Step 1: Compile with Debug Info
---

```bash
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
```

Step 2: Start gdb
---

```bash
gdb ./main
```

At the gdb prompt:
```
(gdb) break main
(gdb) run
(gdb) next
(gdb) print i
(gdb) backtrace
(gdb) quit
```

Common gdb Commands
---

| Command | Description |
|----------|--------------|
| `run` | start the program |
| `break <line/function>` | set a breakpoint |
| `next` / `step` | execute next line (step over/into) |
| `continue` | resume program |
| `print <var>` | show variable value |
| `backtrace` | show call stack |
| `quit` | exit gdb |

Example Debugging Session
---

```bash
gdb ./main
(gdb) break 5
(gdb) run
(gdb) print i
(gdb) next
(gdb) print data[i]
(gdb) continue
```
gdb output:

```
Program received signal SIGSEGV, Segmentation fault.
```

Debugging Tips
---

- Always compile with `-g`
- Use small, reproducible test cases
- Don't just fix symptoms – understand *why* the bug occurred
- Document fixes clearly in Git commits

Survival Package (Debugging)
---

- `cmake -DCMAKE_BUILD_TYPE=Debug`
- `gdb ./program`
- Commands: `break`, `run`, `next`, `step`, `print`, `backtrace`

