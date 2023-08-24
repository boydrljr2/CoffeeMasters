//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var menuManager = MenuManager()
    @StateObject var orderManager = OrderManager()
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrderPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
