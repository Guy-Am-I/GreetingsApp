//
//  MainView.swift
//  Greetings
//
//  Created by Guy Steinberg on 13/04/2024.
//

import SwiftUI

/// MainView of the app, launches on statrup
struct MainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
