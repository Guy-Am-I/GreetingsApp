//
//  MessagesView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

/// Messages View including sample bank of messages with text & color
struct MessagesView: View {
    
    let messages = [
        DataItemModel(text: "Hello There", color: .green),
        DataItemModel(text: "Welcome to Swift Programming", color: .gray),
        DataItemModel(text: "Are you ready to", color: .yellow),
        DataItemModel(text: "Start exploring", color: .red),
        DataItemModel(text: "Boom!", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) {
                TextView(text: $0.text, color: $0.color)
            }
        }.padding()
    }
}

#Preview {
    MessagesView()
}
