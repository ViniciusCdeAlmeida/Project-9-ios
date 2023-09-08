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
    
    let questions = [
        ["Four + Two is equal to Six", "True"],
        ["Four - Two is equal to Two", "True"],
        ["Four - One is equal to Two", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
    }
    
    @IBAction func anwserButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[questionNumber][1]
        if(userAnswer == actualAnswer){
            if(questionNumber + 1 < questions.count){
                questionNumber += 1
            } else {
                questionNumber = 0
            }
            updateUi()
        }
        
    }
    
    func updateUi(){
        questionLabel.text = questions[questionNumber][0]
        
    }
    

}

