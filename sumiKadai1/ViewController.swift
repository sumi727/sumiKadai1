//
//  ViewController.swift
//  sumiKadai1
//
//  Created by 角友汰 on 2023/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!

    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        textField3.keyboardType = .numberPad
        textField4.keyboardType = .numberPad
        textField5.keyboardType = .numberPad

        calculateButton.addAction(UIAction(handler: { [self] _ in
            let result: Int = check(textField: textField1) + check(textField: textField2) + check(textField: textField3) + check(textField: textField4) + check(textField: textField5)
            resultLabel.text = "\(result)"
        }), for: .touchUpInside)

    }
    func check(textField: UITextField) -> Int{
        return Int(textField.text!) ?? 0
    }
}

