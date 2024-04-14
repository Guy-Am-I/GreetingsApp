//
//  TextView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI


/// Text View which wraps localized string text in ellipse shape and gives it a
///  background color which changes on tap
struct TextView: View {
    let text: LocalizedStringKey
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
    TextView(text: "text", color: .green)
}
