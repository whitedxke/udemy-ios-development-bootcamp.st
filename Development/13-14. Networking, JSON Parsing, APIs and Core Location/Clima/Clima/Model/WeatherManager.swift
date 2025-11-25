//
//  WeatherManager.swift
//  Clima
//
//  Created by Pavel Betenya on 25.11.25.
//

import Foundation

struct WeatherManager {
    let apiKey = "openweathermap-api-key"
    
    let domain = "https://api.openweathermap.org"
    let path = "/data/2.5/weather"
    let parameter = "units=metric"
    
    var weatherURL: String {
        "\(domain)\(path)?\(parameter)&appid=\(apiKey)"
    }
    
    func getWeather(city: String) {
        let url = "\(weatherURL)&q=\(city)"
        performRequest(url: url)
    }
    
    func performRequest(url: String) {
        // Step 1. Create URL-link.
        if let url = URL(string: url) {
            // Step 2. Create URL-session.
            let session = URLSession(configuration: .default)
            
            // Step 3. Give the session a task.
            let task = session.dataTask(with: url) {(data, respones, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            
            // Step 4. Start the task.
            task.resume()
        }
    }
}
