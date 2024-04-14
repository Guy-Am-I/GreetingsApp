//
//  TitleView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI


/// Title View including app name and rotating onTap icon
struct TitleView: View {
    
    @State var isRotated = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Exploring iOS SWIFTUI")
                    .font(.headline)
                    .fontWeight(.thin)
            }.padding()
            
            Spacer()
            
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(
                    colors: [.red, .blue,.yellow, .orange, .purple]),
                                              center: .center,
                                              angle: .zero),
                              lineWidth: 12.0)
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation(Animation.spring) {
                        isRotated.toggle()
                    }
                }
        }.padding()
    }
}

#Preview {
    TitleView()
}
