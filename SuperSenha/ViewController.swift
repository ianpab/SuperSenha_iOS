//
//  ViewController.swift
//  SuperSenha
//
//  Created by Ian Pablo on 27/08/20.
//  Copyright © 2020 supersenha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPassword: UITextField!
    @IBOutlet weak var tfNumberOfCharacteres: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacteres: UISwitch!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordViewController = segue.destination as! PasswordViewController
        
        if let totalPassword = Int(tfTotalPassword.text!){
            passwordViewController.numberOfPassword = totalPassword
        }
        if let totalCharacteres = Int(tfNumberOfCharacteres.text!){
            passwordViewController.numberOfCharacteres = totalCharacteres
               }
        passwordViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordViewController.useSpecialCharacteres = swSpecialCharacteres.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.useLetters = swLetters.isOn
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

