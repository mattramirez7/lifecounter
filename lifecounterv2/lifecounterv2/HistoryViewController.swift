//
//  HistoryViewController.swift
//  lifecounterv2
//
//  Created by Matthew Ramirez on 4/25/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBAction func btnBackPressed(_ sender: Any) {
        NSLog("Back button pressed")
        
        self.dismiss(animated: true) {
          NSLog("Dismissed!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
