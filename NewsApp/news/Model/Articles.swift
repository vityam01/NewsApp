//
//  Data.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import Foundation

struct Articles: Codable {    
    var status: String?
    var totalResults: Int?
    var articles: [Article]
}
