//
//  AddressSignupViewController.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//
import UIKit

protocol AddressSignupViewModelType: class { }

class AddressSignupViewController: UIViewController {
    
    private let viewModel: AddressSignupViewModelType
    
    init(viewModel: AddressSignupViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Endereço"
    }
}
