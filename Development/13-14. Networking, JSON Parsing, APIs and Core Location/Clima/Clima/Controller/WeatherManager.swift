//
//  WeatherManager.swift
//  Clima
//
//  Created by Pavel Betenya on 25.11.25.
//

import Foundation
import CoreLocation

struct WeatherManager {
    let apiKey = "openweathermap-api-key"
    
    let domain = "https://api.openweathermap.org"
    
    let path = "/data/2.5/weather"
    
    let parameter = "units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func getWeatherByCity(_ city: String) {
        let url = "\(domain)\(path)?appid=\(apiKey)&q=\(city)&\(parameter)"
        performRequest(url)
    }
    
    func getWeatherByLocation(_ latitude: CLLocationDegrees, _ longitute: CLLocationDegrees) {
        let url = "\(domain)\(path)?appid=\(apiKey)&lat=\(latitude)&lon=\(longitute)&\(parameter)"
        performRequest(url)
    }
    
    func performRequest(_ url: String) {
        // Step 1. Create URL-link.
        if let url = URL(string: url) {
            // Step 2. Create URL-session.
            let session = URLSession(configuration: .default)
            
            // Step 3. Give the session a task.
            let task = session.dataTask(with: url) {(data, respones, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error!)
                    return
                }
                
                if let json = data {
                    if let weather = self.parseJSON(json) {
                        self.delegate?.didUpadateWether(self, weather: weather)
                    }
                }
            }
            
            // Step 4. Start the task.
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> WeatherModel? {
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
            
            return weather
            
        } catch {
            self.delegate?.didFailWithError(error)
            return nil
        }
    }
}

protocol WeatherManagerDelegate {
    func didUpadateWether(
        _ weatherManager: WeatherManager,
        weather: WeatherModel,
    )
    
    func didFailWithError(_ error: Error)
}
