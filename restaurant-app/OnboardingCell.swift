//
//  OnboardingCell.swift
//  restaurant-app
//
//  Created by Сергей Голенко on 11.01.2021.
//

import UIKit

struct Slide {
    let title: String
    let animationName: String
    let buttonColor: UIColor
    let buttonTitle: String
    
    static let collection: [Slide] = [
        .init(title: "Get your favourite food delivered to you under 30 minutes anytime", animationName: "lottieDeliveryGuy", buttonColor: .systemYellow, buttonTitle: "Next"),
        .init(title: "We serve only from choiced restaurants in your area", animationName: "lottieRestaurant", buttonColor: .systemGreen, buttonTitle: "Order Now")
    ]
    
}



class OnboardingCell: UICollectionViewCell {
    
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    
    @IBAction func actionButtonTapped(){
        
    }
    
    
    
    func configure(with slide: Slide){
        titleLabel.text = slide.title
        actionButton.backgroundColor = slide.buttonColor
        actionButton.setTitle(slide.buttonTitle, for: .normal)
        
    }
    
    
}
