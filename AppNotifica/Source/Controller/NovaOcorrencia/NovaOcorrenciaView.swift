//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by Aluno on 29/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
    
    var onCameraTap: (()->Void)?
    var onStatusTap: (()->Void)?
    lazy var imagem: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named: "imagemCamera" )
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    var tituloTextField = TextFieldDefault (placeholder: "Título", keyBoardType: .default, returnKeyType: .next)
    var descriçãoTextField = TextFieldDefault (placeholder: "Descrição", keyBoardType: .default, returnKeyType: .next)
    var localizaçãoSenhaTextField =  TextFieldDefault (placeholder: "Localização", keyBoardType: .default, returnKeyType: .next)
    var statusTextField = TextFieldDefault (placeholder: "Status", keyBoardType: .default, returnKeyType: .done)
    
    var buttonSalvar = ButtonDefault(botao: "SALVAR")
    
    
    override func setupVisualElements(){
        self.addSubview(imagem)
        self.addSubview(tituloTextField)
        self.addSubview(descriçãoTextField)
        self.addSubview(localizaçãoSenhaTextField)
        self.addSubview(statusTextField)
        self.addSubview(buttonSalvar)
        
        
        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:-15),
        
          
             tituloTextField.widthAnchor.constraint(equalToConstant: 374),
            tituloTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor,constant: 20),
             tituloTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
             tituloTextField.heightAnchor.constraint(equalToConstant: 60),
            tituloTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),
          
          
             descriçãoTextField.widthAnchor.constraint(equalToConstant: 374),
             descriçãoTextField.heightAnchor.constraint(equalToConstant: 60),
             descriçãoTextField.topAnchor.constraint(equalTo: tituloTextField.bottomAnchor,constant: 5),
             descriçãoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
             descriçãoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),
        
          
             localizaçãoSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
             localizaçãoSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
             localizaçãoSenhaTextField.topAnchor.constraint(equalTo: descriçãoTextField.bottomAnchor,constant: 5),
             localizaçãoSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
             localizaçãoSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15),
            
            
             statusTextField.widthAnchor.constraint(equalToConstant: 374),
             statusTextField.heightAnchor.constraint(equalToConstant: 60),
             statusTextField.topAnchor.constraint(equalTo: localizaçãoSenhaTextField.bottomAnchor, constant: 5),
             statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
             statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
             buttonSalvar.widthAnchor.constraint(equalToConstant: 374),
             buttonSalvar.heightAnchor.constraint(equalToConstant: 60),
             buttonSalvar.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
             buttonSalvar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
             buttonSalvar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            ])
        }
     
@objc
    private func cameraTap () {
        self.onCameraTap?()
    }
    
    func setImage (image:UIImage){
        imagem.image = image 
    }
    
    @objc
        private func statusTap () {
            self.onStatusTap?()
        }
    func setList (image:UIImage){
        imagem.image = image
    }
 }

