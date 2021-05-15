//
//  Website.swift
//  newsApp
//
//  Created by Maksym Bordiuhov on 12.05.2021.
//  Copyright © 2021 Maksym Bordiuhov. All rights reserved.
//

import Foundation

struct Website {
    var domain: String
    var urlString: String

    static var content: [Website] {
        return [
            Website(domain: "viruscovid.tech", urlString: "https://viruscovid.tech"),
            Website(domain: "ncov2019.live", urlString: "https://ncov2019.live"),
            Website(domain: "google.com", urlString: "https://www.google.com/search?q=covid+cases"),
            Website(domain: "apple.com/covid19/mobility", urlString: "https://www.apple.com/covid19/mobility"),
        ]
    }
}
