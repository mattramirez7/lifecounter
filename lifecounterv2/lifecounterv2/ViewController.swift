//
//  ViewController.swift
//  lifecounterv2
//
//  Created by Matthew Ramirez on 4/25/22.
//

import UIKit

class ViewController: UIViewController {
    var numPlayers: Int = 4
    
    var history = ""
    
    var P1Subview: PlayerView?
    
    var P2Subview: PlayerView?
    
    var P3Subview: PlayerView?
    
    var P4Subview: PlayerView?
    
    var P5Subview: PlayerView?
    
    var P6Subview: PlayerView?
    
    var P7Subview: PlayerView?
    
    var P8Subview: PlayerView?
    
    
    @IBOutlet weak var Player1View: PlayerView!
    
    @IBOutlet weak var Player2View: PlayerView!
    
    @IBOutlet weak var Player3View: PlayerView!
    
    @IBOutlet weak var Player4View: PlayerView!
    
    @IBOutlet weak var Player5View: PlayerView!
    
    @IBOutlet weak var Player6View: PlayerView!
    
    @IBOutlet weak var Player7View: PlayerView!
    
    @IBOutlet weak var Player8View: PlayerView!
    
    @IBOutlet weak var btnAddPlayer: UIButton!
    
    @IBAction func btnHistoryPressed(_ sender: Any) {
        NSLog("History Button Pressed")
        let history = HistoryViewController()
        present(history, animated: true) {
            NSLog("History presented")
        }
    }
    
    @IBAction func btnAddPlayerPressed(_ sender: Any) {
        if numPlayers != 8 {
            let newPlayer = "Player\(numPlayers + 1)View"
            if let newPlayerView = Bundle.main.loadNibNamed(newPlayer, owner: self, options: nil)?.first! as? PlayerView {
                numPlayers += 1
                if numPlayers == 3 {
                    P3Subview = newPlayerView
                    Player3View.addSubview(newPlayerView)
                    newPlayerView.frame = Player3View.bounds
                } else if numPlayers == 4 {
                    P4Subview = newPlayerView
                    Player4View.addSubview(newPlayerView)
                    newPlayerView.frame = Player4View.bounds
                } else if numPlayers == 5 {
                    P5Subview = newPlayerView
                    Player5View.addSubview(newPlayerView)
                    newPlayerView.frame = Player5View.bounds
                } else if numPlayers == 6 {
                    P6Subview = newPlayerView
                    Player6View.addSubview(newPlayerView)
                    newPlayerView.frame = Player6View.bounds
                } else if numPlayers == 7 {
                    P7Subview = newPlayerView
                    Player7View.addSubview(newPlayerView)
                    newPlayerView.frame = Player7View.bounds
                } else if numPlayers == 8 {
                    P8Subview = newPlayerView
                    Player8View.addSubview(newPlayerView)
                    newPlayerView.frame = Player8View.bounds
                }
            }
        }
    }
    
    @IBAction func btnRemovePlayerPressed(_ sender: Any) {
        if numPlayers > 2 {
            if numPlayers == 8 {
                P8Subview?.removeFromSuperview()
            } else if numPlayers == 7 {
                P7Subview?.removeFromSuperview()
            } else if numPlayers == 6 {
                P6Subview?.removeFromSuperview()
            } else if numPlayers == 5 {
                P5Subview?.removeFromSuperview()
            } else if numPlayers == 4 {
                P4Subview?.removeFromSuperview()
            } else {
                P3Subview?.removeFromSuperview()
            }
            numPlayers -= 1
        }
    }
    
    @IBAction func btnResetPressed(_ sender: Any) {
        
        P8Subview?.removeFromSuperview()
        P7Subview?.removeFromSuperview()
        P6Subview?.removeFromSuperview()
        P5Subview?.removeFromSuperview()
        P4Subview?.removeFromSuperview()
        P3Subview?.removeFromSuperview()
        P2Subview?.removeFromSuperview()
        P1Subview?.removeFromSuperview()
        
        if let player1View = Bundle.main.loadNibNamed("Player1View", owner: self, options: nil)?.first! as? PlayerView {
            P1Subview = player1View
            Player1View.addSubview(player1View)
            player1View.frame = Player1View.bounds
        }
        
        if let player2View = Bundle.main.loadNibNamed("Player2View", owner: self, options: nil)?.first! as? PlayerView {
            P2Subview = player2View
            Player2View.addSubview(player2View)
            player2View.frame = Player2View.bounds
        }
        
        if let player3View = Bundle.main.loadNibNamed("Player3View", owner: self, options: nil)?.first! as? PlayerView {
            P3Subview = player3View
            Player3View.addSubview(player3View)
            player3View.frame = Player3View.bounds
        }
        
        if let player4View = Bundle.main.loadNibNamed("Player4View", owner: self, options: nil)?.first! as? PlayerView {
            P4Subview = player4View
            Player4View.addSubview(player4View)
            player4View.frame = Player4View.bounds
        }
    }
    
    func isGameOver() {
        var numPlayersLeft = numPlayers
        if P8Subview?.scoreP8 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P7Subview?.scoreP7 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P6Subview?.scoreP6 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P5Subview?.scoreP5 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P4Subview?.scoreP4 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P3Subview?.scoreP3 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P2Subview?.scoreP2 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if P1Subview?.scoreP1 ?? 20 < 0 {
            numPlayersLeft -= 1
        }
        if numPlayersLeft == 1 {
            let alertController:UIAlertController = UIAlertController(title: "Message", message: "Game Over!", preferredStyle: UIAlertController.Style.alert)
            let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: btnResetPressed(_:))
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let player1View = Bundle.main.loadNibNamed("Player1View", owner: self, options: nil)?.first! as? PlayerView {
            P1Subview = player1View
            Player1View.addSubview(player1View)
            player1View.frame = Player1View.bounds
        }
        
        if let player2View = Bundle.main.loadNibNamed("Player2View", owner: self, options: nil)?.first! as? PlayerView {
            P2Subview = player2View
            Player2View.addSubview(player2View)
            player2View.frame = Player2View.bounds
        }
        
        if let player3View = Bundle.main.loadNibNamed("Player3View", owner: self, options: nil)?.first! as? PlayerView {
            P3Subview = player3View
            Player3View.addSubview(player3View)
            player3View.frame = Player3View.bounds
        }
        
        if let player4View = Bundle.main.loadNibNamed("Player4View", owner: self, options: nil)?.first! as? PlayerView {
            P4Subview = player4View
            Player4View.addSubview(player4View)
            player4View.frame = Player4View.bounds
        }
    }
}

extension ViewController: PlayerViewProtocol {
    func btnPlus1P1DidPressed(_ score: Int) {
        btnAddPlayer.isEnabled = false
        history = "\(score)"
        print(history)
    }
}

/*
 @IBAction history touch
 performSegue
 
 override func prepare
 
 */


