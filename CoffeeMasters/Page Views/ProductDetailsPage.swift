//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import SwiftUI

struct ProductDetailsPage: View {
    
    @State var quantity = 1
    
    var body: some View {
        ScrollView {
            
            Text("Cafe Americano")
                .font(.title2)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            Image("BlackCoffee")
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
        
            
            Text("An entreating aroma with hints of larceny and chaos invites you to Pittsburgh.")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(24)
                .font(.body)
            
            HStack {
                Text("$44.45")
                Stepper(value: $quantity, in: 1...9) {}
            }
                .frame(maxWidth: .infinity)
                .padding(30)
            
            Text("Subtotal $44.45")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Order") {
                //TODO
            }
                .padding()
                .frame(width: 250)
                .background(Color("Alt1"))
                .foregroundColor(Color.white)
                .cornerRadius(25)
        }
        //.navigationTitle(product.name)
    }
}

struct ProductDetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsPage()
    }
}
