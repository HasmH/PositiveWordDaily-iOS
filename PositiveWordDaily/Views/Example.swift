//
//  Example.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import SwiftUI

struct Example: View {
    var example: String
    var body: some View {
        Text("// " + example)
            .padding()
            .font(.custom("RobotoCondensed-LightItalic", size: 24))
            .foregroundColor(.gray)
            .frame(width: 300)
            .lineLimit(nil)
    }
}
