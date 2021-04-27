//
//  SignupViewModel.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import Foundation

protocol SignupViewModelCoordinatorDelegate: class {
    func goToAddress()
    func finish()
}

class SignupViewModel: SignupViewModelType {
    
    weak var coordinatorDelegate: SignupViewModelCoordinatorDelegate?
    var email: String = ""
    
    func goToAddress() {
        coordinatorDelegate?.goToAddress()
    }
    
    func finish() {
        coordinatorDelegate?.finish()
    }
}
