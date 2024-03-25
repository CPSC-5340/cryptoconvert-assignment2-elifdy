//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct CryptoItem: View {
    var line: CryptoModel
    var amount: Double
    var body: some View {
        HStack {
            Text(line.cryptoName)
            Spacer()
            Text("\(amount , specifier: "%.2f")")
        }
    }
}
      
       
struct CryptoItem_Previews: PreviewProvider {
    static var previews: some View {
        CryptoItem(line: CryptoModel(cryptoName: "",  cryptoRate: 1.0), amount: 1.0)
    }
}

