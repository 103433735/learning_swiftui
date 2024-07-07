//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Bich.DN on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background image
            Image(.background).resizable().ignoresSafeArea()
            
            
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                Text("Currency Exchange").bold().foregroundStyle(.white).font(.largeTitle)
                HStack {
                    VStack {
                        HStack {
                            Image(.silverpiece).resizable().scaledToFit().frame(height: 33)
                            Text("Silver Piece").font(.headline).foregroundStyle(.white)
                        }
                        Text("Text Field")
                    }
                    Image(systemName: "equal").font(.largeTitle).foregroundStyle(.white).symbolEffect(.pulse)
                    VStack {
                        HStack {
                            Text("Gold Piece").font(.headline).foregroundStyle(.white)
                            Image(.goldpiece).resizable().scaledToFit().frame(height: 33)
                        }
                        Text("Text Field")
                    }
                }
                //Button Info
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "info.circle.fill").font(.largeTitle).foregroundStyle(.white).symbolEffect(.pulse).padding(.trailing)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
