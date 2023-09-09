//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
    }
    
    @IBAction func anwserButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let rightAnswer = quizBrain.checkAnswer(answer: userAnswer)
        
        if(rightAnswer){
            sender.backgroundColor = UIColor.green
            quizBrain.nextQuestion()
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
        }
        else {
            sender.backgroundColor = UIColor.red
            
        }
        
    }
    
  @objc func updateUi(){
      questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
      progressBar.progress = quizBrain.getProgressValue()
    }
    

}

