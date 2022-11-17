//
//  UIcolor+.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 18 on 17/11/22.
//

import Foundation
import UIKit

extension UIColor {
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    
    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? .green
    }
    
    static var textFieldBackGroundColor: UIColor {
        UIColor(named: "textFieldBackGroundColor") ?? .white
    }
    
    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .white
    }
}
