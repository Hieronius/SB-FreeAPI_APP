//
//  NewsAPIMaster.swift
//  SB FreeAPI_App
//
//  Created by Арсентий Халимовский on 18.03.2023.
//

import Foundation

class NewsAPIMaster {
    
    static let shared = NewsAPIMaster()
    let urlString = "https://content.guardianapis.com/search?q=Elden%20ring&api-key=580e6ccc-7e24-46f2-be59-e6ba0e86765b"
    
    
    func getNewsAboutElderRing(completion: @escaping ([Article]) -> Void) {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data else { return }
            
            if let newsData = try? JSONDecoder().decode(NewsData.self, from: data) {
                completion(newsData.articles)
            } else {
                print(error as Any)
            }
        }
        task.resume()
    }
    
}
