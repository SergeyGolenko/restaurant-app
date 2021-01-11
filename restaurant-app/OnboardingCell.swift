//
//  OnboardingCell.swift
//  restaurant-app
//
//  Created by Сергей Голенко on 11.01.2021.
//

import UIKit
import Lottie

class OnboardingCell: UICollectionViewCell {
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBAction func actionButtonTapped(){
        
    }
    
    func configure(with slide: Slide){
        titleLabel.text = slide.title
        actionButton.backgroundColor = slide.buttonColor
        actionButton.setTitle(slide.buttonTitle, for: .normal)
        
        let deliveryAnimation = Animation.named(slide.animationName)
        animationView.animation = deliveryAnimation
        animationView.loopMode = .loop
        if !animationView.isAnimationPlaying{
            animationView.play()
        }
    }
}
