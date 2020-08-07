//
//  DataModel.swift
//  HackerNews
//
//  Created by Mithun Raj on 06/08/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation

struct DataModel: Codable {
    let hits: [Hits]
}

struct Hits: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
