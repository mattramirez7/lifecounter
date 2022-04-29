//
//  PlayerView.swift
//  lifecounterv2
//
//  Created by Matthew Ramirez on 4/25/22.
//

import UIKit

protocol PlayerViewProtocol: AnyObject {
    func btnPlus1P1DidPressed(_ score: Int)
}

class PlayerView: UIView {
    
    var scoreP1 = 20
    var scoreP2 = 20
    var scoreP3 = 20
    var scoreP4 = 20
    var scoreP5 = 20
    var scoreP6 = 20
    var scoreP7 = 20
    var scoreP8 = 20
    
    @IBOutlet weak var lblScoreP1: UILabel!
    
    @IBOutlet weak var lblScoreP2: UILabel!
    
    @IBOutlet weak var lblScoreP3: UILabel!
    
    @IBOutlet weak var lblScoreP4: UILabel!
    
    @IBOutlet weak var lblScoreP5: UILabel!
    
    @IBOutlet weak var lblScoreP6: UILabel!
    
    @IBOutlet weak var lblScoreP7: UILabel!
    
    @IBOutlet weak var lblScoreP8: UILabel!
    
    @IBOutlet weak var txtFieldAddMinusValueP1: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP2: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP3: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP4: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP5: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP6: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP7: UITextField!
    
    @IBOutlet weak var txtFieldAddMinusValueP8: UITextField!
    
    
    var myDelegate: PlayerViewProtocol!
    
    
    func setCustomName(_ sender:UIButton) {
        let alert = UIAlertController(title: "Some Title", message: "Enter a custom name", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = ""
        }
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            print("Text field: \(textField!.text ?? "name")")
            sender.setTitle("\(textField!.text ?? "name")", for: .normal)
        }))
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnP1NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP2NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP3NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP4NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP5NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP6NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP7NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    @IBAction func btnP8NamePressed(_ sender: UIButton) {
        setCustomName(sender)
    }
    
    
    
    @IBAction func btnPlus1P1Pressed(_ sender: Any) {
        scoreP1 += Int(txtFieldAddMinusValueP1.text!)!
        lblScoreP1.text = "\(scoreP1)"
        if myDelegate != nil {
            self.myDelegate.btnPlus1P1DidPressed(scoreP1)
        }
    }
    
    @IBAction func btnMinus1P1Pressed(_ sender: Any) {
        scoreP1 -= Int(txtFieldAddMinusValueP1.text!)!
        lblScoreP1.text = "\(scoreP1)"
    }
    
    
    @IBAction func btnPlus1P2Pressed(_ sender: Any) {
        scoreP2 += Int(txtFieldAddMinusValueP2.text!)!
        lblScoreP2.text = "\(scoreP2)"
    }
    
    @IBAction func btnMinus1P2Pressed(_ sender: Any) {
        scoreP2 -= Int(txtFieldAddMinusValueP2.text!)!
        lblScoreP2.text = "\(scoreP2)"
    }
    
    
    @IBAction func btnPlus1P3Pressed(_ sender: Any) {
        scoreP3 += Int(txtFieldAddMinusValueP3.text!)!
        lblScoreP3.text = "\(scoreP3)"
    }
    
    @IBAction func btnMinus1P3Pressed(_ sender: Any) {
        scoreP3 -= Int(txtFieldAddMinusValueP3.text!)!
        lblScoreP3.text = "\(scoreP3)"
    }
    
    
    @IBAction func btnPlus1P4Pressed(_ sender: Any) {
        scoreP4 += Int(txtFieldAddMinusValueP4.text!)!
        lblScoreP4.text = "\(scoreP4)"
    }
    
    @IBAction func btnMinus1P4Pressed(_ sender: Any) {
        scoreP4 -= Int(txtFieldAddMinusValueP4.text!)!
        lblScoreP4.text = "\(scoreP4)"
    }
    
    
    @IBAction func btnPlus1P5Pressed(_ sender: Any) {
        scoreP5 += Int(txtFieldAddMinusValueP5.text!)!
        lblScoreP5.text = "\(scoreP5)"
    }
    
    @IBAction func btnMinus1P5Pressed(_ sender: Any) {
        scoreP5 -= Int(txtFieldAddMinusValueP5.text!)!
        lblScoreP5.text = "\(scoreP5)"
    }
    
    
    @IBAction func btnPlus1P6Pressed(_ sender: Any) {
        scoreP6 += Int(txtFieldAddMinusValueP6.text!)!
        lblScoreP6.text = "\(scoreP6)"
    }
    
    @IBAction func btnMinus1P6Pressed(_ sender: Any) {
        scoreP6 -= Int(txtFieldAddMinusValueP6.text!)!
        lblScoreP6.text = "\(scoreP6)"
    }
    
    
    @IBAction func btnPlus1P7Pressed(_ sender: Any) {
        scoreP7 += Int(txtFieldAddMinusValueP7.text!)!
        lblScoreP7.text = "\(scoreP7)"
    }
    
    @IBAction func btnMinus1P7Pressed(_ sender: Any) {
        scoreP7 -= Int(txtFieldAddMinusValueP7.text!)!
        lblScoreP7.text = "\(scoreP7)"
    }
    
    
    @IBAction func btnPlus1P8Pressed(_ sender: Any) {
        scoreP8 += Int(txtFieldAddMinusValueP8.text!)!
        lblScoreP8.text = "\(scoreP8)"
    }
    
    @IBAction func btnMinus1P8Pressed(_ sender: Any) {
        scoreP8 -= Int(txtFieldAddMinusValueP8.text!)!
        lblScoreP8.text = "\(scoreP8)"
    }
    
}
