//
//  LoginCoordinator.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import UIKit

class LoginCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let viewModel = LoginViewModel()
        viewModel.coordinatorDelegate = self
        let controller = LoginViewController(viewModel: viewModel)
        navigationController.setViewControllers([controller], animated: true)
    }
}

extension LoginCoordinator: LoginViewModelCoordinatorDelegate {
    func didTap() {
        let coordinator = SignupCoordinator(navigationController: navigationController)
        coordinator.coordinatorDelegate = self
        coordinator.start()
        chieldCoordinators.append(coordinator)
    }
}

extension LoginCoordinator: CoordinatorDelegate {
    func didFinish(coordinator: Coordinator) {
        removeChieldCoordinator(coordinator)
    }
}
