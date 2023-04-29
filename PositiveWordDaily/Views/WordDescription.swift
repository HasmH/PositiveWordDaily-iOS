//
//  WordDescription.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import SwiftUI
import AVFoundation

struct WordDescription: View {
    var wordType: String
    var pronunciation: String
    var audio: String
    @State var player: AVPlayer = AVPlayer()
    var body: some View {
        HStack {
            Text(wordType)
                .font(.custom("RobotoCondensed-LightItalic", size: 24))
            Text("|")
                .font(.custom("RobotoCondensed-LightItalic", size: 36))
            Text(pronunciation)
                .font(.custom("RobotoCondensed-LightItalic", size: 24))
            Button(action : {
                speak(audio: audio)
            }) {
                Image(systemName: "speaker.wave.3.fill")
            }
            .padding(5)
            .foregroundColor(.black)
        }
    }
    
    private func speak(audio: String) {
        let soundURL = URL(string: audio)!
        let playerItem = AVPlayerItem(url: soundURL)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
}

