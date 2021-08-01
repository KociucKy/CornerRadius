//
//  ButtonView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack{
            TurnButton()
        }
    }
}

struct TurnButton: View{
    var body: some View{
        Image(systemName: "arrowshape.turn.up.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color("ButtonColor"))
            .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
