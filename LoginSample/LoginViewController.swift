import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var idTextField: UITextView!
    @IBOutlet weak var pwTextField: UITextView!
    
    // 값 확인용 임시 Label
    @IBOutlet weak var pwTest: UILabel!
    @IBOutlet weak var idTest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        
        
    }
    
    let id: String = "Admin"
    let password:String = "1004"
    
    func setLayout() {
//        idTextField.
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        
        idTest.text = idTextField.text
        pwTest.text = pwTextField.text
        
//        UITextFieldDelegate()
        
        if (idTextField.text == self.id) && (pwTextField.text == self.password) {
            print("로그인에 성공하셨습니다 :)")
            idTest.backgroundColor = .green}
            
        else {
            print("올바른 아이디와 비밀번호를 입력해 주세요!")
            idTest.backgroundColor = .red
            
            
            
        }
        
        
        
        
    }
    
    
    
    
}

