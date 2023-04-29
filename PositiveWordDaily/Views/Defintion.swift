//
//  Defintion.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import SwiftUI

struct Defition: View {
    var defintion: String
    var body: some View {
        Text(defintion)
            .padding()
            .font(.custom("RobotoCondensed-LightItalic", size: 24))
            .frame(width: 290)
            .lineLimit(nil)
    }
}
