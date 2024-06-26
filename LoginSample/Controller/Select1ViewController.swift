//
//  Select1ViewController.swift
//  LoginSample
//
//  Created by t2023-m0013 on 6/26/24.
//

import UIKit

class Select1ViewController: UIViewController {
    
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.text = "Select A Sucess"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        configure()
        makeUI()

    }
    
    private func makeUI() {
        NSLayoutConstraint.activate([

            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        ])
    }
    
    private func configure() {
        view.backgroundColor = .systemIndigo
//        [titleLabel].forEach { view.addSubview($0)}
        view.addSubview(titleLabel)
        
//        titleLabel.addArrangedSubview(select1Button)
//        vStackView.addArrangedSubview(select2Button)
//        vStackView.addArrangedSubview(select3Button)
//        vStackView.addArrangedSubview(select4Button)
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

#Preview {
    Select1ViewController()
}
