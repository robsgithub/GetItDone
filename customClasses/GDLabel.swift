//
//  GDLabel.swift
//  GetItDone
//
//  Created by Robert Garcia on 9/11/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class GDLabel:UILabel {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(title:String = "default text", color:UIColor = .black, size: CGFloat = 16, frame:CGRect = .zero, textAlign:NSTextAlignment = .left){
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }

        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-Regular", size: size)
        //self.font = UIFont.systemFont(ofSize: size)
        self.textAlignment = textAlign
    }
    
}
