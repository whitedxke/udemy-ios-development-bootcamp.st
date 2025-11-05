//
//  Question.swift
//  Quizzler
//
//  Created by Pavel Betenya on 22.10.25.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
