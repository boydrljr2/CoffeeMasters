//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

class OrderManager: ObservableObject {
    
    @Published var order: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.order.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.order.removeAll { itemInOrder in
            return itemInOrder.0.id==product.id
        }
    }
    
    func total() -> Double {
        var total = 0.0
        for item in order {
            total += item.0.price * Double(item.1)
        }
        return total
    }
}
