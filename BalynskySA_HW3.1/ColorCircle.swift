//
//  ColorCircle.swift
//  BalynskySA_HW3.1
//
//  Created by Macbook on 25.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
           
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}

