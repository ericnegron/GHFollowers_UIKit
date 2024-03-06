//
//  User.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import Foundation


struct User: Codable {
    let login: String
    let name: String?
    var avatarUrl: String
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let htmlUrl: String
    let followersUrl: String
    let createdAt: String
}
