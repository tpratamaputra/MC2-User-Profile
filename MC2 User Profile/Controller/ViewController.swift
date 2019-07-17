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
        setupLabelView(userClass: loadUserDefaults())
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.layoutIfNeeded()
    }
    
    private func setupView() {
        let editProfileTGR = UITapGestureRecognizer(target: self, action: #selector(editProfileTapped))
        
        view.backgroundColor = #colorLiteral(red: 0.1058823529, green: 0.1058823529, blue: 0.1960784314, alpha: 1)
        
        userPhotoProfileImageView.layer.borderWidth = 1
        userPhotoProfileImageView.layer.masksToBounds = false
        userPhotoProfileImageView.layer.borderColor = UIColor.black.cgColor
        userPhotoProfileImageView.layer.cornerRadius = userPhotoProfileImageView.frame.height / 2
        userPhotoProfileImageView.layer.borderColor = UIColor.clear.cgColor
        userPhotoProfileImageView.clipsToBounds = true
        
        userBowlingBallWeightView.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.2509803922, alpha: 1)
        userGenderView.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.2509803922, alpha: 1)
        userWeightView.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.2509803922, alpha: 1)
        userHeightView.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.2509803922, alpha: 1)
        
        userNameLabel.textColor = .white
        userBowlerStatusLabel.textColor = .lightGray
        
        userBowlingBallWeightLabel.textColor = .white
        userGenderLabel.textColor = .white
        userWeightLabel.textColor = .white
        userHeightLabel.textColor = .white
        
        wViewLabel.textColor = .white
        hViewLabel.textColor = .white
        
        editProfileLabel.isUserInteractionEnabled = true
        editProfileLabel.textColor = .lightGray
        
        editProfileLabel.addGestureRecognizer(editProfileTGR)
    }
    
    func setupLabelView(userClass: User) {
        userPhotoProfileImageView.image = #imageLiteral(resourceName: "userPhotoProfile_1")
        
        userNameLabel.text = userClass.userFullName
        userBowlerStatusLabel.text = userClass.userBowlerStatus
        userGenderLabel.text = userClass.userGender
        userBowlingBallWeightLabel.text = "\(Int(round(userClass.ballWeight()))) LB"
        userWeightLabel.text = "\(userClass.userWeight) KG"
        userHeightLabel.text = "\(userClass.userHeight) CM"
    }
    
    @objc private func editProfileTapped() {
        performSegue(withIdentifier: "goToEditProfile", sender: self)
    }
}

