//
//  Coordinator.swift
//  MVVM-C_Exemple-02
//
//  Created by Jaisson Monteiro on 27/04/21.
//

import Foundation

protocol Coordinator: class {
    func start()
    
    func finish()
}

protocol CoordinatorDelegate: class {
    func didFinish(coordinator: Coordinator)
}

class BaseCoordinator: Coordinator {
    
    var chieldCoordinators: [Coordinator] = []
    
    func start() { }
    
    func finish() {  }
    
    func removeChieldCoordinator(_ coordinator: Coordinator) {
        guard let index = chieldCoordinators.firstIndex(where: { $0 === coordinator }) else { return }
        chieldCoordinators.remove(at: index)
    }
}
