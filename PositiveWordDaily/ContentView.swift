//
//  ContentView.swift
//  PositiveWordDaily
//
//  Created by HasmH on 15/4/2023.
//

import SwiftUI

struct ContentView: View {
    @State var word = ""
    @State var definition = ""
    @State var example = ""
    @State var wordType = ""
    @State var pronunciation = ""
    @State var audio = ""
    @State var isLoading = false
    private let photo = Photo(image: Image(systemName: "square.and.arrow.up"), caption: "as")
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                if isLoading {
                    ProgressView()
                } else {
                    Word(word: word)
                    WordDescription(wordType: wordType, pronunciation: pronunciation, audio: audio)
                    Defition(defintion: definition)
                    Example(example: example)
                    ShareLink(
                        item: photo,
                        subject: Text("Cool Photo"),
                        message: Text("Check it out!"),
                        preview: SharePreview(
                            photo.caption,
                            image: photo.image)) {
                                Image(systemName: "square.and.arrow.up")
                                    .scaleEffect(1.5)
                            }
                            .foregroundColor(.black)
                    
                }
            }.onAppear {
                isLoading = true
                getWordOfTheDay { result in
                    switch result {
                    case .success(let wordOfTheDay):
                        word = wordOfTheDay.word
                        example = wordOfTheDay.example
                        wordType = wordOfTheDay.type
                        definition = wordOfTheDay.definition
                        pronunciation = wordOfTheDay.pronunciation
                        audio = wordOfTheDay.audio
                        isLoading = false
                    case .failure(let error):
                        print("Error: \(error)")
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 175)
            //.padding(.top, 175)
        }
        .padding()
    }
}

func getWordOfTheDay(completion: @escaping (Result<WordOfTheDay, Error>) -> Void) {
    let url = URL(string: "http://127.0.0.1:5000/api/word")!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data else {
            completion(.failure(error ?? NSError(domain: "com.example.app", code: 0, userInfo: nil)))
            return
        }
        do {
            let decoder = JSONDecoder()
            let wordOfTheDay = try decoder.decode(WordOfTheDay.self, from: data)
            completion(.success(wordOfTheDay))
        } catch {
            completion(.failure(error))
        }
    }
    task.resume()
}

//TODO: - Roll API Key 
//TODO: - Screenshot app view, save it as Photo object and pass it down to ShareLink/SharePreview
//TODO: - Filter out words.txt
//TODO: - Publish on App Store for $0.99
