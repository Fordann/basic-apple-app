//
//  TaskView.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 10/03/2024.
//

import SwiftUI

struct TaskView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted
                  ? "circle.inset.filled" :"circle")
            .onTapGesture {
                task.isCompleted.toggle()
            }
            
            TextField("New Task", text:$task.title)
                
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()))
        .padding()
}
