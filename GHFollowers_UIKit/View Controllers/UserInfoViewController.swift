//
//  UserInfoViewController.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/5/24.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(userName!)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }


}
