//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
