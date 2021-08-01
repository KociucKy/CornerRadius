//
//  BackgroundView.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color("BackgroundColor2")
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
