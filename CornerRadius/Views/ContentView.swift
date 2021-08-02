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
    @State private var topLeftInput = ""
    @State private var topRightInput = ""
    @State private var bottomLeftInput = ""
    @State private var bottomRightInput = ""
    @State private var text = "Hello World"
    
    var body: some View {
        ZStack {
            BackgroundView()

            VStack(spacing: 150){
                HeaderView()
                
                Text(input)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .background(RectangleView(color: Color("RectangleColor"), tl: convertingToCGFloat(input: topLeftInput), tr: convertingToCGFloat(input: topRightInput), bl: convertingToCGFloat(input: bottomLeftInput), br: convertingToCGFloat(input: bottomRightInput)))
                
                VStack{
                    InputFields(topLeftInput: $topLeftInput, topRightInput: $topRightInput, bottomLeftInput: $bottomLeftInput, bottomRightInput: $bottomRightInput)
                        .padding()
                    
                    InputFieldView(input: $input, label: "Label Text")
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
