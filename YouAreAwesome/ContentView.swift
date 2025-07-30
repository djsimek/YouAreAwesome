//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Dan Simek on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
    
            Text("I am an app developer!")
                .font(.largeTitle)
                .foregroundStyle(.orange)
                .fontWeight(.heavy)
        }
        
        .padding()
        
    }
    
}

#Preview {
    ContentView()
}
