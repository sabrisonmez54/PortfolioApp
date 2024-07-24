//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 11/02/2023.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView() 
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
