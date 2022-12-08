//
//  EscolherStatus.swift
//  AppNotifica
//
//  Created by Aluno on 06/12/22.
//

import Foundation
import UIKit

class EscolherStatus : UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var textLista: UITextField!
    
    
    var listastatus: [String] = []
    var itemSelect: Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLista.delegate = self
        listastatus = ["Escolha uma opção","Nova","Em andamento"]
        let pickerLista = UIPickerView()
        pickerLista.delegate = self
        pickerLista.dataSource = self
        textLista.inputView = pickerLista
        textLista.text = listastatus[0]
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        listastatus.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        listastatus[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        itemSelect = row
    }
}
