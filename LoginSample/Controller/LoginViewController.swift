//
//  ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/19/24.
//

import UIKit

final class ViewController: UIViewController {
    
    
    
    //⭐️추후 관련 매니저 만들면 괜찮을듯 함⭐️
//    private lazy var idView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .white //#colorLiteral() - 사용시 왜 오류날까?... ⭐️ 사용시 아래 코드까지 이미지로 변하는 오류 (추후 찾아볼 예정)
//        view.layer.cornerRadius = 10
//        view.clipsToBounds = true
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    private static var tfWidth = 100
//    private static var tfHeight: CGFloat = 50
    
    private lazy var idInfoLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.text = "ID"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .black
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.textColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: "아이디를 입력해 주세요", attributes: [.foregroundColor: UIColor.systemGray])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordInfoLabel: UILabel = {
       let label = UILabel()
        label.backgroundColor = .black
        label.text = "Password"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private lazy var passwordTextField: UITextField = {
            let textField = UITextField()
            textField.backgroundColor = .black
            textField.textColor = .white
            textField.font = UIFont.systemFont(ofSize: 15)
            textField.tintColor = .white
            textField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력해 주세요", attributes: [.foregroundColor: UIColor.systemGray])
            textField.autocapitalizationType = .none
            textField.autocorrectionType = .no
            textField.spellCheckingType = .no
            textField.isSecureTextEntry = true
            textField.clearsOnBeginEditing = false
            //textField.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hexCode: "#FFBF00")
        button.layer.cornerRadius = 10
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.isEnabled = false

//        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var passwordResetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hexCode: "#960018")
        button.setTitle("password 다시", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //button.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var vStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
        
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        makeUI()
        

    }
        
    
    private func makeUI() {
        NSLayoutConstraint.activate([
            
            vStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            vStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vStackView.heightAnchor.constraint(equalToConstant: 250),
            
//            passwordResetButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            passwordResetButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20)
        ])
    }
    
    private func configure() {
        view.backgroundColor = .darkGray
        view.addSubview(vStackView)
        
        vStackView.addArrangedSubview(idInfoLabel)
        vStackView.addArrangedSubview(idTextField)
        vStackView.addArrangedSubview(passwordInfoLabel)
        vStackView.addArrangedSubview(passwordTextField)
        vStackView.addArrangedSubview(loginButton)
        }

        
//    private func configure() {
//        view.backgroundColor = .darkGray
//        
////        view.addSubview(idView)
////        view.addSubview(idInfoLabel)
//        
//        [idInfoLabel, idTextField, passwordInfoLabel, passwordTextField].forEach { view.addSubview($0)
////            NSLayoutConstraint.activate([
////                $0.widthAnchor.constraint(equalTo: 300)
////                $0.heightAnchor.constraint(equalTo: 40)
////            ])
//        }
//        
//        NSLayoutConstraint.activate([
//
//            idInfoLabel.widthAnchor.constraint(equalToConstant: 300),
//            idInfoLabel.heightAnchor.constraint(equalToConstant: 40),
//            idInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            idInfoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
//                    
//            idTextField.widthAnchor.constraint(equalToConstant: 300),
//            idTextField.heightAnchor.constraint(equalToConstant: 40),
//            idTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            idTextField.topAnchor.constraint(equalTo: idInfoLabel.bottomAnchor, constant: 10),
//            
//            passwordInfoLabel.widthAnchor.constraint(equalToConstant: 300),
//            passwordInfoLabel.heightAnchor.constraint(equalToConstant: 40),
//            passwordInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            passwordInfoLabel.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 10),
//            
//            passwordTextField.widthAnchor.constraint(equalToConstant: 300),
//            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
//            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            passwordTextField.topAnchor.constraint(equalTo: passwordInfoLabel.bottomAnchor, constant: 10),
//        ])
//        
//    }
    
    //⭐️그 외 로그인 방식⭐️
    //카카오, 구글, 애플 구현 예정
    //버튼만 누르고 콜백함수로 받아올 예정
    //카카오
    
    //구글
    
    //애플
    
    
}


extension ViewController: UITextFieldDelegate {
    
    // MARK: - 텍스트 필드 편집 시작할 때 설정 (문구가 올라가면서 크기 작아짐)
    func textFieldDidBeginEditing(_ textField: UITextField) {    //autoLayout Update
        
    }
    
    // MARK: - 텍스트 필드 종료 시점 (글자 / 백그라운드 update)
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    // MARK: - id / pw 로그인 버튼 색 변경
    @objc private func textFieldEditingCharge(_ textField: UITextField) {
        
    }
    
    // MARK: - Enter 다음 줄로 이동 및 키보드 활성 유무
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }


}

extension UIColor {
    
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}
