//
//  BackgroundView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

/// Background View which contains a gradient
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red: 139/255,
                                             green: 80/255,
                                             blue: 240/255)],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(0.2)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
