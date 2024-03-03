//
//  User.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import Foundation


struct User: Codable {
    var login: String
    var name: String?
    var avatarUrl: String
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    var htmlUrl: String
    var followersUrl: String
    var createdAt: String
}
