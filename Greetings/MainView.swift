//
//  MainView.swift
//  Greetings
//
//  Created by Guy Steinberg on 13/04/2024.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

struct MainView: View {
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
            
        }
    }
}

struct TextView: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .clipShape(Capsule())
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}

#Preview {
    MainView()
}
