//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/22/23.
//


import SwiftUI

struct ProductItem: View {
    
    var product: Product
    
    var body: some View {
            VStack{
                AsyncImage(url: URL(string: product.imageURL)!, content: { image in
                    image.resizable()
                })
                    .frame(width: .infinity, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.title3)
                            .bold()
                        Text("$ \(product.price, specifier: "%.2f")")
                            .font(.caption)

                    }.padding(10)
                    Spacer()
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(10)
            .padding(.trailing)
        }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(product: Product(
                        id: 1,
                        name: "Americano",
                        description: "",
                        price: 12.25,
                        image: ""
        ))
    }
}
