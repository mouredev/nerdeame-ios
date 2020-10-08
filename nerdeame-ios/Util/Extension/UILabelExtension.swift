//
//  UILabelExtension.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

extension UILabel {
    
    func primary() {
        textColor = .secondary
    }
    
    func secondary() {
        textColor = .primary
    }
    
    func center() {
        textAlignment = .center
    }
    
}
