//
//  ViewController.swift
//  HT8New
//
//  Created by Виктория Савич on 22.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var buttonStyles: UIButton! {
        didSet {
            buttonStyles.layer.cornerRadius = buttonStyles.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles.layer.shadowRadius = 8.8
            buttonStyles.layer.shadowOpacity = 0.7
            buttonStyles.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
    
    @IBOutlet weak var buttonStyles2: UIButton! {
        didSet {
            buttonStyles2.layer.cornerRadius = buttonStyles2.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles2.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles2.layer.shadowRadius = 8.8
            buttonStyles2.layer.shadowOpacity = 0.7
            buttonStyles2.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
    
    @IBOutlet weak var buttonStyles3: UIButton! {
        didSet {
            buttonStyles3.layer.cornerRadius = buttonStyles3.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles3.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles3.layer.shadowRadius = 8.8
            buttonStyles3.layer.shadowOpacity = 0.7
            buttonStyles3.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
    
    @IBAction func actionButtonCat(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "CatIdentiFier")
            controller.modalPresentationStyle = .overFullScreen
//            present(controller, animated: true)
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    @IBAction func actionButtonSquare(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "SquareIdentiFier") as? Square {
            controller.modalPresentationStyle = .overFullScreen
            present(controller, animated: true)
        }
    }
    
    @IBAction func actionButtonBall(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "BallIdentiFier") as? Ball {
            controller.modalPresentationStyle = .overFullScreen
            present(controller, animated: true)
        }
    }
}

