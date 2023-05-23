//
//  OvercastView.swift
//  Weather App
//
//  Created by Calvin Bredesen24 on 5/16/23.
//

import SwiftUI
import EffectsLibrary

struct OvercastView: View {
    
    var temp: Double = 51
 var high: Double = 55
 var low: Double = 45
 var feelsLike: Double = 51
 var description: String = "Broken Clouds"
    
    var body: some View {
        
        ZStack{
            Image("overcastClouds")
            
                
                
            Text(String(format: "%.0f",temp) + "°")
                    .fontWeight(.bold)
                    .font(.system(size:177))
                    .offset(y: -10)
                    .shadow(radius: 15)
                    .foregroundColor(.black)
            
            
            Image("overcastClouds2")
                .opacity(0.7)
            VStack{
                Text("Hopkins, MN")
                    .font(.system(size:35))
                    .fontWeight(.bold)
                    .shadow(radius: 15)
                    .foregroundColor(.black)
                    .offset(y: 220)
                Spacer()
                Text(description)
                    .offset(y: 125)
                    .bold()
                    .foregroundColor(.black)
                    .shadow(radius: 15)
                Spacer()
                ZStack{
                    Text("")
                        .frame(width: 333, height: 75)
                        .background(Color.black)
                        .cornerRadius(15)
                        .opacity(0.5)
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
                .offset(y: -200)
            }

            
        }
    }
}

struct OvercastView_Previews: PreviewProvider {
    static var previews: some View {
        OvercastView()
    }
}
