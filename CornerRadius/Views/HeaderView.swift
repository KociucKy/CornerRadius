//
//  HeaderView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 02/08/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
            VStack{
                TitleView(text: General.strings.title)
                SubTittleView(text: General.strings.firstThingToDo)
                SubTittleView(text: General.strings.secondThingToDo)
            }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundView()
            HeaderView()
        }
    }
}
