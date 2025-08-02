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
    //@State private var imageNumber = 0
    //@State private var messageIndex = 0
    let messages = ["You Are Awesome!",
                    "Gadzooks my friend!  I am astonished at how utterly magnificent you are! jkhlkjh  jh jkh ljljhlh lkjh jkhlhjkhjh lkjh l jljh 6876876b 876897689b 8769b89b89768976b 87 786987698   akjdflk ;kl ;lkjaf lkjas;d;llkj a;flk  klj ;l a;lkdf j;    kl;adsfj kladfjl;kafj ;lakdsfj af   aklsdfj ;alkjfd ;afkads;f  la;kdfj ",
                    "When the Genius Bar Needs Help, They Call You!",
                    "You Are Great!",
                    "You are Fantastic!",
                    "Fabulous? That's You!",
                    "You Make Me Smile"]
    
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                //.animation(.bouncy(duration: 0.5, extraBounce: 0.2), value: imageName)
                .animation(.default, value: imageName)
            

            
            Spacer()
            
            Button("Show Message") {
                //using repeat while
                var messageNumber: Int
                repeat{
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while (messageNumber == lastMessageNumber)
                
                //using while
                var imageNumber = Int.random(in: 0...9)
                while(imageNumber == lastImageNumber)
                {
                    imageNumber = Int.random(in: 0...9)
                }
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber;
                
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
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
