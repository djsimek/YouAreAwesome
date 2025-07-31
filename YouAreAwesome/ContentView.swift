//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Dan Simek on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""

    var body: some View {

        VStack {
            Spacer()

            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            //.frame(width: 200, height: 200)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)

            Spacer()

            Button("Press Me!") {
                toggleMessageAndImage()

            }

            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }

        .padding()

    }

    func toggleMessageAndImage(){        
        let awesomeString = "You Are Awesome!"
        let greatString = "You Are Great!"
        let image1 = "sun.max.fill"
        let image2 = "hand.thumbsup"
        if message == awesomeString{
            message = greatString
            imageName = image1
        }
        else{
            message = awesomeString
            imageName = image2
        }
    }
}
#Preview {
    ContentView()
}

//command a, control i
//remove extra blank lines:
//Find > Find and Replace, Replace ^\s*$, Select Regular Expression, leave with blank, all
