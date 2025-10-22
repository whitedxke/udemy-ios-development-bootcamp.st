//
//  ViewController.swift
//  Quizzler
//
//  Created by Pavel Betenya on 22.10.25.
//

import UIKit

class ViewController: UIViewController {
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
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var barProgress: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        if userAnswer == actualAnswer {
            print("Right.")
        } else {
            print("Wrong.")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionText.text = quiz[questionNumber].text
    }
}
