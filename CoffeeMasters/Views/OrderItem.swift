//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$ \(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title3)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture{
                    cartManager.remove(product: item.0)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(
            item: (
                Product( id:1,
                         name: "Dummy",
                         description: "some description",
                         price: 1.25,
                         image: ""),
                2)
        ).padding()
    }
}
