//
//  StringExtension.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 23/09/2020.
//

import Foundation

extension String {
    
    func localize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
    func lowercasedLocalize() -> String {
        return localize().lowercased()
    }
    
    func uppercasedLocalize() -> String {
        return localize().uppercased()
    }
    
}
