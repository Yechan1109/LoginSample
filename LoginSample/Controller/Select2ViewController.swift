//
//  Select1ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/26/24.
//

import UIKit

class Select2ViewController: UIViewController {
    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .lightGray
            setupDismissButton()
        }

        private func setupDismissButton() {
            let button = UIButton(type: .system)
            button.setTitle("뒤로 가기 버튼 이걸로 Dismiss를 활용해도 되겠네ㅎㅎ", for: .normal)
            button.addTarget(self, action: #selector(dismissSecondViewController), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false

            view.addSubview(button)
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }

        @objc private func dismissSecondViewController() {
            dismiss(animated: true, completion: nil)
        }
    
}

#Preview {
    Select2ViewController()
}
