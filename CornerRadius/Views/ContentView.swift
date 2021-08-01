//
//  ContentView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var turning = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack{
                Button(action: {turning.toggle()}, label: {
                    TurnButton()
                })
                
                if turning == true {
                    RectangleView(width: General.sizes.smallerRecSize, height: General.sizes.biggerRecSize)
                }else{
                    RectangleView(width: General.sizes.biggerRecSize, height: General.sizes.smallerRecSize)
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
