//
//  RainWeatherView.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/5/23.
//

import SwiftUI
import EffectsLibrary
import Foundation

struct RainWeatherView: View {
    
    var config = RainConfig()

    var temp: Double = 51
 var high: Double = 55
 var low: Double = 45
 var feelsLike: Double = 51
 var description: String = "Broken Clouds"
        
        
    var body: some View {
        ZStack{
            Image("rain")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .shadow(radius: 15)

            Text(String(format: "%.0f",temp) + "°")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size:177))
                .offset(y: -10)
                .shadow(radius: 15)

            Text(description)
                .offset(y: 80)
                .bold()
                .foregroundColor(.white)
                .shadow(radius: 15)

            VStack{
                Text("Hopkins, MN")
                    .font(.system(size:35))
                    .fontWeight(.bold)
                    .shadow(radius: 15)
                Spacer()
            ZStack{
                Text("")
                    .frame(width: 333, height: 75)
                    .background(Color.black)
                    .cornerRadius(15)
                    .opacity(0.7)
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
            .foregroundColor(.white)
            RainView(
            config: RainConfig(
            content: [
                .shape(.circle, .blue, 0.1),
            ],
            intensity: .high,
            initialVelocity: .fast
            )
            )
                

        }
    }
}

struct RainWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        RainWeatherView()
    }
}
