//
//  ViewController.swift
//  SB FreeAPI_App
//
//  Created by Арсентий Халимовский on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var articles = [Result]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NewsAPIMaster.shared.getNewsAboutElderRing { [weak self] values in
            DispatchQueue.main.async {
                guard let self else { return }
                
                self.articles = values
                print(self.articles.count)
                print(self.articles[0].id)
                print(self.articles[0].isHosted)
                print(self.articles[0].type)
                print(self.articles[0].webTitle)
            }
        }
        
    }


}

