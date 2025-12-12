//
//  DetailView.swift
//  H4X0R
//
//  Created by Pavel Betenya on 12.12.25.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}
