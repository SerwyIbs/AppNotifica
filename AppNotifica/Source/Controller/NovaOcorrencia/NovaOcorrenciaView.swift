//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by Aluno on 29/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
   
    var tituloTextField = TextFieldDefault (placeholder: "Título", keyBoardType: .emailAddress, returnKeyType: .next)
    var descriçãoTextField = TextFieldDefault (placeholder: "Descrição", keyBoardType: .emailAddress, returnKeyType: .next)
       
    var localizaçãoSenhaTextField =  TextFieldDefault (placeholder: "Localização", keyBoardType: .emailAddress, returnKeyType: .done)
        
    var dataTextField = TextFieldDefault (placeholder: "Data", keyBoardType: .emailAddress, returnKeyType: .next)
    var statusTextField = TextFieldDefault (placeholder: "Status", keyBoardType: .emailAddress, returnKeyType: .next)
    var buttonSalvar = ButtonDefault(botao: "SALVAR")
   
        
       
       override func setupVisualElements(){
           super.setupVisualElements()
           
           self.addSubview(tituloTextField)
           self.addSubview(descriçãoTextField)
           self.addSubview(localizaçãoSenhaTextField)
           self.addSubview(dataTextField)
           self.addSubview(statusTextField)
           self.addSubview(buttonSalvar)
           
           
           
           NSLayoutConstraint.activate([
            tituloTextField.widthAnchor.constraint(equalToConstant: 100),
            tituloTextField.topAnchor.constraint(equalTo: self.topAnchor,constant: 228),
            tituloTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            tituloTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
           ])
           
           NSLayoutConstraint.activate([
            descriçãoTextField.widthAnchor.constraint(equalToConstant: 374),
            descriçãoTextField.heightAnchor.constraint(equalToConstant: 60),
            descriçãoTextField.topAnchor.constraint(equalTo: tituloTextField.bottomAnchor,constant: 70),
            descriçãoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            descriçãoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
           ])
           
           NSLayoutConstraint.activate([
            localizaçãoSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            localizaçãoSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            localizaçãoSenhaTextField.topAnchor.constraint(equalTo: descriçãoTextField.bottomAnchor,constant: 23),
            localizaçãoSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            localizaçãoSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
           ])
           
           NSLayoutConstraint.activate([
            dataTextField.widthAnchor.constraint(equalToConstant: 374),
            dataTextField.heightAnchor.constraint(equalToConstant: 60),
            dataTextField.topAnchor.constraint(equalTo: localizaçãoSenhaTextField.bottomAnchor,constant: 23),
            dataTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            dataTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
           ])
       
           
           NSLayoutConstraint.activate([
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: dataTextField.bottomAnchor, constant: 25),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
           ])

           NSLayoutConstraint.activate([
            buttonSalvar.widthAnchor.constraint(equalToConstant: 374),
            buttonSalvar.heightAnchor.constraint(equalToConstant: 60),
            buttonSalvar.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 25),
            buttonSalvar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonSalvar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
           ])
       }
    

}
