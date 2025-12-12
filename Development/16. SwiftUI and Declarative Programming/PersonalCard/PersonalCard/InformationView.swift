//
//  InformationView.swift
//  PersonalCard
//
//  Created by Pavel Betenya on 10.12.25.
//

import SwiftUI

struct InformationView: View {
    let text: String
    let image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 60)
            .overlay(
                HStack {
                    Image(systemName: image).foregroundColor(Color.yellow)
                    Text(text)
                }
                    .padding(.all)
            )
    }
}
