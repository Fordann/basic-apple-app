//
//  FilterGroup.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import Foundation

struct Filters: Identifiable, Hashable {
    let id = UUID()
    var filters: [Filter]
    private var all_filters: [Filter] = [Filter.init(title: "completed", image:"circle.inset.filled"), Filter.init(title: "not completed", image:"circle")]
    
    init(filters: [Filter] = [Filter.init(title: "completed", image:"circle.inset.filled"), Filter.init(title: "not completed", image:"circle")]) {
        self.filters = all_filters
    }
}

