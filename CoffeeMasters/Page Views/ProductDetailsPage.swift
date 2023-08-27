//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import SwiftUI

struct ProductDetailsPage: View {
    
    @State var quantity = 1
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ScrollView {

            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, maxHeight: 150)
                .background(Color("Alt2"))
                .padding(.top, 32)

            
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                        
            HStack {
                Text("$\(product.price, specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...9) {}
            }
                .frame(maxWidth: .infinity)
                .padding(30)
            
            Text("Subtotal $\(Double(quantity) * product.price, specifier: "%.2f" ) ")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Order") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250)
                .background(Color("Alt1"))
                .foregroundColor(Color.white)
                .cornerRadius(25)
        }
    }
}

struct ProductDetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsPage(
            product:
                Product(
                    id: 1, name: "Medium", description: "Medium coffee", price: 19.95, image: "BlackCoffee"
                )
            )
            .environmentObject(CartManager())
    }
}
