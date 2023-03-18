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
            }
        }
    }


}

