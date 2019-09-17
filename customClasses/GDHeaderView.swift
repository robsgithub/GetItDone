//
//  GDHeaderView.swift
//  GetItDone
//
//  Created by Robert Garcia on 8/19/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class GDHeaderView:UIView {
    
    let bg = GDGradient()
    let titleLabel = GDLabel(size: 16)
    let subtitleLabel = GDLabel(size: 24)

    init(frame:CGRect = .zero, title:String = "header Title", subtitle:String = "Header subtitle") {
        super.init(frame : frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        
        addSubview(bg)
        bg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        addSubview(titleLabel)
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(subtitleLabel)
        subtitleLabel.centerYAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        print ("Ran constraints in header view")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
