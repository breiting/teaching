---
title: "CircuitSim – Software Design and Architecture Lab"
author: Bernhard Reitinger
theme:
  name: gruvbox-dark
options:
  implicit_slide_ends: true
  command_prefix: "cmd:"
---


⚡ CircuitSim
---

> Learning Professional Software Design & Architecture through Simulation

---

## 🎯 Motivation

Why _CircuitSim_?

- To **apply theoretical knowledge** to a real-world project
- To **learn professional C++17 design and architecture**
- To understand **how to structure, test, and evolve** real software
- To connect **engineering** with **software architecture thinking**

🧩 What is CircuitSim?
---

A modular simulation framework for modeling **electrical circuits** in modern C++.

You’ll design and build a system that:

- models components like resistors, switches, batteries
- allows circuits to be combined (series, parallel)
- measures voltage and current
- later: simulates time-dependent behavior (capacitors, etc.)

🧱 Learning Goals
---

You will learn to:

- Design extensible class hierarchies (inheritance, composition)
- Apply design patterns (Composite, Strategy, State, Observer)
- Use CMake and GoogleTest professionally
- Write maintainable, testable, modern C++ code
- Refactor for clarity and flexibility

🧰 Tools and Technology
---

| Tool           | Purpose                              |
| -------------- | ------------------------------------ |
| **C++17**      | Core programming language            |
| **CMake**      | Build system & dependency management |
| **GoogleTest** | Unit testing                         |
| **Git**        | Version control                      |
| **Linux**      | Target platform                      |

🧩 Architecture Overview
---

```text
Component (interface)
│
├── Resistor
├── VoltageSource
├── Battery
├── Switch
│
├── SeriesCircuit   (Composite)
└── ParallelCircuit (Composite)
```

Later:

```text
└── Capacitor
└── DCSolver
└── Multimeter
```

All components follow the same base interface and can be combined freely.

🧮 Example: Modeling a Simple Circuit
---

Looking into the future:

```
auto battery = std::make_shared<Battery>(9.0, 2000);
auto r1 = std::make_shared<Resistor>(3.0);
auto r2 = std::make_shared<Resistor>(6.0);

SeriesCircuit circuit({battery, r1, r2});
```

- Each component knows its voltage and current
- The `SeriesCircuit` aggregates them
- Later: a `DCSolver` will compute correct voltages & currents automatically

🧭 Rough Course Roadmap
---

> May change according to progress in lecture!

## Unit 1 – Architecture & Configuration Management

- Setup project, review code, implement a first component (`VoltageSource`)

## Unit 2 – Composition & Modeling

- Implement more components `Switch`, `SeriesCircuit`, `ParallelCircuit`

## Unit 3 – Simulation & Dynamics

- Switch to `SmartPointers`
- Introduce `Step(dt)`, add `Capacitor` and time simulation

## Unit 4 – Refactoring & Patterns

- Refine design (Factory, Observer, Strategy)

## Unit 5 – Integration & Finalization

- Finishing touches, visualization, logging, export, ...

⚙️ Project Structure
---

```
circuitsim/
├── app/ # demo application
├── csim/inc/ # headers (.hpp)
├── csim/src/ # implementation (.cpp)
├── tests/ # unit tests (GoogleTest)
└── CMakeLists.txt # project build
```

Development artifacts:

- `csimlib` provides all functionality (library)
- `csim` command-line tool (executable)
- `test_csim` unit test (executable)

🧪 Testing Philosophy
---

Testing is part of the design process.

- Each component is independently verifiable
- High coverage with GoogleTest
- Fail fast, refactor safely
- Reuse tests as design documentation

🧩 Example Test Case

```
TEST(SeriesCircuitTest, CombinedVoltageIsSum) {
  auto r1 = Resistor(100.0);
  auto r2 = Resistor(200.0);
  r1.SetVoltage(2.0);
  r2.SetVoltage(4.0);
  SeriesCircuit s({r1, r2});
  EXPECT_NEAR(s.Voltage(), 6.0, 1e-9);
}
```

✅ Clear
✅ Deterministic
✅ Physically meaningful

🏁 Final Deliverable
---

By the end of the course, you’ll have:

- ✅ A modular, testable simulation engine
- ✅ Clean, extensible architecture
- ✅ Comprehensive unit tests
- ✅ Full project build (CMake + GTest)
- ✅ Professional project template for other projects

🙌 Next Steps
---

1. Clone the starter repository
   - `https://github.com/breiting/circuitsim`
2. Build & run first tests
3. Review code
4. Implement a first component
5. Document and commit regularly with git
