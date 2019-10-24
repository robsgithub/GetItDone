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
    var type:ButtonOptions!
    
    init(title:String = "Button text",frame:CGRect = .zero, type:ButtonOptions = .roundedText){
        super.init(frame:frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.title = title
        self.type = type
        self.phaseTwo()
    }
    
    func phaseTwo(){
        self.setTitle(self.title, for: .normal)
        if let titleLabel = self.titleLabel{
            titleLabel.font = UIFont(name:"Raleway-v4020-Regular", size: 16)
        }
        
        switch self.type {
            case ButtonOptions.roundedText:
                self.roundedText()
            case ButtonOptions.squareIcon:
                self.squareIcon()
            default: break;
        }
    }
    
    func squareIcon() {
        
        }
    func roundedText() {
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 20
        self.backgroundColor = .white

    }
        
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
