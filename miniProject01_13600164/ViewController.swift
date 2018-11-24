//
//  ViewController.swift
//  miniProject01_13600164
//
//  Created by ict on 9/11/2561 BE.
//  Copyright © 2561 Kanyanat Roylap. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    
    var soundFilesName = ["Prelude",]
    
    @IBOutlet var randomWord: UILabel!
    
    
    @IBOutlet var imageOne: UIImageView!
    
    
    @IBOutlet var imageTwo: UIImageView!
    
    let imageNames = ["cupcake","cake","bread1","sand1","drink1","drink2"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func showWord(_ sender: Any) {
//        playSound(_playThis: soundFilesName[0])
//
        showtext()
}
    
    @IBAction func showImages(_ sender: Any) {
        //playSound(_playThis: soundFilesName[1])
    showimage()
//
        }
    
    func showtext()  {
        let array = ["ส่วนลด 5 %","ส่วนลด 20 %","ส่วนลด 10 %","ส่วนลด 50 %","ส่วนลด 70 %"]
        let RandomWordGen = Int(arc4random_uniform(UInt32(array.count)))
        randomWord.text = array[RandomWordGen]
    }
    
    func showimage()  {
        let leftNumber:Int = Int(arc4random_uniform(6))
        
        imageOne.image = UIImage (named:imageNames[leftNumber])
        
        let rightNumber:Int = Int(arc4random_uniform(6))
        
        imageTwo.image = UIImage (named:imageNames[rightNumber])
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            
            showtext()
            showimage()
            
        }
        
      
        
        
        
        
        
    }

    
//    func playSound(_playThis: String) {
//
//        let soundURL = Bundle.main.url (forResource: _playThis , withExtension:"mp3")
//
//        audioPlayer = try!AVAudioPlayer(contentsOf:soundURL!)
//        audioPlayer.play()
//    }
    

     }


    
    
    
    
    



