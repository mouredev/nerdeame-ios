//
//  UITableViewExtension.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

extension UITableView {
    
    // Configuración por defecto de una tabla
    func configure(owner: UIViewController) {
        
        tableFooterView = UIView()
        separatorStyle = .none
        dataSource = owner as? UITableViewDataSource
        self.delegate = owner as? UITableViewDelegate
    }
    
}
