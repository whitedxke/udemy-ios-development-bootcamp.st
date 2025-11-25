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
        print("\(url)")
    }
}
