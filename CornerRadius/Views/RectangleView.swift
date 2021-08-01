//
//  RectangleView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct RectangleView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(Color("RectangleColor"))
            .frame(width: width, height: height)
            .shadow(radius: General.sizes.shadow, x: General.sizes.shadow, y: General.sizes.shadow)
            
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundView()
            RectangleView(width: 300, height: 150)
        }
    }
}
