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
        textField.frame.size.width = 100
        textField.frame.size.height = 50
        textField.placeholder = "아이디를 입력해 주세요"
        
        return textField
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }

    
    
        
        
    private func configure() {
        view.backgroundColor = .darkGray
        
//        view.addSubview(idView)
        view.addSubview(idInfoLabel)
        
        NSLayoutConstraint.activate([
//            idView.widthAnchor.constraint(equalToConstant: 300),
//            idView.widthAnchor.constraint(equalToConstant: 300),
//            idView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            idView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            idInfoLabel.widthAnchor.constraint(equalToConstant: 100),
            idInfoLabel.heightAnchor.constraint(equalToConstant: 50),
            idInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            idInfoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idInfoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
        
        
        
      
    }
    
    //⭐️그 외 로그인 방식⭐️
    //카카오, 구글, 애플 구현 예정
    //버튼만 누르고 콜백함수로 받아올 예정
    //카카오
    
    //구글
    
    //애플
    
    
}


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
