//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Elif Dede on 3/24/24.
//

import SwiftUI

struct CryptoConverter: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = CryptoConverterViewModel()
    var body: some View {
        VStack{
//            Button("Back"){
//                presentationMode.wrappedValue.dismiss()
//            }
//            .padding()
//            
            TextField("Bitcoin: ", text: $viewModel.currencyAmount)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .padding()
            List{
                ForEach(Array(zip(viewModel.cryptoCurrencies,viewModel.convertCurrencies())), id:\.0.id){
                    (line, amount) in CryptoItem(line: line, amount: amount)
                }
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}
extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct CryptoConverter_Previews: PreviewProvider {
    static var previews: some View {
        CryptoConverter()
    }
}

