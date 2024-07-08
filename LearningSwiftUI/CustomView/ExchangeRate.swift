//
//  ExchangeRate.swift
//  LearningSwiftUI
//
//  Created by Bich.DN on 8/7/24.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: ImageResource
    @State var rightImage: ImageResource
    @State var content: String
    var body: some View {
        HStack {
            //Exchange rate
            Image(leftImage).resizable().scaledToFit().frame(height:33)
            Text(content)
            Image(rightImage).resizable().scaledToFit().frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, rightImage: .goldpenny, content: "1 Gold Piece = 4 Gold Pennies")
}
