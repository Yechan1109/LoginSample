////
////  ViewController.swift
////  LoginSample
////
////  Created by t2023-m0013 on 6/19/24.
////
//
//import UIKit
//
//final class ViewController: UIViewController {
//    
//    private static var tfHeight: CGFloat = 50
//    private static var fontSize: CGFloat = 18
//    private var cornerRadius: CGFloat = 5
//    
//    //⭐️Validation add - 예정
//    
//    
//    //⭐️추후 관련 매니저 만들면 괜찮을듯 함⭐️
//    private lazy var idView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .darkGray //#colorLiteral() - 사용시 왜 오류날까?... ⭐️ 사용시 아래 코드까지 이미지로 변하는 오류 (추후 찾아볼 예정)
//        view.layer.cornerRadius = cornerRadius
//        view.clipsToBounds = true
//        view.addSubview(idTextField)
//        view.addSubview(idInfoLabel)
//        return view
//    }()
//
//    private let idTextField: UITextField = {
//       let textField = UITextField()
//        textField.frame.size.height = tfHeight
//        textField.font = UIFont.systemFont(ofSize: fontSize)
//        textField.backgroundColor = .clear
//        textField.textColor = .white
//        textField.tintColor = .white
//        textField.autocapitalizationType = .none
//        textField.autocorrectionType = .no
//        textField.spellCheckingType = .no
//        textField.keyboardType = .emailAddress
//        //textField.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
//       return textField
//    }()
//        
//    private let idInfoLabel: UILabel = {
//        let label = UILabel()
//        label.text = "email or phoneNumber"
//        label.font = UIFont.systemFont(ofSize: fontSize)
//        label.textColor = .white
//        return label
//    }()
//    
//    private lazy var passwordView: UIView = {
//       let view = UIView()
//        view.backgroundColor = .darkGray
//        view.layer.cornerRadius = cornerRadius
//        view.clipsToBounds = true
//        view.addSubview(passwordTextField)
//        view.addSubview(passwordInfoLabel)
//        view.addSubview(passwordMarkButton)
//        return view
//    }()
//    
//    private let passwordTextField: UITextField = {
//        let textField = UITextField()
//        textField.backgroundColor = .darkGray
//        textField.frame.size.height = tfHeight
//        textField.backgroundColor = .clear
//        textField.textColor = .white
//        textField.tintColor = .white
//        textField.autocapitalizationType = .none
//        textField.autocorrectionType = .no
//        textField.spellCheckingType = .no
//        textField.isSecureTextEntry = true
//        textField.clearsOnBeginEditing = false
//        //textField.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
//        return textField
//    }()
//    
//    private let passwordInfoLabel: UILabel = {
//       let label = UILabel()
//        label.text = "password"
//        label.font = UIFont.systemFont(ofSize: fontSize)
//        label.textColor = .white
//       return label
//    }()
//    
//    private let passwordMarkButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("show?...", for: .normal)
//        button.setTitleColor(.darkGray, for: .normal)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
//        //button.addTarget(self, action: , for: .touchUpInside)
//        return button
//    }()
//    
//    private lazy var loginButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .clear
//        button.layer.cornerRadius = cornerRadius
//        button.layer.borderWidth = 1
//        button.setTitle("Login", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//        button.isEnabled = false
//        
//        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
//        
//        return button
//    }()
//
//
//    private lazy var passwordResetButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .clear
//        button.setTitle("password 다시", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//        //button.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
//        return button
//    }()
//    
//    private lazy var stackView: UIStackView = {
//       let stView = UIStackView(arrangedSubviews: [idView, passwordView, loginButton])
//        stView.spacing = 18
//        stView.axis = .vertical
//        stView.distribution = .fillEqually
////        stView.alignment = .fill
//        return stView
//    }()
//    
//    lazy var idInfoLabelCenterYConstraint = idInfoLabel.centerYAnchor.constraint(equalTo: idTextField.centerYAnchor)
//    lazy var passwordInfoLabelCenterYConstraint = passwordInfoLabel.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor)
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        configure()
//        makeUI()
//    }
//
//    
//    @objc private func loginButtonTapped() {
//        
//    }
//    
//    
//    
//    private func makeUI() {
//        idView.translatesAutoresizingMaskIntoConstraints = false
//        idInfoLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        passwordInfoLabel.translatesAutoresizingMaskIntoConstraints = false
//        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
//        passwordResetButton.translatesAutoresizingMaskIntoConstraints = false
//        passwordMarkButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        //AutoLayout
//        NSLayoutConstraint.activate([
//            
//            passwordMarkButton.widthAnchor.constraint(equalToConstant: 300)
//            
//            
////            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
////            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
//
////            idInfoLabel.leadingAnchor.constraint(equalTo: idTextField.leadingAnchor, constant: 8),
////            idInfoLabel.trailingAnchor.constraint(equalTo: idTextField.trailingAnchor, constant: -8),
////            idInfoLabelCenterYConstraint,
////
////            idTextField.topAnchor.constraint(equalTo: idView.topAnchor, constant: 15),
////            idTextField.bottomAnchor.constraint(equalTo: idView.bottomAnchor, constant: -2),
////            idTextField.leadingAnchor.constraint(equalTo: idView.leadingAnchor, constant: 8),
////            idTextField.trailingAnchor.constraint(equalTo: idView.trailingAnchor, constant: -8),
////
////            passwordInfoLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 8),
////            passwordInfoLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -8),
////            passwordInfoLabelCenterYConstraint,
////
////            passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 15),
////            passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -2),
////            passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 8),
////            passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -8),
//            
//            
//        ])
//        
//       
//        
//    }
//    
//    private func configure() {
//        view.backgroundColor = .black
//        
////        testLabel.text = "hi"
////        testLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        
//        idTextField.delegate = self
//        passwordTextField.delegate = self
//        [stackView, passwordResetButton].forEach { view.addSubview($0) }
//    }
//    
//    //⭐️그 외 로그인 방식⭐️
//    //카카오, 구글, 애플 구현 예정
//    //버튼만 누르고 콜백함수로 받아올 예정
//    //카카오
//    
//    //구글
//    
//    //애플
//    
//    
//}
//
//
//extension ViewController: UITextFieldDelegate {
//    
//    // MARK: - 텍스트 필드 편집 시작할 때 설정 (문구가 올라가면서 크기 작아짐)
//    func textFieldDidBeginEditing(_ textField: UITextField) {    //autoLayout Update
//        
//    }
//    
//    // MARK: - 텍스트 필드 종료 시점 (글자 / 백그라운드 update)
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        
//    }
//    
//    // MARK: - id / pw 로그인 버튼 색 변경
//    @objc private func textFieldEditingCharge(_ textField: UITextField) {
//        
//    }
//    
//    // MARK: - Enter 다음 줄로 이동 및 키보드 활성 유무
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        return true
//    }
//
//
//}
