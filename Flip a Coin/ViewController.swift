//
//  ViewController.swift
//  Flip a Coin
//
//  Created by Jonathan Burnett on 24/11/2020.
//

import UIKit

let outcome = ["HEADS", "TAILS"]



class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        label.text = randomResult()
    }
    
    func randomResult() -> String {
        let random = arc4random_uniform(UInt32(outcome.count))
        return outcome[Int(random)]
    }


}

