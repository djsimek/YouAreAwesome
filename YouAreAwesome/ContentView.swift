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
    @State private var imageNumber = 0

    var body: some View {

        VStack {
            Spacer()

            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)


            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)

            Spacer()

            Button("Press Me!") {
                let awesomeString = "You Are Awesome!"
                let greatString = "You Are Great!"
                
                message = (message == awesomeString) ? greatString : awesomeString
                //TODO: Update the imageName variable
               
               // imageName = "image" + String(imageNumber)
                imageName = "image\(imageNumber)"
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
           
        }

        .padding()

    }
}
#Preview {
    ContentView()
}

//command a, control i
//remove extra blank lines:
//Find > Find and Replace, Replace ^\s*$, Select Regular Expression, leave with blank, all
