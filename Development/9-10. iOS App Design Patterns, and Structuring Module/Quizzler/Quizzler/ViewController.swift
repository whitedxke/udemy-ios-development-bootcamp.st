//
//  ViewController.swift
//  Quizzler
//
//  Created by Pavel Betenya on 22.10.25.
//

import UIKit

class ViewController: UIViewController {
    let quiz = [
        [
            "I'm in detective fiction, it's the lowest genre of literature.",
            "True",
        ],
        [
            "I'm kind of from the royal family.",
            "True",
        ],
        [
            "The best way to mind your own business is to know what it is.",
            "False",
        ],
        [
            "The more time you spend with a person, the more you're bound to see them as human.",
            "True",
        ],
        [
            "It's not hard to convince a person that you love them if they want to hear it.",
            "False",
        ],
        [
            "Never let yourself panic. No matter how bad it is, the main thing is to try to calm down and collect your thoughts.",
            "True",
        ],
        [
            "Happy people wish happiness to everyone.",
            "False",
        ],
        [
            "I didn't know before that you can love anyone's flaws as well as their virtues.",
            "False",
        ],
        [
            "If there is no trust, there is nothing.",
            "True",
        ],
        [
            "Is there a decent punishment for insults, for lying, for manipulation, for breaking a person's heart?",
            "True",
        ],
        [
            "It's a terrible feeling: knowing that something went wrong, but not being able to fix it.",
            "False",
        ],
        [
            "It is better to make a mistake, but to do something, than not to make mistakes without doing anything.",
            "True",
        ],
        [
            "I love you. Not in a friendly way. But I'm waiting for the moment to say it. Why rush if your whole life is ahead of you?",
            "False",
        ],
        [
            "Loving smart women is a double-edged sword.",
            "True",
        ],
        [
            "People believe in what fits into their worldview.",
            "True",
        ],
        [
            "Yes, relationships are scary. You can't get as many opportunities without taking some risk.",
            "False",
        ],
        [
            "Is it a miracle that love exists at all, or is it a myth?",
            "True",
        ],
        [
            "We don't notice the signs when we're in love.",
            "True",
        ],
        [
            "People buy books because of the popularity of a writer, not because they want to feel something.",
            "False",
        ],
        [
            "Sometimes a person gets exactly what he wanted with all his heart..and this becomes his ideal punishment.",
            "True",
        ],
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
        let actualAnswer = quiz[questionNumber][1]
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
        questionText.text = quiz[questionNumber][0]
    }
}
