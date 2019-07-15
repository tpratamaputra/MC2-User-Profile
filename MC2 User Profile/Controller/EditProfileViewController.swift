//
//  EditProfileViewController.swift
//  MC2 User Profile
//
//  Created by Thomas Pratama Putra on 12/07/19.
//  Copyright © 2019 thomaspputra. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    let menuArray: [String] = ["FULL NAME", "GENDER", "WEIGHT", "HEIGHT"]
    let detailMenuArray: [String] = ["JENNIE RUBY JANE", "♀", "48 KG", "172 CM"]
    
    @IBOutlet weak var editPhotoProfileImageView: UIImageView!
    
    override func viewDidLoad() {
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.2117647059, alpha: 1)
        
        editPhotoProfileImageView.layer.cornerRadius = editPhotoProfileImageView.frame.width / 2
        editPhotoProfileImageView.image = #imageLiteral(resourceName: "userPhotoProfile_1")
    }
}

extension EditProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
        switch indexPath.row {
        case 0:
//            print("This is row 0")
            performSegue(withIdentifier: "goToEditName", sender: self)
        case 1:
//            print("This is row 1")
            performSegue(withIdentifier: "goToEditGender", sender: self)
        case 2:
//            https://www.youtube.com/watch?v=aa-lNWUVY7g
            print("This is row 2")
        case 3:
            print("This is row 3")
        default:
            print("Index Out of Range.")
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension EditProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.backgroundColor = .clear
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        cell.textLabel?.text = menuArray[indexPath.row]
        cell.detailTextLabel?.text = detailMenuArray[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
}
