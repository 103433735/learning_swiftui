//
//  ExchangeInfor.swift
//  LearningSwiftUI
//
//  Created by Bich.DN on 7/7/24.
//

import SwiftUI

struct ExchangeInfor: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            //Background parchment
            Image(.parchment).resizable().ignoresSafeArea().background(.brown)
            VStack {
                //Title
                Text("Exchange Rates").font(.largeTitle).tracking(2)
                //Des
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:").font(.title2).padding()
                
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpiece, content: "Quy Doi")
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpiece, content: "Quy Doi")
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpiece, content: "Quy Doi")
                ExchangeRate(leftImage: .goldpenny, rightImage: .goldpiece, content: "Quy Doi")
                //Done
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Done")
                }).buttonStyle(.borderedProminent).tint(.brown).font(.largeTitle).padding().foregroundStyle(.white)
            }.foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfor()
}

