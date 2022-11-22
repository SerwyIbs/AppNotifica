//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by Aluno on 22/11/22.
//

import Foundation
import UIKit
class TextFieldDefault: UITextField{
    init(placeholder: String) {
          super.init(frame: .zero)
        initDefault(placeholder: placeholder)
      }
    private func initDefault(placeholder: String) {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
       }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}