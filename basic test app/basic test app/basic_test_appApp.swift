 //
//  basic_test_appApp.swift
//  basic test app
//
//  Created by Thibault Nieuviarts on 09/03/2024.
//

import SwiftUI

@main
struct basic_test_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("Add new Group") {
                    
                }
                .keyboardShortcut(KeyEquivalent("a"), modifiers: .command)
            }
            
            CommandGroup(after: .newItem) {
                Button("Add new Task") {
                    
                }
            }
        }
    }
}
