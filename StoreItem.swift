//
//  StoreItem.swift
//  project!
//
//  Created by pads on 2022/12/21.
//

import Foundation
struct SearchResponse: Codable {
    let results: [StoreItem]
}

struct StoreItem: Codable, Identifiable {
    var id: Int { trackId }
    let trackId: Int
    let trackName: String
    let artistName: String
}

