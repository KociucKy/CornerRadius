//
//  TextViews.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 02/08/2021.
//

import SwiftUI

struct TextViews: View {
    var body: some View {
        VStack {
            TitleView(text: "LabelX")
            SubTittleView(text: "Explaining what to do")
        }
    }
}

struct TitleView: View{
    let text: String
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .universalTextStyle()
    }
}

struct SubTittleView: View{
    let text: String
    var body: some View{
        Text(text)
            .font(.title3)
            .universalTextStyle()
    }
}

extension Text{
    func universalTextStyle() -> some View {
            self.bold()
                .kerning(General.sizes.kerning)
                .foregroundColor(Color("InputColor"))
                .shadow(radius: General.sizes.shadow, x: General.sizes.shadow, y: General.sizes.shadow)
        }
}
struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundView()
            TextViews()
        }
    }
}
