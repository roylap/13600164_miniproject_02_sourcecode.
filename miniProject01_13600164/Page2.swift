//
//  Page2.swift
//  miniProject01_13600164
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 Kanyanat Roylap. All rights reserved.
//

import Foundation
import UIKit

class Page2: UIViewController {

    @IBOutlet weak var questionCounter: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressView: UIView!
    
    
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    @IBOutlet weak var showTimer: UILabel!
    
    
    //button
    
    @IBOutlet weak var optionA: UIButton!
    
    @IBOutlet weak var optionB: UIButton!
    
    @IBOutlet weak var optionC: UIButton!
    
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank ()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    var timer = Timer()
    var timeCount = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateQuestion()
        updateUI()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Page2.processTimer), userInfo: nil, repeats: true)
    }
    
    @objc func processTimer(){
        if timeCount > 0 {
            timeCount -= 1
            showTimer.text = String(timeCount)
        }else{
            timer.invalidate()
        }
        if timeCount <= 0 {
            timeCount=0
            showTimer.text = String(timeCount)
        }
        showTimer.text = String(timeCount)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
//         ProgressHUD.showSuccess("correct")
        
        }else{
            print("wrong")
//            ProgressHUD.showError("wrong")
        }
         questionNumber += 1
        updateQuestion()
        updateUI()
}

    func updateQuestion(){
        
    
        if questionNumber < allQuestions.list.count - 1{
            pictureView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
   
        }else{
            let alert = UIAlertController(title: "คุณได้สิทธ์ส่วนลดแล้ว", message: "ต้องการเริ่มเล่นใหม่หรือไม่ ?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
    
        updateUI()
        
    }
    
    
    

    func updateUI(){
        
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
 }


    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
        
}



}

