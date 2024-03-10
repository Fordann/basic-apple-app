//
//  TaskListView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted 
                      ? "circle.inset.filled" :"circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}
