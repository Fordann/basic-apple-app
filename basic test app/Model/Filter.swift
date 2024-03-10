//
//  Filter.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import Foundation

struct Filter: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var image: String
    var details: String?
    
    init(title: String, image: String, details: String? = nil) {
        self.title = title
        self.image = image
        self.details = details
    }
}

