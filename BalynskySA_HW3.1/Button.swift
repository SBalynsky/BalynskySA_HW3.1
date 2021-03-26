//
//  Button.swift
//  BalynskySA_HW3.1
//
//  Created by Macbook on 25.03.2021.
//

import SwiftUI

struct Button: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
            
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
