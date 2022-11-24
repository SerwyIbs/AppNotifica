//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 18 on 08/11/22.
//

import Foundation
import UIKit
class LoginViewController : UIViewController {
    
    var onRegisterTap: (() -> Void)?
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        return loginView
    }()
       override func loadView(){
           self.view = loginView
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
    

