//
//  PhotoView.swift
//  PositiveWordDaily
//
//  Created by HasmH on 25/4/2023.
//

import Foundation
import UniformTypeIdentifiers
import SwiftUI

struct PhotoView: View {
    let photo: Photo

    var body: some View {
        photo.image
            .toolbar {
                ShareLink(
                    item: photo,
                    preview: SharePreview(
                        photo.caption,
                        image: photo.image))
            }
    }
}

