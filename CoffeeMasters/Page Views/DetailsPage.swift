//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import SwiftUI

struct DetailsPage: View {
    
    @State var quantity = 1
    
    var body: some View {
        ScrollView {
            
            Image("BlackCoffee")
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            
            Text("Product")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            HStack {
                Text("$44.45")
                Stepper(value: $quantity, in: 1...10) {}
            }
                .frame(maxWidth: .infinity)
                .padding(30)
            
            Text("Subtotal $44.45")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Order") {
                
            }
                .padding()
                .frame(width: 250)
                .background(Color("Alt2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)
        }
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage()
    }
}
