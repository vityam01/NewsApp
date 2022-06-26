//
//  News.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import Foundation

struct Article: Codable {
    var source: Source
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}
