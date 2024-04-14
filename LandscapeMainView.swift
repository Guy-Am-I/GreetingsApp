//
//  LandscapeMainView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct LandscapeMainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
                
            }
        }
    }
}

#Preview {
    LandscapeMainView()
}
