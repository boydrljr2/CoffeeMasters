//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation


class MenuManager: ObservableObject {
    
    @Published var menu: [Category] = [
        Category(name: "Americano", products: [
            Product(id: 0, name: "Small", description: "Small coffe", price: 9.95, image: ""),
            Product(id: 1, name: "Medium", description: "Medium coffee", price: 19.95, image: ""),
            Product(id: 0, name: "Large", description: "Large coffe", price: 29.95, image: ""),
            Product(id: 1, name: "Psycho", description: "Psychosis inducing coffee", price: 99.95, image: ""),
        ])
    ]
    
}
