//
//  ViewController.swift
//  SB FreeAPI_App
//
//  Created by Арсентий Халимовский on 18.03.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    let urlString = "https://content.guardianapis.com/search?q=Elden%20ring&api-key=580e6ccc-7e24-46f2-be59-e6ba0e86765b"
    
    var articles = [Result]()

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        NewsAPIMaster.shared.getNewsAboutElderRing { [weak self] values in
//            DispatchQueue.main.async {
//                guard let self else { return }
//
//                self.articles = values
//                print(self.articles.count)
//            }
//        }
        
        
        AF.request(urlString).validate().responseDecodable { dataResponse in
            switch dataResponse.result {
            case .success(let value):
                self dataResponse = GuardianAPIData.
            }
        }
        
    }


}

