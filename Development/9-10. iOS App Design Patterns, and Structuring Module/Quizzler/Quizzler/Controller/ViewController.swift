//
//  ViewController.swift
//  Quizzler
//
//  Created by Pavel Betenya on 22.10.25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var barProgress: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if quiz.checkAnswer(sender.currentTitle!) {
            print("Right.")
        } else {
            print("Wrong.")
        }
        
        quiz.nextQuestion()
        
        updateUI()
    }
    
    func updateUI() {
        questionText.text = quiz.getQuestionText()
        
        barProgress.progress = quiz.getProgress()
    }
}
