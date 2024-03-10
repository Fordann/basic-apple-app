//
//  SidebarView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var userCreateGroups : [TaskGroup]
    @Binding var selection: TaskSection?
    
    var body: some View {
        List (selection: $selection){
            Section("Favorites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(selection.displayName,
                          systemImage: selection.iconName)
                    .tag(selection)
                }
            }
                
            Section("Groups") {
                ForEach($userCreateGroups) { $group in
                    HStack {
                        Image(systemName: "folder")
                        TextField("New Group", text: $group.title)
                        
                    }
                        .tag(TaskSection.list(group))
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button(action: {
                let newGroup = TaskGroup.init(title: "New group")
                userCreateGroups.append(newGroup)
            }, label: {
                Label("Add Group", systemImage:"folder.badge.plus")
            })
            .buttonStyle(.borderless)
            .foregroundColor(.accentColor)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .keyboardShortcut(KeyEquivalent("a"), modifiers: .command)
        }
    }
}

#Preview {
    SidebarView(userCreateGroups: .constant(TaskGroup.examples()), selection: .constant(.all))
        .listStyle(.sidebar)
}
