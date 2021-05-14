//
//  Tab.swift
//  newsApp
//
//  Created by Maksym Bordyugov on 12.05.2021.
//  Copyright © 2021 Maksym Bordyugov. All rights reserved.
//

import Foundation

struct Tab {
    static let web = Info(name: "Data", imageSystemName: "globe")
    static let data = Info(name: "Cases", imageSystemName: "chart.bar")
    static let news = Info(name: "News", imageSystemName: "dot.radiowaves.left.and.right")
    static let twitter = Info(name: "Twitter", imageSystemName: "bolt")
}

extension Tab {
    struct Info {
        var name: String
        var imageSystemName: String
    }
}
