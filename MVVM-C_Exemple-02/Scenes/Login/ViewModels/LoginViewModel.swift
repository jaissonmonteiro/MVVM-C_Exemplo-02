//
//  LoginViewModel.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import Foundation

protocol LoginViewModelCoordinatorDelegate: class {
    func didTap()
}

class LoginViewModel: LoginViewModelType {
    
    weak var coordinatorDelegate: LoginViewModelCoordinatorDelegate?
    
    func didTap() {
        coordinatorDelegate?.didTap()
    }
}
