//
//  TaskListView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            Button {
                tasks.append(Task.init(title: "New task"))
                
            } label: {
                Label("Add New Task", systemImage: "plus")
            }
            
            Button {
        
            } label: {
                Label("Add filter", systemImage: "tag")
            }
            .contextMenu{
                Text("bob")
            }
        }
            
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
