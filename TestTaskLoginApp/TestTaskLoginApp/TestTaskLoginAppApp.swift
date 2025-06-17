//
//  TestTaskLoginAppApp.swift
//  TestTaskLoginApp
//
//  Created by Катерина Фоменко on 12/06/2025.
//

import SwiftUI
import CoreData

@main
struct TestTaskLoginAppApp: App {
    let persistentContainer = NSPersistentContainer(name: "CoreModel")
    var body: some Scene {
        WindowGroup {
           // ContentView()
            UsersTabView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
    
    init() {
            persistentContainer.loadPersistentStores { description, error in
                if let error = error {
                    fatalError("Core Data failed to load: \(error.localizedDescription)")
                }
            }
        }
    
}
