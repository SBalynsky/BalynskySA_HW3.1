//
//  ContentView.swift
//  BalynskySA_HW3.1
//
//  Created by Macbook on 25.03.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
 
    
    private var redLight   : Color = .red
    private var yellowLight: Color = .yellow
    private var greenLight : Color = .green
    
    @State private var currentLight = CurrentLight.red
    private let lightIsOn  = 1.0
    private let lightIsOff = 0.3
    
    @State private var redLightOpacity = 0.3
    @State private var yellowOpacity   = 0.3
    @State private var greenOpacity    = 0.3
    
    @State private var buttonName    = "START"
    
   
  
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack{
                ColorCircle(color: redLight.opacity(redLightOpacity))
                ColorCircle(color: yellowLight.opacity(yellowOpacity))
                ColorCircle(color: greenLight.opacity(greenOpacity))
                Spacer()
                
                Button(action: {
                    buttonName = "NEXT"
                    switch currentLight {
                    case .red:
                        greenOpacity = lightIsOff
                        redLightOpacity = lightIsOn
                        currentLight = .yellow
                    case .yellow:
                        redLightOpacity = lightIsOff
                        yellowOpacity = lightIsOn
                        currentLight = .green
                    case .green:
                        greenOpacity = lightIsOn
                        yellowOpacity = lightIsOff
                        currentLight = .red
                    }
                }) {
                    Text(buttonName)
                        .frame(width: 250, height: 100)
                        .padding(.horizontal)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 3))
                }
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
