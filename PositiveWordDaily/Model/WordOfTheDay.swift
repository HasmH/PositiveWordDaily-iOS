//
//  Result.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import Foundation

struct WordOfTheDay: Codable {
    let word: String
    let definition: String
    let example: String
    let type: String
    let pronunciation: String
    let audio: String
}
