//
//  Ocean.swift
//  MAPD724-ICE-3
//
//  Created by Raj Kumar Shahu on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Ocean: GameObject {
    
    // constructor
    init() {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle functions
    
    override func CheckBounds() {
        if(position.y <= -773) {
            Reset()
        }
    }
    
    
    
    override func Reset() {
        position.y = 773
        
    }
    
    // initialization
    override func Start() {
        zPosition = 0
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
