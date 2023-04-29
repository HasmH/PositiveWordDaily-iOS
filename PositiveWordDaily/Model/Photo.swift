//
//  Photo.swift
//  PositiveWordDaily
//
//  Created by HasmH on 25/4/2023.
//

import Foundation
import UniformTypeIdentifiers
import SwiftUI

struct Photo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }

    public var image: Image
    public var caption: String
}

