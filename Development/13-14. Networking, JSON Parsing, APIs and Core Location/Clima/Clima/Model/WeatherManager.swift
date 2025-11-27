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
    
    func getWeather(city: String) {
        let url = "\(domain)\(path)?appid=\(apiKey)&q=\(city)&\(parameter)"
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
                
                if let json = data {
                    self.parseJSON(data: json)
                }
            }
            
            // Step 4. Start the task.
            task.resume()
        }
    }
    
    func parseJSON(data: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: data)
            let conditionId = decodedData.weather[0].id
            let city = decodedData.name
            let temperature = decodedData.main.temp
            
            let weather = WeatherModel(
                conditionId: conditionId,
                city: city,
                temperature: temperature,
            )
            
        } catch {
            print(error)
        }
    }
}
