//
//  ListController.swift
//  GetItDone
//
//  Created by Robert Garcia on 8/19/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class ListController: UIViewController{
    
    let header = GDHeaderView( title: "test", subtitle:"testSubtitle")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(header)

        header.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        header.heightAnchor.constraint(equalToConstant: 120).isActive=true
    }
}
