//
//  CategoriesViewController.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

final class CategoriesViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup
        setup()
    }
    
    // MARK: - Private methods
    
    private func setup() {
        
        setupTable()
    }
    
    private func setupTable() {
        
        tableView.configure(owner: self)
        
        tableView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        tableView.rowHeight = UIScreen.main.bounds.height / 5
        tableView.register(UINib(nibName: CategoryTableViewCell.kCellId, bundle: nil), forCellReuseIdentifier: CategoryTableViewCell.kCellId)
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.kCellId, for: indexPath) as? CategoryTableViewCell {
            
            cell.fill(category: "My category \(indexPath.row + 1)")
            
            return cell
        }
        
        return UITableViewCell()
    }
 
}
