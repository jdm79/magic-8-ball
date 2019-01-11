//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by James Daniel Malvern on 10/01/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumIndex : Int = 0;
    
    @IBOutlet weak var magic8BallView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImages()
    }

    @IBAction func buttonBallUpdate(_ sender: UIButton) {
        updateBallImages()
    }
    
    func updateBallImages() {
        
        randomNumIndex = Int.random(in: 1 ... 5)

        magic8BallView.image = UIImage(named: "ball\(randomNumIndex)")
    }

}

