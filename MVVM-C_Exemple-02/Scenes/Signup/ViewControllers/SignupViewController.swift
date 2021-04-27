//
//  SignupViewController.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import UIKit

protocol SignupViewModelType: class {
    var email: String { get set }
    func goToAddress()
    func finish()
}

class SignupViewController: UIViewController {
    
    private let viewModel: SignupViewModelType
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Digite seu email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.addTarget(self, action: #selector(textDidChanged), for: .editingChanged)
        return textField
    }()
    
    init(viewModel: SignupViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Increver-se"
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
        
        view.addSubview(textField)
        
        textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        textField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        textField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if isMovingFromParent {
            viewModel.finish()
        }
    }
    
    @objc private func didTap() {
        viewModel.goToAddress()
    }
    
    @objc private func textDidChanged() {
        viewModel.email = textField.text ?? ""
    }
}
