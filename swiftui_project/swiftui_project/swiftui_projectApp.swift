//
//  swiftui_projectApp.swift
//  swiftui_project
//
//  Created by Максим Баданов on 07.11.2023.
//

import SwiftUI

@main
struct swiftui_projectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            StartScreen()
        }
    }
}
