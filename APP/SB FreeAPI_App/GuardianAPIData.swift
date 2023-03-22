//
//  GuardianAPIData.swift
//  SB FreeAPI_App
//
//  Created by Арсентий Халимовский on 18.03.2023.
//

import UIKit

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let guardianAPIData = try? JSONDecoder().decode(GuardianAPIData.self, from: jsonData)

// MARK: - GuardianAPIData
struct GuardianAPIData: Codable {
    let response: Response
}

// MARK: - Response
struct Response: Codable {
    let status, userTier: String
    let total, startIndex, pageSize, currentPage: Int
    let pages: Int
    let orderBy: String
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let id: String
    let type: TypeEnum
//    let sectionID, sectionName: String
//    let webPublicationDate: Date
//    let webTitle: String
//    let webURL, apiURL: String
//    let isHosted: Bool
//    let pillarID, pillarName: String

//    enum CodingKeys: String, CodingKey {
//        case id, type
//        case sectionID = "sectionId"
//        case sectionName, webPublicationDate, webTitle
//        case webURL = "webUrl"
//        case apiURL = "apiUrl"
//        case isHosted
//        case pillarID = "pillarId"
//        case pillarName
//    }
}

enum TypeEnum: String, Codable {
    case article = "article"
}
