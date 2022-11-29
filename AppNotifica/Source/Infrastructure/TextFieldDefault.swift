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
        initDefault(placeholder: placeholder, keyBoardType:.default, returnKeyType:.default)
      }
    
    init(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
          super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType:keyBoardType, returnKeyType:returnKeyType)
      }
    
    private func initDefault(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType)  {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
       }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
