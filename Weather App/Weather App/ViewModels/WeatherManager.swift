//
//  WeatherManager.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/4/23.
//

import Foundation




class WeatherManager: ObservableObject {
    //Store the weather data
    @Published var weather: WeatherData?
    
    func fetchWeatherData(){
        //Get the URL
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Hopkins&appid=2cc525d62158250b8e99aae054296a1f&units=imperial") else { return }
           //Get the data from URLSession
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                //Create a Swift Decoder object - its job is to translate JSON to structs
                let decoder = JSONDecoder()
                //Translate the data using the decoder into a WeaterData
                let decodedWeather = try! decoder.decode(WeatherData.self, from: data!)
                //Set the value of my WeatherData variable to whatever was downloaded from the API
                DispatchQueue.main.async {
                    self.weather = decodedWeather
                }
                

            }
            .resume()
        
    }
}
