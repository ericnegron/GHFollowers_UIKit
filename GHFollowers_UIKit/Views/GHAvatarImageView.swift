//
//  GHAvatarImageView.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import UIKit

class GHAvatarImageView: UIImageView {

    let placeholderImage = UIImage(named: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Custom Layout
    private func configureImageView() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }

}
