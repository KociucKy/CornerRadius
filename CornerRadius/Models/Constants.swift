//
//  Constants.swift
//  CornerRadius
//
//  Created by Kuba Kociucki on 01/08/2021.
//

import Foundation
import UIKit

enum General{
    enum sizes{
        public static let biggerRecSize = CGFloat(300.0)
        public static let smallerRecSize = CGFloat(150.0)
        public static let shadow = CGFloat(5.0)
        public static let inputWidth = CGFloat(130.0)
        public static let inputHeight = CGFloat(50.0)
        public static let cornerRadius = CGFloat(21.0)
    }
}

func convertingToCGFloat(input: String) -> CGFloat{
    guard let value = NumberFormatter().number(from: input) else { return 0 }
    return CGFloat(truncating: value)
}
