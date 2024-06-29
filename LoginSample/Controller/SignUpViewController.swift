//
//  SignUpViewController.swift
//  LoginSample
//
//  Created by 남지연 on 6/21/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    var signUserDB: [String : String] = [:]
//    let loginViewController = LoginViewController()
//    var signUserDB = loginViewController.userDB
    
//
    
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
    
    private lazy var signIDTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .black
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.textColor = .white
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.keyboardType = .default
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
    
    private lazy var signPWTextField: UITextField = {
            let textField = UITextField()
            textField.backgroundColor = .black
            textField.textColor = .white
            textField.font = UIFont.systemFont(ofSize: 15)
            textField.tintColor = .white
            textField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력해 주세요", attributes: [.foregroundColor: UIColor.systemGray])
            textField.autocapitalizationType = .none
            textField.autocorrectionType = .no
            textField.keyboardType = .numberPad
            textField.spellCheckingType = .no
            textField.isSecureTextEntry = true
            textField.clearsOnBeginEditing = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
    
    private lazy var checkButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.setTitle("확인", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.isEnabled = true
        button.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
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
    // keypad 내리는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @objc private func checkButtonTapped() {
        
        guard let userName = signIDTextField.text, !userName.isEmpty,
              let userPassword = signPWTextField.text, !userName.isEmpty else {
            showAlert(message: "모든 값을 입력해 주세요")
            return
        }
        if signUserDB[userName] != nil {
            showAlert(message: "이미 존재하는 아이디입니다. 다른 아이디를 입력하세요")
            return
        }
        // user id,pw -> userDB에 저장
        signUserDB[userName] = userPassword // DB에 입력정보(key, value) 저장
        showAlert(message: "회원가입이 완료되었습니다 :)") {
            // 회원가입이 완료되면 로그인 화면으로 전환
            let loginViewController = LoginViewController()
                    loginViewController.userDB = self.signUserDB
                    self.navigationController?.pushViewController(loginViewController, animated: true)

        }
        
    }
    
    // 알람 기능 관련
    func showAlert(message: String, completion: (() -> Void)? = nil) {
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default) { _ in
                completion?()
            }
            alertController.addAction(okAction)
            present(alertController, animated: true)
        }
    
//    @objc private func signupButtonTapped() {
//            let signUpViewController = SignUpViewController()
//                navigationController?.pushViewController(signUpViewController, animated: true)
//        }
    

    
    private func makeUI() {
        NSLayoutConstraint.activate([
            
            vStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            vStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vStackView.heightAnchor.constraint(equalToConstant: 250),
     
        ])
    }
    
    private func configure() {
        view.backgroundColor = UIColor(hexCode: "#FFBF00")
        [vStackView].forEach { view.addSubview($0)}
        
        vStackView.addArrangedSubview(idInfoLabel)
        vStackView.addArrangedSubview(signIDTextField)
        vStackView.addArrangedSubview(passwordInfoLabel)
        vStackView.addArrangedSubview(signPWTextField)
        vStackView.addArrangedSubview(checkButton)
        }
    

}

#Preview {
    SignUpViewController()
}
