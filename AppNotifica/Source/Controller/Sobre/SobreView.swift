//
//  SobreView.swift
//  AppNotifica
//
//  Created by Aluno on 29/11/22.
//

import Foundation
import UIKit

class SobreView: ViewDefault{
    var imageLogin = ImageDefault(image: "ImageLogin")
    var imageLabel0 = LabelDefault(text: "Aplicativo desenvolvido pelos professores do curso Desenvolvimento de aplicativos utilizando a linguagem Swift do IFB com intuito de permitir que ocorrências sejam registradas e acompanhadas, bem como solucionadas.", font: UIFont.systemFont(ofSize: 15, weight: .regular))
    
    var imageLabel2 = LabelDefault(text: "Desenvolvedores:", font: UIFont.systemFont(ofSize: 15, weight: .black))
    
    var imageLabel3 = LabelDefault(text: "Caio Moura Daoud\nDiógenes Ferreira Reis Fustinoni\nFábio Ferraz Fernandez\nHeitor José dos Santos Barros\nJosé Dario Pintor da Silva\nTiago Henrique Faccio Segato", font: UIFont.systemFont(ofSize: 15, weight: .regular))
    
   
        
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.addSubview(imageLogin)
        self.addSubview(imageLabel0)
        self.addSubview(imageLabel2)
        self.addSubview(imageLabel3)
       
        
        NSLayoutConstraint.activate([
        
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel0.widthAnchor.constraint(equalToConstant: 340),
            imageLabel0.heightAnchor.constraint(equalToConstant: 120),
            imageLabel0.topAnchor.constraint(equalTo: self.topAnchor, constant: 336),
            imageLabel0.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 34),
            imageLabel0.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            imageLabel2.widthAnchor.constraint(equalToConstant: 132),
            imageLabel2.heightAnchor.constraint(equalToConstant: 24),
            imageLabel2.topAnchor.constraint(equalTo: self.topAnchor, constant: 489),
            imageLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 34),
            imageLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            imageLabel3.widthAnchor.constraint(equalToConstant: 243),
            imageLabel3.heightAnchor.constraint(equalToConstant: 180),
            imageLabel3.topAnchor.constraint(equalTo: self.topAnchor, constant: 520),
            imageLabel3.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 42),
            imageLabel3.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),

        
        ])
    }
    
    
}

    
    
