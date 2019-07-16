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
    let someStaticData: [Int] = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
                                 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
                                 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
                                 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68,
                                 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85,
                                 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102,
                                 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
                                 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130,
                                 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
                                 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158,
                                 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172,
                                 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186,
                                 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200,
                                 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214,
                                 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228,
                                 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242,
                                 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256,
                                 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270,
                                 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
                                 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298,
                                 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312,
                                 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
                                 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
                                 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354,
                                 355, 356, 357, 358]
    let someKgAndLbs: [String] = ["Kg.", "Lbs."]
    
    let weightPickerView = UIPickerView()
    let heightPickerView = UIPickerView()
    let pickerToolBar = UIToolbar()
    
    @IBOutlet weak var editPhotoProfileImageView: UIImageView!
    @IBOutlet weak var editProfileTableView: UITableView!
    
    override func viewDidLoad() {
        
        setupView()
        
        weightPickerView.dataSource = self
        weightPickerView.delegate = self
        weightPickerView.tag = 1
        weightPickerView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
        weightPickerView.selectRow(someStaticData.count / 8, inComponent: 0, animated: true)
        
        heightPickerView.dataSource = self
        heightPickerView.delegate = self
        heightPickerView.tag = 2
        heightPickerView.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.2941176471, alpha: 1)
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.2117647059, alpha: 1)
        
        editPhotoProfileImageView.layer.cornerRadius = editPhotoProfileImageView.frame.width / 2
        editPhotoProfileImageView.image = #imageLiteral(resourceName: "userPhotoProfile_1")
        
        editProfileTableView.backgroundColor = .clear
        editProfileTableView.separatorStyle = .none
    }
    
    @objc func doneButtonPressed () {
        view.endEditing(true)
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
        editProfileTableView.deselectRow(at: editProfileTableView.indexPathForSelectedRow! , animated: true)
    }
    
    func triggerPickerView (pickerView: UIPickerView) {
        pickerToolBar.barStyle = UIBarStyle.blackOpaque
        pickerToolBar.isTranslucent = true
        pickerToolBar.tintColor = .white
        pickerToolBar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(doneButtonPressed))
        
        pickerToolBar.setItems([flexibleSpace, doneButton], animated: false)
        
        let textFieldView = UITextField(frame: CGRect.zero)
        view.addSubview(textFieldView)
        
        textFieldView.inputView = pickerView
        textFieldView.inputAccessoryView = pickerToolBar
        
        textFieldView.becomeFirstResponder()
    }
}

extension EditProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "goToEditName", sender: self)
            tableView.deselectRow(at: indexPath, animated: true)
        case 1:
            performSegue(withIdentifier: "goToEditGender", sender: self)
            tableView.deselectRow(at: indexPath, animated: true)
        case 2:
            triggerPickerView(pickerView: weightPickerView)
        case 3:
            triggerPickerView(pickerView: heightPickerView)
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        cell.backgroundColor = .clear
        cell.separatorInset = .zero
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

extension EditProfileViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag == 1 {
            return 2
        } else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            if component == 0 {
                return someStaticData.count
            } else {
                return someKgAndLbs.count
            }
        } else {
            return 10
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            if component == 0 {
                return String(someStaticData[row])
            } else {
                return someKgAndLbs[row]
            }
        } else {
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if pickerView.tag == 1 {
            
            let pickerLabel = UILabel()
            
            if component == 0 {
                pickerLabel.text = String(self.someStaticData[row])
                pickerLabel.textColor = .white
                pickerLabel.font = UIFont.systemFont(ofSize: 24.0)
                pickerLabel.textAlignment = .right
            } else {
                pickerLabel.text = self.someKgAndLbs[row]
                pickerLabel.textColor = .white
                pickerLabel.font = UIFont.systemFont(ofSize: 28.0)
                pickerLabel.textAlignment = .center
            }
            
            return pickerLabel
            
        } else {
            
            return UIView()
        }
        
    }
}
