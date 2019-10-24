//
//  gdGradient.swift
//  GetItDone
//
//  Created by Robert Garcia on 8/14/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class GDGradient:UIView{
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
            layer.locations = [0.0, 1.4]
            
        }
    }
    override class var layerClass: AnyClass{
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
