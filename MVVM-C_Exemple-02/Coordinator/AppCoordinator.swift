//
//  AppCoordinator.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    
    let window: UIWindow
    
    private let navigationController = UINavigationController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        window.rootViewController = navigationController
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()
        window.makeKeyAndVisible()
        chieldCoordinators.append(coordinator)
    }
}
