//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

class CartManager: ObservableObject {
    
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.cart.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.cart.removeAll { itemInOrder in
            return itemInOrder.0.id==product.id
        }
    }
    
    func clear() {
        cart.removeAll()
    }
    
    func total() -> Double {
        var total = 0.0
        for item in cart {
            total += item.0.price * Double(item.1)
        }
        return total
    }
}
