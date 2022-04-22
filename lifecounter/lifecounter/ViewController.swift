//
//  ViewController.swift
//  lifecounter
//
//  Created by Matthew Ramirez on 4/20/22.
//

import UIKit

class ViewController: UIViewController {
    var scoreP1 = 20
    var scoreP2 = 20
    
    @IBOutlet weak var lifeTotalPlayer1: UILabel!
    @IBOutlet weak var lifeTotalPlayer2: UILabel!
    @IBOutlet weak var loserMessageLabel: UILabel!
    
    
    func updateLifeTotalP1() {
        lifeTotalPlayer1.text = "Life Total: \(scoreP1)"
    }
    
    func updateLifeTotalP2() {
        lifeTotalPlayer2.text = "Life Total: \(scoreP2)"
    }
    
    func displayLoserLabel(_ player : String) {
        loserMessageLabel.textColor = .red
        loserMessageLabel.text = "\(player) LOSES!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loserMessageLabel.text = ""
        updateLifeTotalP1()
        updateLifeTotalP2()
    }

    @IBAction func btnPlusPlayer1(_ sender: Any) {
        scoreP1 += 1
        
        updateLifeTotalP1()
    }
    
    @IBAction func btnMinusPlayer1(_ sender: Any) {
        scoreP1 -= 1
        
        if scoreP1 <= 0 {
            displayLoserLabel("Player 1")
        }
        updateLifeTotalP1()
    }
    
    @IBAction func btnPlus5Player1(_ sender: Any) {
        scoreP1 += 5
        
        updateLifeTotalP1()
    }
    
    @IBAction func btnMinus5Player1(_ sender: Any) {
        scoreP1 -= 5
        
        if scoreP1 <= 0 {
            displayLoserLabel("Player 1")
        }
        updateLifeTotalP1()
    }
    
   
    @IBAction func btnPlusPlayer2(_ sender: Any) {
        scoreP2 += 1
        
        updateLifeTotalP2()
    }
    
    @IBAction func btnMinusPlayer2(_ sender: Any) {
        scoreP2 -= 1
        
        if scoreP2 <= 0 {
            displayLoserLabel("Player 2")
        }
        updateLifeTotalP2()
    }
    
    @IBAction func btnPlus5Player2(_ sender: Any) {
        scoreP2 += 5
        
        updateLifeTotalP2()
    }
    
    @IBAction func btnMinus5Player2(_ sender: Any) {
        scoreP2 -= 5
        
        if scoreP2 <= 0 {
            displayLoserLabel("Player 2")
        }
        updateLifeTotalP2()
    }
    
    
    
    
}

