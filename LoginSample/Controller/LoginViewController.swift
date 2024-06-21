//
//  ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/19/24.
//

import UIKit

final class ViewController: UIViewController {
    
    private static var tfHeight: CGFloat = 50
    private static var fontSize: CGFloat = 18
    private var cornerRadius: CGFloat = 5
    
    //⭐️추후 관련 매니저 만들면 괜찮을듯 함⭐️
    private lazy var idView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray //#colorLiteral() - 사용시 왜 오류날까?... ⭐️ 사용시 아래 코드까지 이미지로 변하는 오류 (추후 찾아볼 예정)
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = true
        view.addSubview(idTextField)
        view.addSubview(idInfoLabel)
        return view
    }()

    private let idTextField: UITextField = {
       let textField = UITextField()
        textField.frame.size.height = tfHeight
        textField.font = UIFont.systemFont(ofSize: fontSize)
        textField.backgroundColor = .clear
        textField.textColor = .white
        textField.tintColor = .white
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.keyboardType = .emailAddress
        //textField.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
       return textField
    }()
        
    private let idInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "email or phoneNumber"
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textColor = .white
        return label
    }()
    
    private lazy var passwordView: UIView = {
       let view = UIView()
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = true
        view.addSubview(passwordTextField)
        view.addSubview(passwordInfoLabel)
        view.addSubview(passwordMarkButton)
        return view
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .darkGray
        textField.frame.size.height = tfHeight
        textField.backgroundColor = .clear
        textField.textColor = .white
        textField.tintColor = .white
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = true
        textField.clearsOnBeginEditing = false
        //textField.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        return textField
    }()
    
    private let passwordInfoLabel: UILabel = {
       let label = UILabel()
        label.text = "password"
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textColor = .white
       return label
    }()
    
    private let passwordMarkButton: UIButton = {
        let button = UIButton()
        button.setTitle("show?...", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
        //button.addTarget(self, action: , for: .touchUpInside)
        return button
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.cornerRadius = cornerRadius
        button.layer.borderWidth = 1
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.isEnabled = false
        
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        return button
    }()


    private lazy var passwordResetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("password Reset", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //button.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        return button
    }()
    
    private lazy var stackView: UIStackView = {
       let stView = UIStackView(arrangedSubviews: [idView, passwordView, loginButton])
        stView.spacing = 18
        stView.axis = .vertical
        stView.distribution = .fillEqually
        stView.alignment = .fill
        return stView
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
