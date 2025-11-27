//
//  ViewController.swift
//  Clima
//
//  Created by Pavel Betenya on 18.11.25.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var conditionImageView: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherManager.delegate = self
        searchTextField.delegate = self
    }
}

// MARK: UITextFieldDelegate.

extension WeatherViewController: UITextFieldDelegate {
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something here.."
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            weatherManager.getWeather(city)
        }
        searchTextField.text = ""
    }
}

// MARK: WeatherManagerDelegate.

extension WeatherViewController: WeatherManagerDelegate {
    func didUpadateWether(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.cityLabel.text = weather.city
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
        }
    }
    
    func didFailWithError(_ error: Error) {
        
    }
}
