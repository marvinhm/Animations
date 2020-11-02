//
//  ContentView.swift
//  Animations
//
//  Created by Marvin Matovu on 20/10/2020.
//  Copyright © 2020 Marvin Matovu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("DUKA")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

       var body: some View {
           
//        Controlling the animation stack

        
//        Button("Tap Here") {
//            //code goes here
//            self.enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? Color.red : Color.blue)
//        .animation(.default)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//        .animation(.interpolatingSpring(stiffness: 10, damping: 10)
//        )
        
        HStack() {
            ForEach(0..<letters.count) { num in
                Text(String(self.letters[num]))
                    .padding(5)
                    .font(.title)
                    .foregroundColor(self.enabled ? Color.black : Color.blue)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num)/20))
            }
        }
       .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded { _ in
                    self.dragAmount = .zero
                    self.enabled.toggle()
        }
        )
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
