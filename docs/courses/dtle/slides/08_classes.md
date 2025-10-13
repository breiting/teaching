---
title: Unit 8
sub_title: Classes and Object-Oriented Programming
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---

AGENDA
---

- Why OOP in engineering?
- Class basics
- Constructors, methods, attributes
- const correctness, getters, setters
- Example: Sensor class
- Mini exercises

 Why Object-Oriented Programming?
---

- Organize code around **data and behavior**
- Reusable, modular, and testable components
- Makes simulation and modeling easier
- Perfect for **embedded and power systems** (sensors, controllers, devices)

Class Basics
---

A class defines **data (attributes)** and **functions (methods)**.

```cpp
class Sensor {
public:
    void SetValue(double v) { value = v; }
    double GetValue() const { return value; }
private:
    double value;
};
```

# Creating and Using Objects

```cpp
int main() {
    Sensor s;
    s.SetValue(23.5);
    cout << "Sensor value: " << s.GetValue() << endl;
}
```

Constructors
---

- Initialize attributes automatically when an object is created.

```cpp
class Sensor {
public:
    Sensor(string n, double v = 0.0) : name(n), value(v) {}
    void setValue(double v) { value = v; }
    double getValue() const { return value; }
    string getName() const { return name; }
private:
    string name;
    double value;
};
```

Example: Sensor Class in Action
---

`src/main.cpp`
```cpp
#include <iostream>
#include <vector>
#include "sensor.h"
using namespace std;

int main() {
    vector<Sensor> sensors = {
        Sensor("Temperature"),
        Sensor("Voltage"),
        Sensor("Current")
    };

    sensors[0].setValue(24.3);
    sensors[1].setValue(3.3);
    sensors[2].setValue(1.2);

    cout << "=== Sensor Readings ===" << endl;
    for (const auto& s : sensors)
        cout << s.getName() << ": " << s.getValue() << endl;
}
```

Example: Sensor Class in Action
---

# sensor.h
```cpp
#pragma once
#include <string>
using namespace std;

class Sensor {
private:
    string name;
    double value;
public:
    Sensor(string n, double v = 0.0);
    void setValue(double v);
    double getValue() const;
    string getName() const;
};
```

Example: Sensor Class in Action
---

# sensor.cpp
```cpp
#include "sensor.h"

Sensor::Sensor(string n, double v) : name(n), value(v) {}
void Sensor::setValue(double v) { value = v; }
double Sensor::getValue() const { return value; }
string Sensor::getName() const { return name; }
```

# const Correctness
- Mark methods that don't modify data as `const`
- Example:
```cpp
double getValue() const { return value; }
```
- Prevents accidental modification of internal state.

# Add Derived Behavior
Extend class with computed values or conditions.
```cpp
class Sensor {
    ...
    bool isAbove(double threshold) const {
        return value > threshold;
    }
};
```

Example Extension
---

```cpp
cout << "High Temperature Sensors:" << endl;
for (const auto& s : sensors) {
    if (s.isAbove(20.0))
        cout << s.getName() << " = " << s.getValue() << endl;
}
```

Survival Package (OOP)
---

- `class`, `private`, `public`
- `constructor`, `getter`, `setter`
- `const` for read-only methods
- Separate interface (`.h`) and implementation (`.cpp`)
- Organize with `src/` and `include/`

Wrap-Up
---

- Learned fundamentals of classes in C++
- Built a reusable `Sensor` class
- Practiced encapsulation and const correctness
- Prepared for next unit: Debugging and error tracing
