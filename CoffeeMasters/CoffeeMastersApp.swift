//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/18/23.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    @StateObject var menuManager = MenuManager()
    @StateObject var orderManager = OrderManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(orderManager)
        }
    }
}
