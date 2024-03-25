//
//  CurrencyConverterViewModel.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import Foundation

class CurrencyConverterViewModel: ObservableObject{
    @Published private(set) var listOfCards = [CurrencyModel<CurrencyItemModel>]()
    func fetchCards() {
        self.listOfCards = [
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", counrtyFlag: "🇺🇸", multiplier: 1)),
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", counrtyFlag: "🇨🇳", multiplier: 6.94)),
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", counrtyFlag: "🇨🇦", multiplier: 1.36)),
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", counrtyFlag: "🇦🇺", multiplier: 1.49)),
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", counrtyFlag: "🇮🇳", multiplier: 82.60)),
            CurrencyModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", counrtyFlag: "🇨🇱", multiplier: 832.04))
            
        ]
    }
    
    func flip(card: CurrencyModel<CurrencyItemModel>){
        let index = findIndex(card: card)
        listOfCards[index].isFront.toggle()
    }
    func findIndex(card: CurrencyModel<CurrencyItemModel>) -> Int{
        for index in 0..<listOfCards.count{
            if card.id == listOfCards[index].id{
                return index
            }
        }
        return 0
    }
}

