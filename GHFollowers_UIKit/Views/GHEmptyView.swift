//
//  GHEmptyView.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/5/24.
//

import UIKit

class GHEmptyView: UIView {

    let placeholderImage = UIImage(named: "empty-state-logo")
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configureView()
    }
    
    // MARK: - Custom Layout
    private func configureView() {
        addSubview(messageLabel)
        addSubview(logoImageView)
        
        // Configure Subviews
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImageView.image = placeholderImage
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Constraints
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        
        ])
    }
    
}
