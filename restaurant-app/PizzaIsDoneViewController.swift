//
//  PizzaIsDoneViewController.swift
//  restaurant-app
//
//  Created by Сергей Голенко on 13.01.2021.
//

import UIKit

class PizzaIsDoneViewController: UIViewController {
    
    @IBAction func actionGoBackTapped(_ sender: Any) {
        let onBoardingViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "onBoardingVC")
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate,
            let window = sceneDelegate.window {
            window.rootViewController = onBoardingViewController
            UIView.transition(with: window,
                              duration: 3,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)
        }
    }
        
    @IBOutlet weak var actionGoBackButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        actionGoBackButton.layer.cornerRadius = 22
    }
    

}
