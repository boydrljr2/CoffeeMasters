//
//   OffersPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/22/23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView{
            List{
                    Offer(title: "Early Coffee",
                          description: "10% discount! Valid from 4am to 5am")
                    Offer(title:"Welcome Gift",
                          description: "25% off your first order.")
                    Offer(title: "Early Coffee",
                          description: "10% discount! Valid from 4am to 5am")
                    Offer(title:"Welcome Gift",
                         description: "25% off your first order.")
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
