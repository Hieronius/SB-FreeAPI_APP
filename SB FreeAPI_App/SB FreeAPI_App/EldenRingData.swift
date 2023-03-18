//
//  EldenRingData.swift
//  SB FreeAPI_App
//
//  Created by Арсентий Халимовский on 18.03.2023.
//

import Foundation

struct NewsData: Codable {
    let articles: [Article]
}


struct Article: Codable {
    let id: String?
    let type: String?
    let sectionId: String?
    let sectionName: String?
    let webPublicationDate: String?
    let webTitle: String?
    let webUrl: String?
    let apiUrl: String?
    var isHosted: Bool = false
    let pillarId: String
    let pillarName: String
}
