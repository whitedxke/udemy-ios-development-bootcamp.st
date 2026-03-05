# iOS Application Design Patterns & Code Structuring.

A module dedicated to architectural principles in iOS development. The focus is on applying the **MVC (Model-View-Controller)** design pattern and improving code scalability through proper structuring and refactoring.

## Projects.

### Quizzler.

A quiz application, that dynamically presents questions to the user, tracks correct answers and displays a final score. The application demonstrates clean separation between data models and UI logic using the MVC pattern.

**Key Concepts:**
- MVC design pattern.
- `struct` with methods and mutating functions.
- Modular code organization (Model, View and Controller).
- Score tracking and progress display.

**Project Structure:**

```
Quizzler/
├── Controller/
│   └── ViewController.swift
├── Model/
│   ├── Question.swift
│   └── Quiz.swift
├── View/
│   └── Base.lproj/
│       └── Main.storyboard
├── AppDelegate.swift
├── SceneDelegate.swift
└── Info.plist
```

### Destini.

A choose-your-own-adventure interactive story application. The user navigates through a branching narrative by making choices, with each decision leading to a different path and outcome.

**Key Concepts:**
- MVC pattern applied to story-driven logic.
- Code structuring and refactoring.
- Branching logic with data-driven story flow.
- Separation of story data from presentation.

**Project Structure:**

```
Destini/
├── Controller/
│   └── ViewController.swift
├── Model/
│   ├── Story.swift
│   └── StoryBrain.swift
├── View/
│   └── Base.lproj/
│       └── Main.storyboard
├── AppDelegate.swift
├── SceneDelegate.swift
└── Info.plist
```

<p align="right">
  <a href="../../README.md">Back to Main README.</a>
</p>
