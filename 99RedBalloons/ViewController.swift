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
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//      Create balloon image variables and assign images
        var firstRedBalloon = Balloon()
        firstRedBalloon.image = UIImage(named: "RedBalloon1.jpg")
        
        var secondRedBalloon = Balloon()
        secondRedBalloon.image = UIImage(named: "RedBalloon2.jpg")
        
        var thirdRedBalloon = Balloon()
        thirdRedBalloon.image = UIImage(named: "RedBalloon3.jpg")

        var fourthRedBalloon = Balloon()
        fourthRedBalloon.image = UIImage(named: "RedBalloon4.jpg")
        
//      Add balloon variables to array
        myBalloons += [firstRedBalloon, secondRedBalloon, thirdRedBalloon, fourthRedBalloon]
        
//      Load initial image and text
        myImageView.image = UIImage(named: "BerlinTVTower.jpg")
        balloonLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
//      Create random Index variable
        var randomIndex:Int
//      Create random balloon number
        var randomBalloonNumber = Int(arc4random_uniform(UInt32(100)))
        
//      Create random index with balloons count, prevent number from repeating
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        } while self.currentIndex == randomIndex
        
        self.currentIndex = randomIndex
        
//      Set balloon variable to a random array index
        let balloon = myBalloons[randomIndex]
        
//      Set image to set balloon's image, set balloon label to random number
        self.myImageView.image = balloon.image
        self.balloonLabel.text = "\(randomBalloonNumber)"
    }

}

