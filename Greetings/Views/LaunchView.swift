//
//  LaunchView.swift
//  Greetings
//
//  Created by Guy Steinberg on 2024-04-14.
//

import SwiftUI

struct LaunchView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    
    var body: some View {
        //Portrait orientation
        if horizontalSizeClass == .compact &&
            verticalSizeClass == .regular {
            NavigationStack {
                MainView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language)
                        }
                    }
            }
        } else {
            //landscape orientation
            NavigationStack{
                LandscapeMainView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language)
                        }
                    }
            }
        }
    }
}

#Preview {
    LaunchView(language: .constant("en"))
}
