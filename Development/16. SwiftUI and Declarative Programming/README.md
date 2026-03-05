# SwiftUI & Declarative Programming.

An introduction to SwiftUI — Apple's declarative framework for building user interfaces. This module shifts from the imperative UIKit approach to a modern, state-driven paradigm where the UI automatically updates in response to data changes.

## Projects.

### Personal Card.

A digital business card built entirely in SwiftUI. The application displays contact information with a clean, structured layout using SwiftUI's composable view system.

**Key Concepts:**
- SwiftUI fundamentals: `VStack`, `HStack`, `ZStack`.
- Custom views and view composition.
- Styling with modifiers.
- `Image` and `Text` configuration.

**Project Structure:**

```
PersonalCard/
├── PersonalCardApp.swift
├── ContentView.swift
├── InformationView.swift
└── Info.plist
```

### Dicee.

A dice rolling application, where the user taps a button to generate two random dice faces. A simple project focused on state management and random number generation in SwiftUI.

**Key Concepts:**
- `State` property wrapper for reactive UI updates.
- Random value generation with `Int.random(in:)`.
- SwiftUI image rendering.
- Button actions and event handling.

**Project Structure:**

```
Dicee/
├── DiceeApp.swift
└── ContentView.swift
```

### H4X0R.

A Hacker News reader, that fetches top stories from the Hacker News API and displays them in a list. Tapping a story opens the full article in an embedded web view.

**Key Concepts:**
- `ObservableObject` and `Published` for data binding.
- Networking in SwiftUI with asynchronous data fetching.
- `WKWebView` integration via `UIViewRepresentable`.
- `NavigationView` and `List` for content presentation.

**Project Structure:**

```
H4X0R/
├── Models/
│   ├── NetworkManager.swift
│   └── PostData.swift
├── Views/
│   ├── ContentView.swift
│   ├── DetailView.swift
│   └── WebView.swift
└── H4X0RApp.swift
```

<p align="right">
  <a href="../../README.md">Back to Main README.</a>
</p>
