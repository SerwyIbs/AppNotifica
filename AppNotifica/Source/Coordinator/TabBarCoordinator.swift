//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by Aluno on 29/11/22.
//

import Foundation
import UIKit
class TabBarCoordinator: Coordinator {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start(){
       let tabbarController = TabBarController()
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabbarController.setViewControllers([homeViewCoordinator.homeViewController,novaOcorrenciaViewCoordinator.novaOcorrenciaViewController,sobreViewCoordinator.sobreViewController], animated: true)
    self.navigationController.pushViewController(tabbarController, animated: true)
        
    }
}

