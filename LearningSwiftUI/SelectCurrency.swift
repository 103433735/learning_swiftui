//
//  SelectCurrency.swift
//  LearningSwiftUI
//
//  Created by Hartzed Story on 2/10/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
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
                
                IconGrid(currency: $topCurrency)
                
                //Text
                Text("Select the currency you woud like to convert to:")
                    .fontWeight(.bold)
                
                // Currency Icon
                IconGrid(currency: $bottomCurrency)
                
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
        .onTapGesture {
            print("Selected topCurrrency")
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
