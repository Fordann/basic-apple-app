//
//  ContentView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 09/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : TaskSection? = TaskSection.all
    
    @State private var allTasks = Task.examples()
    
    @State private var userCreateGroups: [TaskGroup] = TaskGroup.examples()
    
    @State private var searchTerm: String = ""

    var body: some View {
        NavigationSplitView {
            SidebarView(userCreateGroups: $userCreateGroups, selection: $selection)
                
        } detail: {
            if searchTerm.isEmpty {
                switch selection {
                case .all:
                    TaskListView(title: "All", tasks: $allTasks)
                    
                case .done:
                    StaticTaskListView(title: "Done", tasks: allTasks.filter({$0.isCompleted}))
                    
                case .upcoming:
                    StaticTaskListView(title: "Done", tasks: allTasks.filter({!$0.isCompleted}))
                    
                case .list(let taskGroup):
                    StaticTaskListView(title: taskGroup.title, tasks: taskGroup.tasks)
                case .none:
                    Text("none")
                }
            }
            else {
                StaticTaskListView(title: "Search for", tasks:
                                    allTasks.filter({ $0.title.uppercased().contains(searchTerm.uppercased()) }))
            }
            
            
        }
        .searchable(text:$searchTerm)
    }
}

#Preview {
    ContentView()
}
