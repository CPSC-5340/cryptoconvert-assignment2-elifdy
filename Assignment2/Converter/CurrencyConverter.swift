//
//  CurrencyConverter.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct CurrencyConverter: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    var body: some View {
        VStack{
            Text("1 USD Exchange Rate")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
        }
        ScrollView{
            LazyVGrid(columns:[GridItem(.adaptive(minimum: 150))]){
                ForEach(viewModel.listOfCards){
                    card in CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
           
            }
        }
        .onAppear{
            viewModel.fetchCards()
        }
    }
}

struct CurrencyConverter_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyConverter()
    }
}
