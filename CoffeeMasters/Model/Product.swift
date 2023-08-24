//
//  Product.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import Foundation

struct Product: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String
    var imageURL: URL {
        URL(string: "https://boydrljr2.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
