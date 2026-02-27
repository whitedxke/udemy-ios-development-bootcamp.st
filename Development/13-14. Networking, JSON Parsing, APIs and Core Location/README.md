# Networking, JSON Parsing, APIs & Core Location.

This module bridges the gap between static applications and dynamic, data-driven experiences by introducing live data fetching from the internet via APIs. The focus is on networking, asynchronous programming and location services.

----

## Project: Clima.

A dark-mode weather application, that provides real-time weather updates based on the user's current GPS location or a manually searched city. The application fetches live data from a weather API and displays temperature, conditions and a corresponding weather icon.

----

### Key Concepts.

- **Networking:** `URLSession` for HTTP requests, completion handlers closures.
- **Data Parsing:** JSON decoding with `Codable` (`Encodable` & `Decodable`).
- **Location:** Core Location framework for GPS-based weather updates.
- **Architecture:** Delegate pattern, protocols and extensions.
- **Swift Features:** Computed properties, `guard` keyword, type safety.
- **UI:** Dark mode support, vector assets, `UITextField` with delegate.

----

### Project Structure.

```
Clima/
├── Controller/
│   ├── WeatherViewController.swift
│   └── WeatherManager.swift
├── Model/
│   ├── WeatherData.swift
│   └── WeatherModel.swift
├── View/
│   └── Base.lproj/
│       └── Main.storyboard
├── AppDelegate.swift
├── SceneDelegate.swift
└── Info.plist
```

----

<p align="right">
  <a href="../../README.md">Back to Main README.</a>
</p>
