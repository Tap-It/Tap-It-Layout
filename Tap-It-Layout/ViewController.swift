//
//  ViewController.swift
//  Tap-It-Layout
//
//  Created by Fernando Zanei on 2018-03-14.
//  Copyright © 2018 Fernando Zanei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // BACKGROUND GRADIENT
        
        let gradientLayer = CAGradientLayer()
        let topColor = UIColor(red: 250.0/255.0, green: 215.0/255.0, blue: 95.0/255.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 245.0/255.0, green: 125.0/255.0, blue: 55.0/255.0, alpha: 1.0).cgColor
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        // BOTTOM CARD
        
        let bottomCard = UIImageView()
        bottomCard.image = UIImage(named: "card_3")
        bottomCard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomCard)
        bottomCard.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        bottomCard.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        bottomCard.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        bottomCard.widthAnchor.constraint(equalTo: bottomCard.heightAnchor, constant: 0).isActive = true

        // BOTTOM CARD
        
        let topCard = UIImageView()
        topCard.image = UIImage(named: "card_3")
        topCard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topCard)
        topCard.centerXAnchor.constraint(equalTo: bottomCard.centerXAnchor, constant: 0).isActive = true
        topCard.widthAnchor.constraint(equalTo: bottomCard.widthAnchor, multiplier: 0.8).isActive = true
        topCard.heightAnchor.constraint(equalTo: bottomCard.heightAnchor, multiplier: 0.8).isActive = true
        topCard.bottomAnchor.constraint(equalTo: bottomCard.topAnchor, constant: -16).isActive = true

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

