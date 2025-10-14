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
    void SetValue(double v) { m_Value = v; }
    double GetValue() const { return m_Value; }
private:
    double m_Value;
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
    Sensor(std::string n, double v = 0.0) : m_Name(n), m_Value(v) {}
    void SetValue(double v) { m_Value = v; }
    double GetValue() const { return m_Value; }
    string GetName() const { return m_Name; }
private:
    string m_Name;
    double m_Value;
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

    sensors[0].SetValue(24.3);
    sensors[1].SetValue(3.3);
    sensors[2].SetValue(1.2);

    cout << "=== Sensor Readings ===" << endl;
    for (const auto& s : sensors)
        cout << s.GetName() << ": " << s.GetValue() << endl;
}
```

Example: Sensor Class in Action
---

# sensor.hpp

```cpp
#pragma once
#include <string>
using namespace std;

class Sensor {
public:
    Sensor(string n, double v = 0.0);
    void SetValue(double v);
    double GetValue() const;
    std::string GetName() const;
private:
    string m_Name;
    double m_Value;
};
```

Example: Sensor Class in Action
---

# sensor.cpp

```cpp
#include "sensor.h"

Sensor::Sensor(string n, double v) : m_Name(n), m_Value(v) {}

void Sensor::SetValue(double v) { m_Value = v; }

double Sensor::GetValue() const { return m_Value; }

std::string Sensor::GetName() const { return m_Name; }
```

Example: Sensor Class in Action
---

# const Correctness

- Mark methods that don't modify data as `const`
- Example:

```cpp
double GetValue() const { return m_Value; }
```

- Prevents accidental modification of internal state.

# Add Derived Behavior
Extend class with computed values or conditions.

```cpp
class Sensor {
    ...
    bool IsAbove(double threshold) const {
        return m_Value > threshold;
    }
};
```

Example Extension
---

```cpp
cout << "High Temperature Sensors:" << endl;
for (const auto& s : sensors) {
    if (s.IsAbove(20.0))
        cout << s.GetName() << " = " << s.GetValue() << endl;
}
```

Survival Package (OOP)
---

- `class`, `private`, `public`
- `constructor`, `getter`, `setter`
- `const` for read-only methods
- Separate interface (`.hpp`) and implementation (`.cpp`)
- Organize with `src/` and `inc/`

Wrap-Up
---

- Learned fundamentals of classes in C++
- Built a reusable `Sensor` class
- Practiced encapsulation and `const` correctness
