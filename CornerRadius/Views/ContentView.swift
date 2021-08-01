//
//  ContentView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var turning = false
    @State private var input = ""
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack{
                Button(action: {turning.toggle()}, label: {
                    TurnButton()
                })
                
                if turning == true {
                    RectangleView(width: General.sizes.smallerRecSize, height: General.sizes.biggerRecSize, radius: convertingToCGFloat(input: input))
                }else{
                    RectangleView(width: General.sizes.biggerRecSize, height: General.sizes.smallerRecSize, radius: convertingToCGFloat(input: input))
                }
                
                VStack{
                    InputFieldView(input: $input)
                        .padding()
                }
            }
        }
            
    }
    func convertingToCGFloat(input: String) -> CGFloat{
        guard let value = NumberFormatter().number(from: input) else { return 0 }
        return CGFloat(truncating: value)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
