//
//  FilterView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import SwiftUI

struct FilterView: View {
    
    let filter: Filter
    
    var body: some View {
        HStack {
            Image(systemName: filter.image)
            .onTapGesture {
                
            }
            
            Text(filter.title)
                
        }
        Button {
            
            
        } label: {
            Label(filter.title, systemImage: filter.image)
        }
        
    }
    
}

struct FiltersView: View {
    
    let all_filters: [Filter] = Filters.init().filters
    
    var body: some View {
        List (all_filters) { filter in
            FilterView(filter: filter)
        }
    }
}

#Preview {
    FiltersView()
}
