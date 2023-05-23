//
//  CurrentWeather.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/4/23.
//

import Foundation



struct WeatherData: Codable {
var weather: [Weather]
var main: Main
var name: String
    
}

struct Weather: Codable {
var main: String
    var description: String
    
    
}

struct Main: Codable {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
}
