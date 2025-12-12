//
//  ContentView.swift
//  PersonalCard
//
//  Created by Pavel Betenya on 9.12.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                Image("Photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Pavel Betenya")
                    .font(Font.custom("Pacifico", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Mobile Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider().frame(height: 4)
                InformationView(
                    text: "XXX (XX) XXX-XX-XX",
                    image: "phone.fill",
                )
                Divider().frame(height: 4)
                InformationView(
                    text: "username@example.com",
                    image: "envelope.fill",
                )
            }
        }
    }
}
