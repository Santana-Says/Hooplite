//
//  HoopliteApp.swift
//  Hooplite
//
//  Created by Jeffrey Santana on 12/30/24.
//

import CoreData
import PopularItemsData
import SwiftUI
import Swinject

@main
struct HoopliteApp: App {
    init () {
        setupDependencyInjection()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func setupDependencyInjection() {
        let sharedContainer = Container()
        
        let _ = CoreDataDependencies(container: sharedContainer)
        let _ = PopularItemsDataDependencies(container: sharedContainer)
    }
}
