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

struct TextView: View {
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red, .green, .black, .white, .yellow, .orange]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .clipShape(Capsule())
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
                let len = colors.count
                color = colors[Int.random(in: 0..<len)]
            }
    }
}

#Preview {
    MainView()
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Exploring iOS SWIFTUI")
                .font(.headline)
                .fontWeight(.thin)
        }.padding()
    }
}

struct MessagesView: View {
    
    let messages = [
        DataItemModel(text: "Hello There", color: .green),
        DataItemModel(text: "Welcome to Swift Programming", color: .gray),
        DataItemModel(text: "Are you ready to", color: .yellow),
        DataItemModel(text: "Start exploring", color: .red),
        DataItemModel(text: "Boom!", color: .purple)
    ]
    
    var body: some View {
        ForEach(messages) {
            TextView(text: $0.text, color: $0.color)
        }
    }
}

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
