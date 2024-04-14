//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Guy Steinberg on 13/04/2024.
//

import SwiftUI

@main
struct GreetingsApp: App {
    @AppStorage("language") var language = "en"
    
    var body: some Scene {
        WindowGroup {
            LaunchView(language: $language)
                .environment(\.locale, Locale(identifier: language))
        }
    }
}
