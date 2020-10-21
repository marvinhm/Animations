//
//  ContentView.swift
//  Animations
//
//  Created by Marvin Matovu on 20/10/2020.
//  Copyright © 2020 Marvin Matovu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
