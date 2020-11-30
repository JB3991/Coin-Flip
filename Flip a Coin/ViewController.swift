//
//  ViewController.swift
//  Flip a Coin
//
//  Created by Jonathan Burnett on 24/11/2020.
//

import UIKit

let outcome = ["HEADS", "TAILS"]
var score: Int = 0


class ViewController: UIViewController {
    
    @IBAction func buttonPressed(_ sender: Any) {
        label.text = randomResult()
        scoreLabel.text = "Head count = \(score)"
        
        if label.text == "HEADS" {
            score += 1
        }
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func randomResult() -> String {
        let random = arc4random_uniform(UInt32(outcome.count))
        return outcome[Int(random)]
        }


    

}
