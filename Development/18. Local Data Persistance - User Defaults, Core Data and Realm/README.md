# Local Data Persistence — UserDefaults, Core Data & Realm.

> **Draft:** This module is in progress. The lessons have been reviewed for familiarization purposes. The project is not fully completed.

A continuation of the data persistence module, expanding into third-party solutions with Realm. This module builds on the previous UserDefaults and Core Data knowledge, introducing Realm as an alternative database framework for local storage on iOS.

----

## Project: Todo.

A task management application, that extends the previous Todo project by integrating Realm for structured local data persistence. The application follows the MVC architecture with a dedicated data model layer.

----

### Key Concepts.

- `UserDefaults` for simple key-value storage.
- Core Data framework for structured data persistence.
- Realm as a third-party database alternative.
- MVC architecture with separated Controllers, Models and Views.
- Data model design with `.xcdatamodeld`.
- Swift Package Manager for dependency management.

----

### Project Structure.

```
Todo/
├── Controllers/
├── Models/
│   └── DataModel.xcdatamodeld
├── Views/
│   └── Base.lproj/
├── Assets.xcassets/
└── Base.lproj/
```

----

<p align="right">
  <a href="../../README.md">Back to Main README.</a>
</p>
