//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/22/23.
//

import SwiftUI

struct MenuPage: View {
    @State var name = ""
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Enter your name: ", text: $name)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            Text("Hello \(name)")
            Spacer()
        }
    }
}
        
struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
