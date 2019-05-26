//
//  ViewController.swift
//  cardWar
//
//  Created by Heng Xie on 2019/05/26.
//  Copyright © 2019 Heng Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var CPUScore: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if leftNumber > rightNumber {
            leftscore += 1
            playerScore.text = String(leftscore)
        }
        else if leftNumber < rightNumber{
            rightscore += 1
            CPUScore.text = String(rightscore)
        }
        else {
            // Tie
        }
    }
    

}

