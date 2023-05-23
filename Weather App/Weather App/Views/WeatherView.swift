//
//  WeatherView.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/4/23.
//

import SwiftUI
import Foundation

struct WeatherView: View {
    
    @StateObject var manager = WeatherManager()
    
    
    
    var body: some View {
        ZStack {
            
            if let weather = manager.weather {
                
                if  weather.weather[0].main == "Clear" {
                    WeatherViewTesting(temp: weather.main.temp, high: weather.main.temp_max, low: weather.main.temp_min, feelsLike: weather.main.feels_like, description: weather.weather[0].description.capitalized)
                
            } else if weather.weather[0].main == "Rain" || weather.weather[0].main == "Drizzle" || weather.weather[0].main == "Thunderstorm" {
                RainWeatherView(temp: weather.main.temp, high: weather.main.temp_max, low: weather.main.temp_min, feelsLike: weather.main.feels_like, description: weather.weather[0].description.capitalized)
            } else  if weather.weather[0].main == "Clouds"{
                if weather.weather[0].description == "few clouds" || weather.weather[0].description == "scattered clouds" {
                    WeatherViewTesting(temp: weather.main.temp, high: weather.main.temp_max, low: weather.main.temp_min, feelsLike: weather.main.feels_like, description: weather.weather[0].description.capitalized)
                } else if weather.weather[0].description == "broken clouds" || weather.weather[0].description ==  "overcast clouds" {
                    OvercastView(temp: weather.main.temp, high: weather.main.temp_max, low: weather.main.temp_min, feelsLike: weather.main.feels_like, description: weather.weather[0].description.capitalized)
                }
            } else {
                VStack{
                    ProgressView()
                    
                    Text("App Currently Not working")
                        .font(.system(size:35))
                        .fontWeight(.bold)
                        .shadow(radius: 15)
                        .foregroundColor(.black)
                }
            }
                
            } else {
                ProgressView()
            }
        }
        .onAppear {
            manager.fetchWeatherData()
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
