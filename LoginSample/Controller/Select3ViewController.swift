//
//  Select3ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/26/24.
//

import UIKit

class Select3ViewController: UIViewController {
    var receivedData: String?

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .lightGray
            setupLabel()
        }

        private func setupLabel() {
            let label = UILabel()
            label.text = receivedData
            label.textColor = .black
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
    }
    

#Preview {
    Select1ViewController()
}
