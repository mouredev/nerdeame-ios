//
//  CategoriesViewController.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

enum CategoriesMode {
    case category, subcategory, creator
}

final class CategoriesViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    private let mode: CategoriesMode
    
    // MARK: - Initialization
    
    init(mode: CategoriesMode) {
        self.mode = mode
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup
        setup()
        localize()
    }
    
    // MARK: - Private methods
    
    private func setup() {
        
        setupTable()
    }
    
    private func localize() {
        
        title = "app.title".uppercasedLocalize()
    }
    
    private func setupTable() {
        
        tableView.configure(owner: self)
        
        tableView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        
        switch mode {
        case .category:
            tableView.rowHeight = UIScreen.main.bounds.height / 5
        case .subcategory:
            tableView.rowHeight = UIScreen.main.bounds.height / 8
        case .creator:
            tableView.rowHeight = UIScreen.main.bounds.height / 3
        }
        
        tableView.register(UINib(nibName: CategoryTableViewCell.kCellId, bundle: nil), forCellReuseIdentifier: CategoryTableViewCell.kCellId)
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch mode {
        case .category:
            return 10
        case .subcategory:
            return 20
        case .creator:
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.kCellId, for: indexPath) as? CategoryTableViewCell {
            
            switch mode {
            case .category:
                cell.fill(category: "My category \(indexPath.row + 1)")
            case .subcategory:
                cell.fill(category: "My subcategory \(indexPath.row + 1)")
            case .creator:
                cell.fill(category: "Creator \(indexPath.row + 1)")
            }

            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch mode {
        case .category:
            navigationController?.pushViewController(CategoriesViewController(mode: .subcategory), animated: true)
        case .subcategory:
            navigationController?.pushViewController(CategoriesViewController(mode: .creator), animated: true)
        case .creator:
            break
        }
        
    }
 
}
