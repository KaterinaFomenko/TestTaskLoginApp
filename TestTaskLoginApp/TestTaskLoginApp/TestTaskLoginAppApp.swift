//
//  TestTaskLoginAppApp.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 11/06/2025.
//

import SwiftUI

@main
struct TestTaskLoginAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
