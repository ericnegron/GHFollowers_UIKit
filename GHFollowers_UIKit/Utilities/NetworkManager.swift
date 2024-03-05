//
//  NetworkManager.swift
//  GHFollowers_UIKit
//
//  Created by Eric Negron on 3/3/24.
//

import UIKit


class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://api.github.com/"
    let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getGHFollowers(forUserName username: String, page: Int, completed: @escaping (Result<[Follower], GHError>) -> Void) {
        let endpoint = baseURL + "users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
    
//    func getGHFollowers(forUserName username: String, page: Int, completed: @escaping ([Follower]?, GHError?) -> Void) {
//        let endpoint = baseURL + "users/\(username)/followers?per_page=100&page"
//        
//        guard let followersURL = URL(string: endpoint) else {
//            completed(nil, .invalidUsername)
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: followersURL) { data, response, error in
//            
//            if let _ = error {
//                completed(nil, .unableToComplete)
//                return
//            }
//            
//            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//                completed(nil, .invalidResponse)
//                return
//            }
//            
//            guard let data = data else {
//                completed(nil, .invalidData)
//                return
//            }
//            
//            do {
//                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                let followers = try decoder.decode([Follower].self, from: data)
//                completed(followers, nil)
//            } catch {
//                completed(nil, .invalidData)
//            }
//            
//        }
//        
//        task.resume()
//    }
}
