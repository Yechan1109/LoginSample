//
//  ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/19/24.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var idImageView: UIView = {
        let view = UIView()
        
        view.addSubview(idTextField)
        view.addSubview(idInfoLabel)
        return view
    }()

    private let idTextField: UITextField = {
       let textField = UITextField()
        
       
       return textField
    }()
        
    private let idInfoLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var passwordView: UIView = {
       let view = UIView()
        
        view.addSubview(passwordTextField)
        view.addSubview(passwordInfoLabel)
        view.addSubview(passwordMarkButton)
        return view
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        
        return textField
    }()
    
    private let passwordInfoLabel: UILabel = {
       let label = UILabel()
        
       return label
    }()
    
    private let passwordMarkButton: UIButton = {
        let button = UIButton()
        //button.addTarget(self, action: , for: <#T##UIControl.Event#>)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configure()
    }

    
    @objc private func loginButtonTapped() {
        
    }
    
    
    private func makeUI() {
        
       
        
    }
    
    private func configure() {
        idTextField.delegate = self
        passwordTextField.delegate = self
    }
    
}


extension ViewController: UITextFieldDelegate {
    
}
