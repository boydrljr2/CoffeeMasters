//
//  AppTitle.swift
//  CoffeeMasters
//
//  Created by bobsDevMac on 8/23/23.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        HStack {
            //Spacer()
            Image("LogoCM")
            Spacer()
        }
        .padding(4)
        .background(Color("Secondary"))
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle()
    }
}
