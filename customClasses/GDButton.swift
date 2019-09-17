//
//  gdGradient.swift
//  GetItDone
//
//  Created by Robert Garcia on 8/14/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class GDButton:UIButton{
    
    var title:String!
    
    init(title:String = "Button text"){
        super.init(frame:.zero)
            self.setTitle(title, for: .normal)
            self.layer.cornerRadius = 14
            self.backgroundColor = .white
            self.setTitleColor(.black, for: .normal)
            self.translatesAutoresizingMaskIntoConstraints = false
            if let titleLabel = self.titleLabel{
                titleLabel.font = UIFont(name:"Raleway-v4020-Regular", size: 16)
            }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
