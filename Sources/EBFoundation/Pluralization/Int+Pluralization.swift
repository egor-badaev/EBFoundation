//
//  Int+Pluralization.swift
//  EBFoundation
//
//  Created by Egor Badaev on 02.03.2021.
//

import Foundation

public extension Int {

    /**
     Generates a correct form of provided `word`
     
     - Parameters:
        - word: a `PluralizableString` source
     
     - Returns:
        A correct form of provided `word`
     */
    func pluralForm(of word: PluralizableString) -> String {
        return Double(self).pluralForm(of: word)
    }
}
