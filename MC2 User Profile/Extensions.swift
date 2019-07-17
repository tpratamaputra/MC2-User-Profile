//
//  File.swift
//  MC2 User Profile
//
//  Created by Thomas Pratama Putra on 17/07/19.
//  Copyright © 2019 thomaspputra. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func loadUserDefaults() -> User {
        let defaults = UserDefaults.standard
        
        if defaults.string(forKey: Key.userFullName) == nil {
            
            let generateUser = User(userFullName: "JENNIE RUBY JANE", userBowlerStatus: "OCCASIONAL PLAYER", userGender: "FEMALE", userWeight: 50, userHeight: 163)
            
            generateUser.userBallWeight = generateUser.ballWeight()
            
            defaults.set(generateUser.userFullName, forKey: Key.userFullName)
            defaults.set(generateUser.userBowlerStatus, forKey: Key.userBowlerStatus)
            defaults.set(generateUser.userGender, forKey: Key.userGender)
            defaults.set(generateUser.userWeight, forKey: Key.userWeight)
            defaults.set(generateUser.userHeight, forKey: Key.userHeight)
            defaults.set(generateUser.userBallWeight, forKey: Key.userBowlingBallWeight)
            
            return generateUser
        } else {
            let generateUser = User(userFullName: defaults.string(forKey: Key.userFullName)!, userBowlerStatus: defaults.string(forKey: Key.userBowlerStatus)!, userGender: defaults.string(forKey: Key.userGender)!, userWeight: defaults.integer(forKey: Key.userWeight), userHeight: defaults.integer(forKey: Key.userHeight))
            
            generateUser.userBallWeight = generateUser.ballWeight()
            
            return generateUser
        }
    }
}
