//
//  PageNavigation.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct PageNavigation: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink("World Currency Exchange", destination: CurrencyConverter())
                NavigationLink("Crypto Exchange", destination: CryptoConverter())
            }
            .navigationTitle("Converter App")
        }
    }
}

struct PageNavigation_Previews: PreviewProvider{
    static var previews: some View {
        PageNavigation()
    }
}
