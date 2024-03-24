//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import Foundation

//struct ConvertModel: Identifiable {
//    let id = UUID()
//    var isFront: Bool = true
//    let cardContent: CurrencyItemModel
//    
//}
struct ConvertModel<SomeType>: Identifiable {
    let id = UUID()
    var isFront: Bool = true
    let cardContent: SomeType

}

struct CurrencyItemModel {
    let currencyName: String
    let currencyCode: String
    let counrtyFlag: String
    let multiplier: Double
}



//struct CryptoItemModel {
//    let cryptoName: String
//    let cryptoCode: String
//    let multiplier: Double
//}

