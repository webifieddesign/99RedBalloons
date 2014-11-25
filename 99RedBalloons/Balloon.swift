//
//  Balloon.swift
//  99RedBalloons
//
//  Created by Chris Shaughnessy on 11/24/14.
//  Copyright (c) 2014 Webified Design. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var number = 0
    var image = UIImage(named: "")
    
    func numberOfBalloons() -> Int {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        return randomNumber
    }
}