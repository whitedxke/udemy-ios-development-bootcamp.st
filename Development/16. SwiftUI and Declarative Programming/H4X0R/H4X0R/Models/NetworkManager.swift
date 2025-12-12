//
//  NetworkingManager.swift
//  H4X0R
//
//  Created by Pavel Betenya on 12.12.25.
//

import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(
            string: "https://hn.algolia.com/api/v1/search?tags=front_page"
        ) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil
            else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(Results.self, from: data)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {}
            
        }.resume()
    }
}
