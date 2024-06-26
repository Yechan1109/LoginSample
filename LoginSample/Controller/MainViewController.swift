//
//  MainViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/25/24.
//

import UIKit

class MainViewController: UIViewController {
    
    // 유저 정보 가지고 와서 이후 트랙킹해보기
    var loginDB = LoginViewController().userDB
    private let dataToSend = "Admin님아 전달할 데이터 받아랏"
    
    
    private lazy var select1Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 10
        button.setTitle("Navigation Controller를 사용한 Push", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.isEnabled = true
        button.addTarget(self, action: #selector(select1BtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var select2Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemMint
        button.layer.cornerRadius = 10
        button.setTitle("모달전환 Present/Dismiss", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.isEnabled = true
        button.addTarget(self, action: #selector(select2BtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var select3Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.setTitle("Segue with Data (커스텀 Segue와 비슷한 방식)", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.isEnabled = true
        button.addTarget(self, action: #selector(select3BtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var select4Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.setTitle("Add Child View Controller를 통한 하위 뷰 생성", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.isEnabled = true
//        button.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var select5Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 10
        button.setTitle("Coordinate 패턴(but, 난이도가 높아 추후 업데이트 예정", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#ffffff"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 11)
        button.isEnabled = true
//        button.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
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
//        select4BtnTapped()

    }
    
    @objc func select1BtnTapped() {
        let seletct1ViewController = Select1ViewController()
        self.navigationController?.pushViewController(seletct1ViewController, animated: true)
    }
    
    @objc private func select2BtnTapped() {
        let seletct2ViewController = Select2ViewController()
        seletct2ViewController.modalPresentationStyle = .fullScreen
        present(seletct2ViewController, animated: true, completion: nil)
    }
    
    @objc func select3BtnTapped() {
        let seletct3ViewController = Select3ViewController()
        seletct3ViewController.receivedData = dataToSend
        navigationController?.pushViewController(seletct3ViewController, animated: true)
    }
    
    private func select4BtnTapped() {
            let childViewController = Select4ViewController()
            addChild(childViewController)
            view.addSubview(childViewController.view)
            childViewController.view.frame = view.bounds
            childViewController.didMove(toParent: self)
        }
    
    
    
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
        
        vStackView.addArrangedSubview(select1Button)
        vStackView.addArrangedSubview(select2Button)
        vStackView.addArrangedSubview(select3Button)
        vStackView.addArrangedSubview(select4Button)
        vStackView.addArrangedSubview(select5Button)
        }
    
}

#Preview {
    MainViewController()
}
