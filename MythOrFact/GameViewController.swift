//
//  GameViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var livesLabel: UILabel!

    var gameBoard: GameBoard!
    var selectedCategory: String!
    var currentQuestion: Question!
    

    
//    func setGameBoard(listOfQuestions: [Question], firstQuestion: Question){
//        gameBoard = GameBoard(questions: listOfQuestions, currentQuestion: firstQuestion)
//    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let questionBank = QuestionBank(category: selectedCategory)
        gameBoard = GameBoard(questions: questionBank.allQuestions)
        //gameBoard.questions = questionBank.allQuestions
        scoreLabel.text = String(gameBoard.score)
        livesLabel.text = String(gameBoard.lives)
        currentQuestion = gameBoard.pickQuestion()
        questionTextLabel.text = currentQuestion.text
    }
    
    func nextQuestion(gameBoard: GameBoard) -> () {
        if (gameBoard.isGameOver()) {
            print("Setup GameOver Screen Here")
        }
        else {
            currentQuestion = gameBoard.pickQuestion()
            questionTextLabel.text = currentQuestion.text
        }
    }
    

    
    
    @IBAction func mythButtonTapped(sender: UIButton) {
        if (currentQuestion.fact == false) {
            gameBoard.manageScore()
            scoreLabel.text = String(gameBoard.score)
            
        }
        else {
            gameBoard.manageLives()
            livesLabel.text = String(gameBoard.lives)
        }
        nextQuestion(gameBoard)
    }

    @IBAction func factButtonTapped(sender: UIButton) {
        if (currentQuestion.fact == true) {
            gameBoard.manageScore()
            scoreLabel.text = String(gameBoard.score)
        }
        else {
            gameBoard.manageLives()
            livesLabel.text = String(gameBoard.lives)
        }
        nextQuestion(gameBoard)
    }
    
    
    
}
