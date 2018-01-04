//
//  ViewController.swift
//  magicball
//
//  Created by Kelechi Igbokwe on 27.11.17.
//  Copyright © 2017 Kelechi Igbokwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomImage : Int = 0
    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6"]

    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBallImage()
        
    }
    
    func changeBallImage() {
        randomImage = Int(arc4random_uniform(6))
        
        ballImage.image = UIImage(named: ballImageArray[randomImage])
    }

}

