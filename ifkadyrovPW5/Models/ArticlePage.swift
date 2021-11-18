//
//  ArticlePage.swift
//  ifkadyrovPW5
//
//  Created by user209023 on 11/18/21.
//

import Foundation

struct ArticlePage: Decodable {
    var news: [ArticleModel]?
    var requestId: String?
    
    mutating func passTheRequestId() {
        for i in 0..<(news?.count ?? 0) {
            news?[i].requestId = requestId
        }
    }
}
