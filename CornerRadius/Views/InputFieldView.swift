//
//  InputFieldView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var input: String
    var body: some View {
        TextField("Value", text: $input)
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("TextColor"))
            .frame(width: General.sizes.inputWidth, height: General.sizes.inputHeight, alignment: .center)
            .background(Color("InputColor"))
            .cornerRadius(General.sizes.cornerRadius)
            .shadow(radius: General.sizes.shadow, x:General.sizes.shadow, y:General.sizes.shadow)
    }
}

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView(input: .constant("21.0"))
    }
}
