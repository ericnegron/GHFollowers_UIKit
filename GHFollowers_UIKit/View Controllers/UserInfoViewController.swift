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
                
        getUser(with: userName)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

    
    //MARK: - Networking
    func getUser(with username: String) {
        NetworkManager.shared.getGHUser(forUserName: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print("User: \(user)")
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Oops!", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }

}
