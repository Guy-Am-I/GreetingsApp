//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                }, label: {
                    Text("English")
                })
                Button(action: {
                    language = "es"
                }, label: {
                    Text("Spanish")
                })
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"))
}
