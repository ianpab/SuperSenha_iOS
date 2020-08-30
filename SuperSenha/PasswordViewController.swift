//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Ian Pablo on 28/08/20.
//  Copyright © 2020 supersenha. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfPassword: Int = 1
    var numberOfCharacteres: Int = 10
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacteres: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas \(numberOfPassword)"

        passwordGenerator = PasswordGenerator(numberOfCharacteres: numberOfCharacteres, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacteres: useSpecialCharacteres )
        
        generatePassword()
       
    }
    
    
    func generatePassword(){
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generator(total: numberOfPassword)
               for password in passwords{
                   tvPasswords.text.append(password + "\n\n")
               }
    }

    @IBAction func generate(_ sender: UIButton) {
        generatePassword()
    }
    
}
