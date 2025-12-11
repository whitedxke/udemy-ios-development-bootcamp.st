//
//  ContentView.swift
//  Dicee
//
//  Created by Pavel Betenya on 11.12.25.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Logotype")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 24))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 60)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                .fixedSize()
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
