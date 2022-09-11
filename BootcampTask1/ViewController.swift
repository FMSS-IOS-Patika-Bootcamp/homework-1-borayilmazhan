//
//  ViewController.swift
//  BootcampTask1
//
//  Created by Mac on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var serialNumberLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func actionButton(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondVC.delegate = self
        navigationController?.pushViewController(secondVC, animated: true)
        
        //The code we use to get to the 2nd page
    }
}

extension ViewController: SecondVCDelegate {
    
    func getData(name: String, surname: String, birthday: String, serialNNumber: String, gender: String) {
        nameLabel.text = name
        surnameLabel.text = surname
        birthdayLabel.text = birthday
        serialNumberLabel.text = serialNNumber
        genderLabel.text = gender
        
        //The code we took to extract the data on the 2nd page
    }
    
}


