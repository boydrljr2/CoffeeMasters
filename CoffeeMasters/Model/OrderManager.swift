//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

class OrderManager: ObservableObject {
    
    @Published var products: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.products.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.products.removeAll { itemInOrder in
            return itemInOrder.0.id==product.id
        }
    }
    
    func total() -> Double {
        var total = 0.0
        for item in products {
            total += item.0.price * Double(item.1)
        }
        return total
    }
}
