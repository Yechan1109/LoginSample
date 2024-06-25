//
//  MainViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/25/24.
//

import UIKit

class MainViewController: UIViewController {
    
    // 유저 정보 가지고 와서 라벨에 붙일것
    var userDB: [String : String] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let label = UILabel()
            label.text = "Welcome to My World!"
            label.textColor = .white
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)

            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])

    }
    

}

#Preview {
    MainViewController()
}
