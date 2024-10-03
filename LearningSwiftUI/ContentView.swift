//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Bich.DN on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPenny
    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()

            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Currency Exchange")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                HStack {
                    VStack {
                        HStack {
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding(.leading)
                            .multilineTextAlignment(.center)
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack {
                        HStack {
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .padding(.trailing)
                            .multilineTextAlignment(.center)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.rect(cornerRadius: 16))
                //Button Info
                Spacer()
                HStack {
                    Spacer()
//                    Image(systemName: "info.circle.fill").font(.largeTitle).foregroundStyle(.white).symbolEffect(.pulse).padding(.trailing)
                    Button(action: {
                        showExchangeInfo.toggle()
                        print(showExchangeInfo)
                    }, label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .symbolEffect(.pulse)
                    })
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfor()
                    }
                    .sheet(isPresented: $showSelectCurrency) {
                        SelectCurrency(topCurrency: $leftCurrency,
                                       bottomCurrency: $rightCurrency)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
