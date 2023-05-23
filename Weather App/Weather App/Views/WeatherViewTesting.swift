//
//  WeatherViewTesting.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/5/23.
//

import SwiftUI
import Foundation

struct WeatherViewTesting: View {
    
    var temp: Double = 50
 var high: Double = 55
 var low: Double = 45
 var feelsLike: Double = 51
 var description: String = "Broken Clouds"
    
    
    
    var body: some View {
        ZStack{
            
            ZStack{
                Image("clouds")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                    Text("Hopkins, MN")
                        .font(.system(size:35))
                        .fontWeight(.bold)
                        .shadow(radius: 15)
                    Spacer()
                    VStack{
                            Text(String(format: "%.0f",temp) + "°")
                                .fontWeight(.bold)
                                .font(.system(size:177))
                        
                    }
                    .shadow(radius: 15)

                    
                    Spacer()
                    
                    
                }
                Image("clouds3")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
            VStack{
                Spacer()
                Text(description)
                    .offset(y: 180)
                    .bold()
                Spacer()
                ZStack{
                    Text("")
                        .frame(width: 333, height: 75)
                        .background(Color.black)
                        .cornerRadius(15)
                        .opacity(0.2)
                    HStack{
                        VStack{
                            Text(String(format: "%.0f",high) + "°")
                            Text("High")
                        }
                        .offset(x: -10)

                        ZStack{
                            Text("")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .opacity(0.9)
                            VStack{
                                Text(String(format: "%.0f",feelsLike) + "°")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Feels like")
                            }
                        }
                        
                        .padding()
                        VStack{
                            Text(String(format: "%.0f",low) + "°")
                            Text("Low")
                        }
                        .offset(x: 10)

                    }
                }
            }
        }
    }
}

    
    struct WeatherViewTesting_Previews: PreviewProvider {
        static var previews: some View {
            WeatherViewTesting()
        }
    }

