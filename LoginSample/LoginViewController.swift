import UIKit

class LoginViewController: UIViewController {
    
    
    
//    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    
    // 값 확인용 임시 Label
    @IBOutlet weak var pwTest: UILabel!
    @IBOutlet weak var idTest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingLayout()
        
        
    }
    
    
    
    
    // DataBase 생성 -> 고정값이 아니니 변수로 형성할 것
    var userDB: [String : String] = [:]
    
    func settingLayout() {
        
        // placeholder 폰트 변경하기 위한 code
        idTextField.attributedPlaceholder = NSAttributedString(string: "아이디를 입력해주세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        pwTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력해주세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
    }
    
//    var loginDict: [String : String] = ["ychic1109": "1004"]
//    
//    
//    let id: String = "yechan"
//    let password:String = "1004"
    
    
    
    @IBAction func checkBtn(_ sender: UIButton) {
        
        // input값 보여주기용 test
        idTest.text = idTextField.text
        pwTest.text = pwTextField.text
        
//        완전 오리지날 코드
//        if (idTextField.text == self.id) && (pwTextField.text == self.password) {
//            print("로그인에 성공하셨습니다 :)")
//            idTest.backgroundColor = .green}
//        else {
//            print("올바른 아이디와 비밀번호를 입력해 주세요!")
//            idTest.backgroundColor = .red
//        }
        
        guard let username = idTextField.text, !username.isEmpty,       // userName이 비어 있으면 true -> 입력값 존재 유뮤 확인
              let password = pwTextField.text, !password.isEmpty else {
            showAlert(message: "아이디와 비밀번호를 입력해 주세요.")
            return
        }
        
        
        if let inputPassword = userDB[username], inputPassword == password {
                    showAlert(message: "로그인 성공!")
                } else {
                    showAlert(message: "아이디 또는 비밀번호가 잘못되었습니다.")
                }
        
//                userDB[username] = password
//                showAlert(message: "회원가입 완료!")
//                
//                if let inputPassword = userDB[username], inputPassword["password"] == password {
//                    showAlert(message: "로그인 성공!")
//                } else {
//                    showAlert(message: "아이디 또는 비밀번호가 잘못되었습니다.")
//                }
//commit update 확인용
        var qwe = ""
        
        
    }
    
    func showAlert(message: String) {
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "확인", style: .default))
            present(alertController, animated: true)
        }
    
    
}
