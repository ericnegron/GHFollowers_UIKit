//
//  FollowerCollectionViewCell.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import UIKit

class FollowerCollectionViewCell: UICollectionViewCell {
    
    static let resuseID = "FollowerCell"
    let avatarImage = GHAvatarImageView(frame: .zero)
    let userNameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        userNameLabel.text = follower.login
    }
    
    // MARK: - Custom Layout
    private func configureCell() {
        addSubview(avatarImage)
        addSubview(userNameLabel)
        let padding: CGFloat = 8
        
        
        // Constraints
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avatarImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
            
            userNameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 12),
            userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            userNameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
    
}
