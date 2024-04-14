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
    
    var body: some View {
        //Portrait orientation
        if horizontalSizeClass == .compact &&
            verticalSizeClass == .regular {
            MainView()
        } else {
            //landscape orientation
            LandscapeMainView()
        }
    }
}

#Preview {
    LaunchView()
}
