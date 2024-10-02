//
//  SelectCurrency.swift
//  LearningSwiftUI
//
//  Created by Hartzed Story on 2/10/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency Icon
                
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    ForEach(0..<5) { index in
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    CurrencyIcon(currencyImage: .silverpenny, currencyName: "Silver Penny")
                    CurrencyIcon(currencyImage: .silverpiece, currencyName: "Silver Piece")
                    CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny")
                    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                }
                
                //Text
                Text("Select the currency you woud like to convert to:")
                    .fontWeight(.bold)
                // Currency Icon
                
                //Done button
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Done")
                }).buttonStyle(.borderedProminent)
                    .tint(.brown)
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)

            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
