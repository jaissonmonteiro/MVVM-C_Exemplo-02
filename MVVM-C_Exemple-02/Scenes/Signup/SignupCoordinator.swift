//
//  SignupCoordinator.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import UIKit

class SignupCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    
    private lazy var viewModel: SignupViewModelType = {
        let viewModel = SignupViewModel()
        viewModel.coordinatorDelegate = self
        return viewModel
    }()
    
    weak var coordinatorDelegate: CoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let controller = SignupViewController(viewModel: viewModel)
        navigationController.pushViewController(controller, animated: true)
    }
    
    override func finish() {
        coordinatorDelegate?.didFinish(coordinator: self)
    }
}

extension SignupCoordinator: SignupViewModelCoordinatorDelegate {
    
    func goToAddress() {
        let viewModel = AddressSignupViewModel()
        let controller = AddressSignupViewController(viewModel: viewModel)
        navigationController.pushViewController(controller, animated: true)
    }
}
