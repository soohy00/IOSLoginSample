//
//  MainViewController.swift
//  LoginSample
//
//  Created by 윤수호 on 2023/01/01.
//

import UIKit

class MainViewController: UIViewController{
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func logoutButtonTapped(_ sender:UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
