import UIKit

final class LoginViewController: UIViewController {
    
    
    
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
    
    var userDB: [String : String] = [:]
    
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
        button.isEnabled = true // 기능 구현 완료시 버튼 활성화(true) 할 것
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var signupButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.isEnabled = true // 기능 구현 완료시 버튼 활성화(true) 할 것
        button.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
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
    
    @objc private func signupButtonTapped() {
            let signUpViewController = SignUpViewController()
                navigationController?.pushViewController(signUpViewController, animated: true)
        }
    
    @objc private func loginButtonTapped() {
        guard let userName = idTextField.text, !userName.isEmpty,
              let userPassword = passwordTextField.text, !userName.isEmpty else {
            showAlert(message: "모든 값을 입력해 주세요")
            return
        }
        if let inputPw = userDB[userName], inputPw == userPassword {
            showAlert(message: "로그인 성공!")
            // 로그인 성공 시 다음 페이지 넘어가는 코드 구현
            // 여기 작동 X -> SceneDelegate를 건드려서 억지로 작업할 수 있지만
            /* 다음과 같은 방법 존재함.
             Segue 사용: Interface Builder를 사용하여 스토리보드에서 segue를 정의하고, 이를 통해 화면 간 전환을 관리할 수 있습니다. Segue는 앱의 UI 흐름을 시각적으로 관리할 수 있게 해줍니다.

             커스텀 NavigationManager 클래스 사용: 앱의 네비게이션 스택을 중앙에서 관리하는 클래스를 만들어서, 해당 클래스를 통해 페이지 전환을 처리할 수 있습니다. 이 경우 각 ViewController에서 네비게이션 스택 관리 코드를 반복하지 않고, 중앙에서 관리할 수 있습니다.

             Coordinator 패턴 사용: Coordinator 패턴을 사용하면 화면 전환 로직을 완전히 분리하여 각각의 ViewController가 자신의 역할에 집중할 수 있습니다. Coordinator는 네비게이션 스택의 전환을 관리하고, 각 ViewController에게 적절한 화면 전환을 지시합니다.
             
             prepare(for segue: UIStoryboardSegue, sender: Any?) 메서드는 Segue를 사용하여 화면 간 데이터 전달 및 설정을 위해 자주 활용되는 메서드입니다. 이 메서드를 사용하면 Segue가 발생하기 전에 데이터를 준비하거나 설정할 수 있습니다.

             */
            // How to
            let mainViewController = MainViewController()
                navigationController?.pushViewController(mainViewController, animated: true)
        } else {
            showAlert(message: "아이디 또는 비밀번호가 틀렸습니다. 다시 입력해 주세요")
        }
        
    }

    
    private func makeUI() {
        NSLayoutConstraint.activate([
            
            vStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            vStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vStackView.heightAnchor.constraint(equalToConstant: 250),
      
            signupButton.topAnchor.constraint(equalTo: vStackView.bottomAnchor, constant: 5),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            passwordResetButton.widthAnchor.constraint(equalToConstant: 250),
            passwordResetButton.heightAnchor.constraint(equalToConstant: 30),
            passwordResetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordResetButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    private func configure() {
        view.backgroundColor = .darkGray
//        view.addSubview(vStackView)
//        view.addSubview(passwordResetButton)
//        view.addSubview(signupButton)
        [vStackView, passwordResetButton, signupButton].forEach { view.addSubview($0)}
        
        vStackView.addArrangedSubview(idInfoLabel)
        vStackView.addArrangedSubview(idTextField)
        vStackView.addArrangedSubview(passwordInfoLabel)
        vStackView.addArrangedSubview(passwordTextField)
        vStackView.addArrangedSubview(loginButton)
        }
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "확인", style: .default))
        present(alertController, animated: true)
    }

    
    //⭐️그 외 로그인 방식⭐️
    //카카오, 구글, 애플 구현 예정
    //버튼만 누르고 콜백함수로 받아올 예정
    //카카오
    
    //구글
    
    //애플
    
    
}


extension LoginViewController: UITextFieldDelegate {
    
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

//@available(iOS 17.0, *) /
#Preview {
    LoginViewController()
}
