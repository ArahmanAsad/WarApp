//
//  ViewController.swift
//  war App
//
//  Created by A.Rahman on 6/7/18.
//  Copyright © 2018 d2b. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    

  var leftScore = 0
  var rightscore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(_ sender: Any) {
   
        let LeftRandomnumber=arc4random_uniform(13)+2
        let rightRandomNumber=arc4random_uniform(13)+2
        
        
        
        leftCard.image=UIImage(named: "card\(LeftRandomnumber)")
        rightCard.image=UIImage(named: "card\(rightRandomNumber)")
        
        if LeftRandomnumber > rightRandomNumber{
            leftScore = leftScore+1
            leftScoreLabel.text=String(leftScore)
            
        }
        else if rightRandomNumber > LeftRandomnumber{
            rightscore = rightscore+1
            rightScoreLabel.text=String(rightscore)
            
        }
        
    }
    
}

