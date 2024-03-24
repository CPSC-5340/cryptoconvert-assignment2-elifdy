//
//  CryptoModel.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import Foundation

struct CryptoModel<SomeType>: Identifiable {
    let id = UUID()
    var isFront: Bool = true
    let cardContent: SomeType

}


struct CryptoItemModel {
    let cryptoName: String
    let cryptoCode: String
    let multiplier: Double
}


