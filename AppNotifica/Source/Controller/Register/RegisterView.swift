//
//  RegisterView.swift
//  AppNotifica
//
//  Created by Aluno on 22/11/22.
//

import Foundation
import UIKit

class RegisterView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
    }

 //cria a função com as propriadades
 var imageLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar", font: UIFont.systemFont(ofSize: 27, weight: .regular))
 var emailTextField = TextFieldDefault (placeholder: "E-mail")
 var senhaTextField = TextFieldDefault (placeholder: "Senha")
 var confirmaSenhaTextField = TextFieldDefault (placeholder: "Confirme sua senha")
 var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
 var buttonLogar = ButtonDefault(botao: "LOGAR")
     
    
    func setupVisualElements(){
        
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        self.addSubview(confirmaSenhaTextField)
        
    
        
        NSLayoutConstraint.activate([
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 228),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor,constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            confirmaSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmaSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmaSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor,constant: 23),
            confirmaSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            confirmaSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
        ])
    
        
        NSLayoutConstraint.activate([
        buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
        buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
        buttonRegistrar.topAnchor.constraint(equalTo: confirmaSenhaTextField.bottomAnchor, constant: 25),
        buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])

        NSLayoutConstraint.activate([
        buttonLogar.widthAnchor.constraint(equalToConstant: 374),
        buttonLogar.heightAnchor.constraint(equalToConstant: 60),
        buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
        buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

