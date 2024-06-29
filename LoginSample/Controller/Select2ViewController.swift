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
            button.setTitle("뒤로가기 버튼 커스텀 가능", for: .normal)
            button.addTarget(self, action: #selector(dismissViewController), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false

            view.addSubview(button)
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }

            @objc private func dismissViewController() {
                dismiss(animated: true, completion: nil)
            }
        
    }

#Preview {
    Select2ViewController()
}
