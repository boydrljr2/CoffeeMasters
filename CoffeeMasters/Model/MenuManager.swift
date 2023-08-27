//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

class MenuManager: ObservableObject {
    
    @Published var menu: [Category] = [
        Category(name: "Cafe Americano", products: [
            Product(id: 0, name: "Tiny", description: "Tiny coffee", price: 0.95, image: "TiniestCoffee"),
            Product(id: 1, name: "Medium", description: "Medium coffee", price: 19.95, image: "BlackCoffee"),
            Product(id: 2, name: "Large", description: "Large coffee", price: 29.95, image: "BlackCoffee"),
            Product(id: 3, name: "Psycho", description: "Psychosis inducing coffee", price: 99.95, image: "PsychoCoffee"),
        ])
    ]
    
}
