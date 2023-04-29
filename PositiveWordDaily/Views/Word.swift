//
//  Word.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import SwiftUI

struct Word: View {
    var word: String
    var body: some View {
        Text(word)
            .padding()
            .font(.custom("RobotoCondensed-Regular", size: 36))
            .frame(alignment: .leading)
    }
}
