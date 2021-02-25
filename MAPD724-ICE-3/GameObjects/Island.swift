//
//  Ocean.swift
//  MAPD724-ICE-3
//
//  Created by Raj Kumar Shahu on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Island: GameObject {
    
    // constructor
    init() {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle functions
    
    override func CheckBounds() {
        if(position.y <= -730) {
            Reset()
            isColliding = false
        }
    }
    
    
    
    override func Reset() {
        position.y = 730
        
        // get a pseudo-random number from -313 to 313 =
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        
        position.x = CGFloat(randomX)
        isColliding = false
        
        
    }
    
    // initialization
    override func Start() {
        zPosition = 1
        
        Reset()
        dy = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move() {
        position.y -= dy!
    }
    
    
}
