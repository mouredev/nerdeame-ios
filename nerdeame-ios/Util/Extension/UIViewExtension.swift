//
//  UIViewExtension.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 08/10/2020.
//

import UIKit

extension UIView {
    
    func round() {
        layer.cornerRadius = layer.bounds.height / 2
        clipsToBounds = true
    }
    
}
