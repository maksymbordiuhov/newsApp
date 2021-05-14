//
//  NewsModel.swift
//  newsApp
//
//  Created by Maksym Bordyugov on 12.05.2021.
//  Copyright © 2021 Maksym Bordyugov. All rights reserved.
//

import Foundation

struct Headline: Codable {
    var articles: [Article]
}

struct Article: Codable {
    var author: String?
    var title: String?
    var description: String?
    var content: String?
    var url: URL?
    var urlToImage: String?
    var publishedAt: Date?
    var source: Source?
}

struct Source: Codable {
    var name: String?
}

extension Article {
    var descriptionOrContent: String? {
        return description ?? content
    }

    var identifier: String? {
        return url?.absoluteString ?? urlToImage
    }

    var urlToSourceLogo: String {
        guard let host = url?.host else { return "" }

        return "https://logo.clearbit.com/\(host)"
    }

    var urlToGreySourceLogo: String {
        guard let host = url?.host else { return "" }

        return "https://logo.clearbit.com/\(host)?greyscale=true"
    }
}
