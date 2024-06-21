//
//  ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/19/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var loginTextField: UITextField = {
       let textField = UITextField()
        
       return textField
    }()
    
    private let loginInfoLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        return textField
    }()
    
    private let passwordInfoLabel: UILabel = {
       let label = UILabel()
        
       return label
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}


extension ViewController: UITextFieldDelegate {
    
}
