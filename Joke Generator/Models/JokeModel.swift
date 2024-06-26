//
//  JokeModel.swift
//  Joke Generator
//
//  Created by Александр Плешаков on 20.01.2024.
//

import Foundation

struct JokeModel: Decodable {
    let id: Int
    let type: String
    let setup: String
    let delivery: String
}

struct JokeModelMock {
    private let jokes = [
            JokeModel(id: 1,
                      type: "general",
                      setup: "What's Forrest Gump's password?",
                      delivery: "1Forrest1"),
            JokeModel(id: 167,
                      type: "numbers",
                      setup: "What did the 0 say to the 8?",
                      delivery: "Nice belt."),
            JokeModel(id: 23,
                      type: "animals",
                      setup: "What do you call a careful wolf?",
                      delivery: "Aware wolf"),
            JokeModel(id: 999,
                      type: "general",
                      setup: "99.9% of the people are dumb!",
                      delivery: "Fortunately I belong to the remaining 1%"),
            JokeModel(id: 834,
                      type: "countries",
                      setup: "What’s the advantage of living in Switzerland?",
                      delivery: "Well, the flag is a big plus."),
            JokeModel(id: 737,
                      type: "programming",
                      setup: "- Knock-knock\n- Who's there?",
                      delivery: "Alert"),
        ]
    
    func jokesCont() -> Int {
        jokes.count
    }
    
    func getJoke() -> JokeModel {
        jokes[Int.random(in: 0..<jokes.count)]
    }

}
