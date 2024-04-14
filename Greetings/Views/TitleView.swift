//
//  TitleView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI


/// Title View including app name and rotating onTap icon
struct TitleView: View {
    var body: some View {
        HStack {
            GreetingsTextView()
            
            Spacer()
            
            RotatingIconView()
        }.padding()
    }
}

struct VerticalTitleView: View {
    var body: some View {
        VStack {
            GreetingsTextView()
            
            Spacer()
            
            RotatingIconView()
            
            Spacer()
        }.padding()
    }
}

struct RotatingIconView: View {
    @State var isRotated = false
    
    var body: some View {
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(
                colors: [.red, .blue,.yellow, .orange, .purple]),
                                          center: .center,
                                          angle: .zero),
                          lineWidth: 20.0)
            .rotationEffect(isRotated ? .zero : .degrees(360))
            .frame(maxWidth: 100, maxHeight: 100)
            .onTapGesture {
                withAnimation(Animation.spring) {
                    isRotated.toggle()
                }
            }
    }
}
struct GreetingsTextView: View {
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

#Preview {
//    TitleView()
    VerticalTitleView()
}
