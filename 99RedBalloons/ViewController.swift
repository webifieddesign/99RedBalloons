//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Chris Shaughnessy on 11/24/14.
//  Copyright (c) 2014 Webified Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var balloonLabel: UILabel!
    
    var balloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView.image = UIImage(named: "BerlinTVTower.jpg")
        balloonLabel.text = "How many balloons?"
        
        createBalloon()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        let balloon = balloons[currentIndex]
        
        myImageView.image = balloon.image
        balloonLabel.text = "\(balloon.number) Balloons"
        
        currentIndex++
    }
    
    func createBalloon() {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var balloon = Balloon()
            balloon.number = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.balloons.append(balloon)
        }
    }
}

