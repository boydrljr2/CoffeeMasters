//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/22/23.
//

import SwiftUI

struct MenuPage: View {
    
    //@State var name = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink(destination: ProductDetailsPage()) {
                        ProductItem(product: Product(
                            id: 1,
                            name: "Cafe Americano",
                            description: "",
                            price: 12.25,
                            image: "BlackCoffee"
                        ))
                    }
                }
            }.navigationTitle("Products")
        }
    }
}
        
struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
