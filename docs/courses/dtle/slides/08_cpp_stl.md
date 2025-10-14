---
title: Unit 7
sub_title: STL Container & Data Types
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---

AGENDA
---

- C++ data types
- Introduction to the STL
- std::vector
- std::map
- std::set
- Practical examples and exercises

Why the STL?
---

- The **Standard Template Library (STL)** provides ready-to-use data structures and algorithms.
- Saves development time, reduces bugs.
- Highly optimized and well-tested.
- Used everywhere in professional C++.

Basic Data Types
---

- Primitive: `int`, `double`, `char`, `bool`
- Derived: `array`, `pointer`, `struct`, `class`
- User-defined: your own types
- STL containers build on these to store data efficiently

std::vector
---

- Dynamic array that grows automatically
- Access elements with `[]` or `.at()`

```cpp
#include <vector>
#include <iostream>
using namespace std;

int main() {
    vector<int> values = {1, 2, 3};
    values.push_back(4);

    for (int v : values)
        cout << v << " ";
}
```

Output:

```
1 2 3 4
```

std::vector – Common Operations
---

```cpp
v.size();         // number of elements
v.empty();        // check if empty
v.clear();        // remove all elements
v.front();        // first element
v.back();         // last element
v.pop_back();     // remove last
```

std::map
---

- Associates **keys** with **values**, sorted by keys automatically

```cpp
#include <map>
#include <iostream>
using namespace std;

int main() {
    map<string, int> scores;
    scores["Anna"] = 95;
    scores["Bob"] = 87;
    scores["Clara"] = 91;

    for (auto& [name, score] : scores)
        cout << name << ": " << score << endl;
}
```

Output:

```
Anna: 95
Bob: 87
Clara: 91
```

std::set
---

- Stores unique elements only, automatically sorted

```cpp
#include <set>
#include <iostream>
using namespace std;

int main() {
    set<int> ids = {5, 3, 1, 3};
    ids.insert(2);
    for (int id : ids)
        cout << id << " ";
}
```

Output:

```
1 2 3 5
```

Example: Word Counter
---

`src/main.cpp`
```cpp
#include <iostream>
#include <map>
#include <string>
#include <sstream>
using namespace std;

int main() {
    string text = "this is a test this is only a test";
    map<string, int> counter;
    string word;
    istringstream iss(text);
    while (iss >> word)
        counter[word]++;

    for (auto& [w, c] : counter)
        cout << w << " -> " << c << endl;
}
```

Example: Word Counter
---

# Expected Output

```
a -> 2
is -> 2
only -> 1
test -> 2
this -> 2
```

Survival Package (STL Containers)
---

- `vector`: dynamic list of elements
- `map`: key-value store (sorted)
- `set`: unique sorted elements
- Use **range-based for loops** to iterate
- Always `#include <container>`

Wrap-Up
---

- Learned STL basics
- Practiced vectors, maps, and sets
- Built a simple word counter
