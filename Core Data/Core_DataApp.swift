//
//  Core_DataApp.swift
//  Core Data
//
//  Created by Nick Rice on 27/07/2021.
//

import SwiftUI

@main
struct Core_DataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
