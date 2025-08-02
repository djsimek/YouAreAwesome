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
                    "Gadzooks my friend!  I am astonished at how utterly magnificent you are! jkhlkjh  jh jkh ljljhlh lkjh jkhlhjkhjh lkjh l jljh 6876876b 876897689b 8769b89b89768976b 87 786987698   akjdflk ;kl ;lkjaf lkjas;d;llkj a;flk  klj ;l a;lkdf j;    kl;adsfj kladfjl;kafj ;lakdsfj af   aklsdfj ;alkjfd ;afkads;f  la;kdfj ",
                    "When the Genius Bar Needs Help, They Call You!",
                    "You Are Great!",
                    "You are Fantastic!",
                    "Fabulous? That's You!",
                    "You Make Me Smile"]
    
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
                
                
                message = messages[Int.random(in: 0...messages.count-1)]

                imageName = "image\(Int.random(in: 0...9))"
                
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
