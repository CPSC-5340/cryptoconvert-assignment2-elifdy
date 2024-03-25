//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import Foundation


class CryptoConverterViewModel: ObservableObject{
    @Published var currencyAmount: String = ""
    @Published private(set) var cryptoCurrencies: [CryptoModel] = [
        CryptoModel(cryptoName: "USDT", cryptoRate:66578.0),
        CryptoModel(cryptoName: "Ethereum" , cryptoRate: 19.39),
        CryptoModel(cryptoName: "SOL" , cryptoRate: 363.8),
        CryptoModel(cryptoName: "BNB" , cryptoRate: 116.8),
        CryptoModel(cryptoName: "LTC" , cryptoRate: 748.9),
        CryptoModel(cryptoName: "XRP" , cryptoRate: 104450.0)]
    
    func convertCurrencies() -> [Double]{
        if let amount = Double(currencyAmount) {
            return cryptoCurrencies.map { $0.cryptoRate * amount }
        } else {
            return cryptoCurrencies.map { _ in 0.0}
        }
    }
}
       
