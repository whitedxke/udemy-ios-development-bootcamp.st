//
//  Quiz.swift
//  Quizzler
//
//  Created by Pavel Betenya on 28.10.25.
//

import Foundation

struct Quiz {
    let quiz = [
        Question(
            text: "Two plus two equals four.",
            answer: "True",
        ),
        Question(
            text: "Six plus six equals twelve.",
            answer: "True",
        ),
        Question(
            text: "Six minus five equals zero.",
            answer: "False",
        ),
        Question(
            text: "One plus two equals three.",
            answer: "True",
        ),
        Question(
            text: "Twenty-four divided by twenty-four makes eighteen.",
            answer: "False",
        ),
        Question(
            text: "One times twenty-one makes four.",
            answer: "False",
        ),
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
