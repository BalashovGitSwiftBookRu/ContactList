//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Sergey Balashov on 12/15/23.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    var person: Person?
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person?.fullName
        phoneLabel.text = person?.phone
        emailLabel.text = person?.email
    }
}
