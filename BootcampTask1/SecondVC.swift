//
//  SecondVC.swift
//  BootcampTask1
//
//  Created by Mac on 8.09.2022.
//

import UIKit



protocol SecondVCDelegate: AnyObject {
    func getData(name: String, surname:String, birthday:String, serialNNumber: String, gender: String)
    
    //We created it to send information to the first viewcontroller

}

class SecondVC: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var serialNumberText: UITextField!
    @IBOutlet weak var genderText: UITextField!
    
    weak var delegate: SecondVCDelegate?
    //we have defined this class as specific.
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let name = nameText.text,
           let surname = surnameText.text,
           let birthday = birthdayText.text,
           let serialNumber = serialNumberText.text,
           let gender = genderText.text {
            delegate?.getData(name: name, surname: surname, birthday: birthday, serialNNumber: serialNumber, gender: gender)
            self.navigationController?.popViewController(animated: true)
        } else {
            print("Alert goster")
        }
        
        //we used this function to retrieve information.

        
    }
    
}


