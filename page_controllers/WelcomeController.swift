//
//  ViewController.swift
//  GetItDone
//
//  Created by Robert Garcia on 7/31/19.
//  Copyright © 2019 Robert Garcia. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    //Class Variables - Define the ui elements. Some are coming for subclassed items.
    
    let bg:UIView = {
        let view =  GDGradient()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        return view
    }()

    let nextButton = GDButton(title: "Start Winning")
    
//    let titleLabel:GDLabel = {
//        let label = GDLabel()
//        label.text = "GET IT DONE"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textAlignment = .center
//        return label
//    }()
    let titleLabel = GDLabel(title: "Getting it Done", size: 24, textAlign: .center)
    //Apply animation to the next screen button
        //This code will animate the button to shrink down and pop back
    @objc func handleNext(){
        print ("Trying to handle next, you hit a button")
        
        self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.nextButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) { (_) in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
        }) { (_) in
            self.present(ListController(),animated: true,completion: nil)
            
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        nextButton.addTarget(self, action: #selector(self.handleNext), for: .touchUpInside)
        view.backgroundColor = .white
        
        //Place the background panel, this is what sits over the view itself
        view.addSubview(bg)
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true

        //Place the welcome label on the background
        bg.addSubview(titleLabel)
        
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        bg.addSubview(nextButton)
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -60).isActive = true
        //connect the next button
        nextButton.addTarget(self, action: #selector(self.handleNext), for: .touchUpInside)

    }
}

