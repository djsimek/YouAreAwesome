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
    @State private var messageIndex = 0
    let messages = ["You Are Awesome!",
                    "You Are Great!",
                    "You are Fantastic!",
                    "Fabulous? That's You!",
                    "You Make Me Smile",
                    "When the Genius Bar Needs Help, They Call You!"]
    
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
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Press Me!") {
                
                
                message = messages[messageIndex]
                //                if (messageIndex < messages.count-1){
                //                    messageIndex+=1}
                //                else{
                //                    messageIndex = 0
                //                }
                messageIndex += 1
                if(messageIndex == messages.count){
                    messageIndex = 0
                }
                
                
                
                
                //message = (message == message1) ? message2 : message1
                
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
// command / -> comments highlighted code
