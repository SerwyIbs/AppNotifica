//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 18 on 08/11/22.
//

import Foundation
import UIKit
class LoginViewController :ViewControllerDefault {
    
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        return loginView
    }()
       override func loadView(){
           self.view = loginView
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        
        }
    }
    

