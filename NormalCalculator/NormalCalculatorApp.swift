//
//  NormalCalculatorApp.swift
//  NormalCalculator
//
//  Created by Jaewon on 2022/05/21.
//

import SwiftUI

@main
struct NormalCalculatorApp: App {
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
            
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
