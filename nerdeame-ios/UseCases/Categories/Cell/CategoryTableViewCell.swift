//
//  CategoryTableViewCell.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 10/09/2020.
//  Copyright © 2020 MoureDev. All rights reserved.
//

import UIKit

final class CategoryTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    // MARK: - Properties
    
    static let kCellId = "CategoryTableViewCell"
    
    // MARK: - Life cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Setup
        setup()
    }
    
    // MARK: - Public methods
    
    func fill(category: String) {
        
        categoryLabel.text = category
    }
    
    // MARK: - Private methods
    
    private func setup() {
        
        configure()
        setupUI()
    }
    
    private func setupUI() {
        
        // Container
        containerView.backgroundColor = .primary
        
        // Label
        categoryLabel.primary()
    }
    
}
