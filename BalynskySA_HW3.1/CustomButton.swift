////
////  CustomButton.swift
////  BalynskySA_HW3.1
////
////  Created by Macbook on 25.03.2021.
////
//
//import SwiftUI
//
//enum CurrentLight {
//    case red, yellow, green
//}
//
//struct CustomButton: View {
//    
//   
//    public var redLight   : Color = .red
//    public var yellowLight: Color = .yellow
//    public var greenLight : Color = .green
//    
//    public var redLightOpacity = 0.3
//    @State  public var yellowOpacity   = 0.3
//    public var greenOpacity    = 0.3
//    
//  
//    
//    
//    var body: some View {
//        
//        Button(action: {
//          
//                yellowOpacity = 1
//           
//            
//        }) {
//            Text("Start")
//                .frame(width: 250, height: 100)
//                .padding(.horizontal)
//                .background(Color.blue)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.white, lineWidth: 3))
//        }
//        
//        
//    }
//    
//    
//    
//    struct CustomButton_Previews: PreviewProvider {
//        static var previews: some View {
//            CustomButton()
//            
//            
//        }
//    }
//}
