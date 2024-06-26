//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct CurrencyItem: View {

//    var card: ConvertModel
    var card: CurrencyModel<CurrencyItemModel>
    var body: some View {
        
        if card.isFront {
            FrontCurrencyItem(card: card.cardContent)
        } else {
            BackCurrencyItem(card: card.cardContent)
        }
    
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(card: CurrencyModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", counrtyFlag: "", multiplier: 1)))
    }
}

struct FrontCurrencyItem: View {
    var card: CurrencyItemModel
    var body: some View {
        VStack {
            HStack {
                Text(card.counrtyFlag)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
       
    }
}
struct BackCurrencyItem: View {
    var card: CurrencyItemModel
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}
