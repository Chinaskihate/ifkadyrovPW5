//
//  ArticleModel.swift
//  ifkadyrovPW5
//
//  Created by user209023 on 11/18/21.
//
import Foundation

struct ArticleModel : Decodable {
    var newsId: Int?
    var title: String?
    var announce: String?
    var img: ImageContainer?
    var requestId: String?
    
    var articleUrl: URL? {
        let requestId = requestId ?? ""
        let newsId = newsId ?? 0
        return URL(string: "https://news.myseldon.com/ru/news/index/\(newsId)?requestId=\(requestId)")
    }
    
    var newArticleLink: String
}
