//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        
        VStack {
            AppTitle()
            Spacer()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(CartManager())
                .environmentObject(MenuManager())
        }
    }
}


