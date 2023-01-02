//
//  EnterEmailViewController.swift
//  LoginSample
//
//  Created by 윤수호 on 2022/12/31.
//

import UIKit

class EnterEmailViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 30
        
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        emailTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Navigation Bar 보이기
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func nextButtonTapped(_ sender:UIButton){
        
    }
}
extension EnterEmailViewController:
    UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}
