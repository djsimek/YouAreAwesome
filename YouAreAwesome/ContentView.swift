//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Dan Simek on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    @State private var buttonClickCount = 0
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
    
            Text(message)
                .font(.largeTitle)
                .foregroundStyle(.red)
                .fontWeight(.heavy)
            
            Button("Click Me!") {
                buttonClickCount+=1
                message = "Awesome!" + String(buttonClickCount)
            }
        }
        
        .padding()
        
    }
    
}

#Preview {
    ContentView()
}
