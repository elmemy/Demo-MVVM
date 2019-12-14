//
//  ViewController.swift
//  MVVM
//
//  Created by ahmed elmemy on 12/13/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var CodeLabel: UILabel!
    
    
    //CallViewModel
    private let viewModel = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.accessCode.bind
            {
                self.CodeLabel.text = $0
        }
    }
    
    
    @IBAction func Auth()
    {
        viewModel.updateUsername(username: userNameTF.text ?? "")
        viewModel.updatePassword(password: passwordTF.text ?? "")
        switch viewModel.validation() {
            
        case .Valid:
            print("Login is Make succfully")
        case .Invalid(let error):
            print(error)
        }
    }
    
    
}
