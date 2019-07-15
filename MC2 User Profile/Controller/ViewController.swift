//
//  ViewController.swift
//  MC2 User Profile
//
//  Created by Thomas Pratama Putra on 09/07/19.
//  Copyright © 2019 thomaspputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userPhotoProfileImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userBowlerStatusLabel: UILabel!
    
    @IBOutlet weak var userBowlingBallWeightLabel: UILabel!
    @IBOutlet weak var userGenderLabel: UILabel!
    @IBOutlet weak var userWeightLabel: UILabel!
    @IBOutlet weak var userHeightLabel: UILabel!
    
    @IBOutlet weak var userBowlingBallWeightView: UIView!
    @IBOutlet weak var userGenderView: UIView!
    @IBOutlet weak var userWeightView: UIView!
    @IBOutlet weak var userHeightView: UIView!
    
    @IBOutlet weak var wViewLabel: UILabel!
    @IBOutlet weak var hViewLabel: UILabel!
    
    @IBOutlet weak var editProfileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        userPhotoProfileImageView.image = #imageLiteral(resourceName: "userPhotoProfile_1")
        userNameLabel.text = "JENNIE RUBY JANE"
        userBowlerStatusLabel.text = "OCCASIONAL PLAYER"
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.2117647059, alpha: 1)
        
        userPhotoProfileImageView.layer.borderWidth = 1
        userPhotoProfileImageView.layer.masksToBounds = false
        userPhotoProfileImageView.layer.borderColor = UIColor.black.cgColor
        userPhotoProfileImageView.layer.cornerRadius = userPhotoProfileImageView.frame.height / 2
        userPhotoProfileImageView.clipsToBounds = true
        
        userBowlingBallWeightView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
        userGenderView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
        userWeightView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
        userHeightView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
        
        userNameLabel.textColor = .white
        userBowlerStatusLabel.textColor = .lightGray
        userBowlingBallWeightLabel.textColor = .lightGray
        userGenderLabel.textColor = .lightGray
        userWeightLabel.textColor = .lightGray
        userHeightLabel.textColor = .lightGray
        
        wViewLabel.textColor = .white
        hViewLabel.textColor = .white
        
        editProfileLabel.isUserInteractionEnabled = true
        editProfileLabel.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        
        //tapGestureRecognizerGoesHere
        let editProfileTGR = UITapGestureRecognizer(target: self, action: #selector(editProfileTapped))
        
        //addGestureRecognizerGoesHere
        editProfileLabel.addGestureRecognizer(editProfileTGR)
    }
    
    @objc private func editProfileTapped() {
        performSegue(withIdentifier: "goToEditProfile", sender: self)
    }
}

