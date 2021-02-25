//
//  GameObject.swift
//  MAPD724-ICE-3
//
//  Created by Raj Kumar Shahu on 2021-02-24.
//

import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode, GameProtocol {
    
    // Instance members
    var dx: CGFloat?
    var dy: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfHeight: CGFloat?
    var halfWidth: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource : GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    
    //constructor
    init(imageString: String, initialScale: CGFloat) {
        
        // initialize the game object with an image (Texture)
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func CheckBounds() {
        
    }
    
    func Reset() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    
}
