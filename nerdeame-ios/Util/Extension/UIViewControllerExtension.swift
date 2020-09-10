//
//  UIViewControllerExtension.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Transforma en ViewController en un NavigationViewController
    func embeddedInNavigation() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
    
}
