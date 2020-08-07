//
//  NetworkManger.swift
//  HackerNews
//
//  Created by Mithun Raj on 06/08/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var post = [Hits]()
    
    func apiCall() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page#") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    if let safeData = data {
                        self.parseData(data: safeData)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseData(data: Data) {
        let decoder = JSONDecoder()
        do {
            let result = try decoder.decode(DataModel.self, from: data)
            DispatchQueue.main.async {
                self.post = result.hits
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
