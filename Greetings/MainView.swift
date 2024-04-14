//
//  MainView.swift
//  Greetings
//
//  Created by Guy Steinberg on 13/04/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Hello There", color: .green)
            TextView(text: "Welcome to Swift Programming", color: .gray)
            TextView(text: "Are you ready to", color: .yellow)
            TextView(text: "Start exploring", color: .red)
            TextView(text: "Boom!", color: .purple)
            
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
