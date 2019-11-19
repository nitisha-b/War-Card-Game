//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nitisha on 11/13/19.
//  Copyright © 2019 Nitisha Bhandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftScore = 0
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Generate Random Numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update Image Views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Left side wins
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
            
        //Right side wins
        else if rightNumber > leftNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
        //Tie
        else{
            
        }
        
    }
    
}

