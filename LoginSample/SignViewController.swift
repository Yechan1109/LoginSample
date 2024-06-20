import UIKit

class SignViewController: UIViewController {
    
    
    
    @IBOutlet weak var signIDTextField: UITextField!
    
    @IBOutlet weak var signPWTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingLayout()
    }
    //
    //
    
    func settingLayout() {
        // placeholder 폰트 변경하기 위한 code
        signIDTextField.attributedPlaceholder = NSAttributedString(string: "아이디를 입력해주세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        signPWTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력해주세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])}
    
    
    // DataBase 생성 -> 고정값이 아니니 변수로 형성할 것
    var userDB: [String : String] = [:]
    
    
    @IBAction func SignButton(_ sender: UIButton) {
        
        // 전역변수로 아이디, 비밀번호 생서ㅏㅇ , 옵셔널 바인딩을 사용하여 nil 체크
//        guard let userName = signIDTextField.text, !userName.isEmpty, // userName이 비어 있으면 true -> 입력값 존재 유뮤 확인
//              let userPassword = signPWTextField.text, !userPassword.isEmpty
//        else {
//            showAlert(message: "모든 값을 일력해 주시지요")
//            return
//        }
        guard let userName = signIDTextField.text, !userName.isEmpty,
                      let userPassword = signPWTextField.text, !userPassword.isEmpty else {
                    showAlert(message: "모든 값을 입력해 주세요.")
                    return
                }
        
        if userDB[userName] != nil {
            showAlert(message: "이미 존재하는 아이디입니다. 다른 아이디를 입력하세요")
            return
        }
        
        // 유저정보 -> 딕셔너리 저장
        userDB[userName] = userPassword
        showAlert(message: "회원가입이 완료되었습니다.") {
            // 회원가입이 완료되면 로그인 화면으로 전환
//            let loginViewController = LoginViewController()
            let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController
            loginViewController!.userDB = self.userDB
            
            self.navigationController?.pushViewController(loginViewController!, animated: true)
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
    
}

 
