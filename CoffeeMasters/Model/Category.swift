//
//  Category.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

struct Category: Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}

