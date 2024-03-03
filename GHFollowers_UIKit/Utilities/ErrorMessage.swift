//
//  ErrorHandler.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This user name created an invalide request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your connection."
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
