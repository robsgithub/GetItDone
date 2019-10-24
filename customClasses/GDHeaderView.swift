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
    let addButton = GDButton(title: "+", type: .roundedText)
    var deligate:GDHeaderDeligate?
    
    init(frame:CGRect = .zero, title:String = "header Title", subtitle:String = "Header subtitle") {
        super.init(frame : frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        deligate?.addItem()
        
        addSubview(bg)
        bg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        addSubview(titleLabel)
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 12).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20 + 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(subtitleLabel)
        subtitleLabel.centerYAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20 + 8).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: centerXAnchor, constant: 50).isActive = true
        
        addSubview(addButton)
        addButton.bottomAnchor.constraint(equalTo: subtitleLabel.bottomAnchor).isActive = true
        addButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20 - 8).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        addButton.widthAnchor.constraint(equalTo:addButton.heightAnchor, multiplier: 1).isActive = true
        
        addButton.addTarget(self, action: #selector(self.handleAddButton), for: .touchUpInside)
        print ("Ran constraints in header view")
    }

    @objc func handleAddButton() {
        print ("trying to handle add button")
        if let deligate = self.deligate{
            deligate.addItem()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
