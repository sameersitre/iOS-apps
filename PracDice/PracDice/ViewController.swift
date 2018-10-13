//
//  ViewController.swift
//  PracDice
//
//  Created by Sameer Sitre on 22/12/17.
//  Copyright © 2017 Sameer Sitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var randomDiceIndex1 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        
     print(randomDiceIndex1)
        
        
    }
    
}

