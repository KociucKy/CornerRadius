//
//  InputFieldView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var input: String
    let label: String
    var body: some View {
        TextField(label, text: $input)
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("TextColor"))
            .frame(width: General.sizes.inputWidth, height: General.sizes.inputHeight, alignment: .center)
            .background(Color("InputColor"))
            .cornerRadius(General.sizes.cornerRadius)
            .shadow(radius: General.sizes.shadow, x:General.sizes.shadow, y:General.sizes.shadow)
    }
}

struct UpperFieldViews: View{
    @Binding var topLeftInput: String
    @Binding var topRightInput: String
    var body: some View{
        HStack{
            InputFieldView(input: $topLeftInput, label: "Top Left")
                .keyboardType(.numberPad)
            InputFieldView(input: $topRightInput, label: "Top Right")
                .keyboardType(.numberPad)
        }
    }
}

struct BottomFieldViews: View{
    @Binding var bottomLeftInput: String
    @Binding var bottomRightInput: String
    
    var body: some View{
        HStack{
            InputFieldView(input: $bottomLeftInput, label: "Bottom Left")
                .keyboardType(.numberPad)
            InputFieldView(input: $bottomRightInput, label: "Bottom Right")
                .keyboardType(.numberPad)
        }
    }
}

struct InputFields: View{
    @Binding var topLeftInput: String
    @Binding var topRightInput: String
    @Binding var bottomLeftInput: String
    @Binding var bottomRightInput: String
    var body: some View{
        VStack{
            UpperFieldViews(topLeftInput: $topLeftInput, topRightInput: $topRightInput)
                .keyboardType(.numberPad)
            BottomFieldViews(bottomLeftInput: $bottomLeftInput, bottomRightInput: $bottomRightInput)
                .keyboardType(.numberPad)
        }
    }
}

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView(input: .constant("21.0"), label: "Value")
    }
}
