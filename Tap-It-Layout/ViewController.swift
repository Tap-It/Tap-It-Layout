//
//  ViewController.swift
//  Tap-It-Layout
//
//  Created by Fernando Zanei on 2018-03-14.
//  Copyright © 2018 Fernando Zanei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var layouted = false
    let bottomCard = UIImageView()
    let topCard = UIImageView()
    let stackView = UIStackView()

    var top1: PlayerScore!
    var top2: PlayerScore!
    var top3: PlayerScore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // BACKGROUND GRADIENT
        
        let gradientLayer = CAGradientLayer()
        let topColor = UIColor(red: 250.0/255.0, green: 215.0/255.0, blue: 95.0/255.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 245.0/255.0, green: 125.0/255.0, blue: 55.0/255.0, alpha: 1.0).cgColor
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.frame = view.frame
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    override func viewDidLayoutSubviews() {
        
        if !layouted {
            let frame = view.safeAreaLayoutGuide.layoutFrame
            let safeTop = view.safeAreaInsets.top
            
            // BOTTOM CARD - PLAYER
            
            bottomCard.image = UIImage(named: "card_1")
            
            var tempHeight = CGFloat(0.0)
            var tempWidth = CGFloat(0.0)
            
            tempHeight = frame.height * 0.47
            tempWidth = tempHeight
            
            bottomCard.frame = CGRect(x: (frame.width/2)-(tempWidth/2), y: frame.height+safeTop-tempHeight-8, width: tempWidth, height: tempHeight)
            
            view.addSubview(bottomCard)

            // TOP CARD - DECK
            
            topCard.image = UIImage(named: "card_3")
            
            tempHeight = frame.height * 0.37
            tempWidth = tempHeight
            
            topCard.frame = CGRect(x: (frame.width/2)-(tempWidth/2), y: bottomCard.frame.minY-tempHeight-8, width: tempWidth, height: tempHeight)

            view.addSubview(topCard)
            
            // STACK VIEW - SCORE
            
            stackView.axis = .horizontal
            stackView.distribution = .equalSpacing
            
            tempHeight = topCard.frame.minY-safeTop-16
            tempWidth = frame.width-32
            
            stackView.frame = CGRect(x: (frame.width/2)-(tempWidth/2), y: safeTop+8, width: tempWidth, height: tempHeight)
            
            view.addSubview(stackView)

            
            
            if let objects = Bundle.main.loadNibNamed("PlayerScore", owner: self, options: nil), let scoreview = objects.first as? PlayerScore {
                self.top1 = scoreview
            }
            
            if let objects = Bundle.main.loadNibNamed("PlayerScore", owner: self, options: nil), let scoreview = objects.first as? PlayerScore {
                self.top2 = scoreview
            }
            
            if let objects = Bundle.main.loadNibNamed("PlayerScore", owner: self, options: nil), let scoreview = objects.first as? PlayerScore {
                self.top3 = scoreview
            }
            
            stackView.addArrangedSubview(top1)
            stackView.addArrangedSubview(top2)
            stackView.addArrangedSubview(top3)

            
            layouted = true
        }
    }
    
    
}

