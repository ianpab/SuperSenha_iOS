//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Ian Pablo on 28/08/20.
//  Copyright © 2020 supersenha. All rights reserved.
//

import Foundation

class PasswordGenerator {
    
     var numberOfCharacteres: Int
     var useLetters: Bool!
     var useNumbers: Bool!
     var useCapitalLetters: Bool!
     var useSpecialCharacteres: Bool!
     
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacteres = ",.!@#$%ˆ&*(){+?><}[`]-"
    private let numbers = "0123456789"
    
    
    
    init( numberOfCharacteres: Int ,useLetters: Bool,useNumbers: Bool,useCapitalLetters: Bool,useSpecialCharacteres: Bool) {
        
        var numchars = min(numberOfCharacteres, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacteres = numchars
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacteres = useSpecialCharacteres
    }
    
    func generator( total: Int) -> [String]{
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        if useNumbers{
            universe += numbers
        }
        if useSpecialCharacteres{
            universe += specialCharacteres
        }
        if useCapitalLetters{
            universe += letters.uppercased()
        }
        
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacteres{
            let index = Int(arc4random_uniform(UInt32(universeArray.count)))
            password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
        
    }
    
}
