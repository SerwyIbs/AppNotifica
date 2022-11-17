//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 18 on 08/11/22.
//

import Foundation
import UIKit

class LoginView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        setupVisualElements()
    }
    //criar as funcoes com as propriedades da imagem do login
    var imageLogin: UIImageView = {
        let imagem = UIImageView ()
        imagem.image = UIImage(named:"ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
        return imagem
    }()
    
    //criar as funcoes com as propriedades da label de login
    var imageLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor (red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font =  UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //criar as funcoes com as propriedades da label da e-mail
    var emailTexField: UITextField = {
        let textfField = UITextField ()
        textfField.font = UIFont(name: "SFProText-Regular", size: 17)
        textfField.placeholder = "E-mail"
        textfField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textfField.translatesAutoresizingMaskIntoConstraints = false
    return textfField
    }()
    
    //criar as funcoes com as propriedades da label da senha
    var senhaTextfield: UITextField = {
        let textfFieldS = UITextField ()
        textfFieldS.font =  UIFont(name: "SFProText-Regular", size: 17)
        textfFieldS.placeholder = "Senha"
        textfFieldS.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textfFieldS.translatesAutoresizingMaskIntoConstraints = false
    return textfFieldS
    }()
    
    
   /* //criar as funcoes com as propriedades do butao logar
    var buttonLogar: UIButton = {
        let button = UIButton ()
        button.setTitle ("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor (red: 0.369, green: 0.639, bleu: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //criar as funcoes com as propriedades do butao registrar
    var buttonRegistrar: UIButton = {
        let button = UIButton ()
        button.setTitle ("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor (red: 0.369, green: 0.639, bleu: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()*/
    
    func setupVisualElements(){
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTexField)
        self.addSubview(senhaTextfield)
       /* self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)*/
        
        NSLayoutConstraint.activate([
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor,constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -57),
        ])
        
        NSLayoutConstraint.activate([
            imageLabel.widthAnchor.constraint(equalToConstant: 700),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor,constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            emailTexField.widthAnchor.constraint(equalToConstant: 374),
            emailTexField.topAnchor.constraint(equalTo: imageLogin.bottomAnchor,constant: 100),
            emailTexField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            emailTexField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            senhaTextfield.widthAnchor.constraint(equalToConstant: 374),
            senhaTextfield.topAnchor.constraint(equalTo: imageLogin.bottomAnchor,constant: 180),
            senhaTextfield.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            senhaTextfield.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
        ])
 
      /*  NSLayoutConstraint.activate([
       senhaTextfield.widthAnchor.constraint(equalToConstant: 374),
       senhaTextfield.topAnchor.constraint(equalTo: imageLogin.bottomAnchor,constant: 180),
       senhaTextfield.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
       senhaTextfield.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
   ])*/
    }
 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

