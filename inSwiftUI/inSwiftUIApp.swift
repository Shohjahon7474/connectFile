//
//  inSwiftUIApp.swift
//  inSwiftUI
//
//  Created by Shohjahon Numonovich on 4/6/22.
//

import SwiftUI

@main
struct inSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
