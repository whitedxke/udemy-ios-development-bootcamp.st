# Advanced Swift Programming — Classes, Inheritance & Optionals.

A deeper dive into object-oriented programming in Swift, exploring the power of classes, inheritance and the nuanced handling of optionals. This module refines the understanding of the MVC design pattern and expands into multi-screen navigation and dynamic UI behavior.

## Projects.

### BMI Calculator.

A body mass index calculator, that takes the user's height and weight as input, computes the BMI value and presents the result on a separate screen with a color-coded health assessment.

**Key Concepts:**
- Classes vs. structs: value types and reference types.
- Inheritance and method overriding.
- Optional binding (`if..let`), optional chaining, and nil coalescing.
- Multi-screen navigation with data passing.
- Color literals and UI customization.

**Project Structure:**

```
BMI-Calculator/
├── Controllers/
│   ├── CalculateViewController.swift
│   └── ResultViewController.swift
├── Models/
│   ├── BMI.swift
│   └── CalculatorBrain.swift
├── Views/
│   └── Base.lproj/
│       └── Main.storyboard
├── AppDelegate.swift
├── SceneDelegate.swift
└── Info.plist
```

### Tipsy.

A tip calculator, that allows users to enter a bill amount, select a tip percentage and split the total among multiple people. The result is displayed on a dedicated screen.

**Key Concepts:**
- Multi-screen navigation with segues.
- Passing data between view controllers.
- User input handling and formatting.
- Clean UI layout with multiple interactive controls.

**Project Structure:**

```
Tipsy/
├── Controllers/
│   ├── CalculatorViewController.swift
│   └── ResultsViewController.swift
├── Base.lproj/
│   ├── Main.storyboard
│   └── LaunchScreen.storyboard
├── AppDelegate.swift
├── SceneDelegate.swift
└── Info.plist
```

<p align="right">
  <a href="../../README.md">Back to Main README.</a>
</p>
