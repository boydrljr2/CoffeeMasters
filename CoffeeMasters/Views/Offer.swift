//
//  Offer.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/22/23.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack(alignment: .center, spacing: 50) {
                VStack {
                    Text(title)
                        .padding()
                        .font(.title)
                        .background(Color("CardBackground"))
                        .padding(.bottom, 20)
                    Text(description)
                        .padding()
                        .font(.subheadline)
                        .background(Color("CardBackground"))
                }
                .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150, alignment: .center)
            }
        }.background(Color.white)
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(
                title: "Coffee Masters",
                description: "Description of your fabulous one-time offer!"
            )
            .previewLayout(.fixed(width: 350, height: 500))
            .preferredColorScheme(.light)
        }
    }
}
