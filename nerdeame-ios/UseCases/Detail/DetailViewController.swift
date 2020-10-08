//
//  DetailViewController.swift
//  nerdeame-ios
//
//  Created by Brais Moure on 08/10/2020.
//

import UIKit

final class DetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Properties
    
    private let creator: String
    
    // MARK: - Initialization
    
    init(creator: String) {
        self.creator = creator
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

        nameLabel.secondary()
        nameLabel.center()
        nameLabel.text = creator
        
        avatarImageView.round()
        flagImageView.round()
        
        avatarImageView.image = UIImage(systemName: "person.circle.fill")
        avatarImageView.backgroundColor = .primary
        
        flagImageView.image = UIImage(systemName: "flag.circle.fill")
        flagImageView.backgroundColor = .primary
    }
    
    private func localize() {

        title = "app.title".uppercasedLocalize()
    }

}
