//
//  Converter.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct Converter: View {
    @ObservedObject var viewModel = ConverterViewModel()
    var body: some View {
        ScrollView{
            LazyVGrid(columns:[GridItem(.adaptive(minimum: 150))]){
                ForEach(viewModel.listOfCards){
                    card in CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
//                CurrencyItem()
//                CurrencyItem()
//                CurrencyItem()
//                CurrencyItem()
//                CurrencyItem()
//                CurrencyItem()
                
            }
        }
        .onAppear{
            viewModel.fetchCards()
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}
