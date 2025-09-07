//
//  ContentView.swift
//  Elvis
//
//  Created by Pup SpikeChaos on 9/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageName = ""
    
    
    var body: some View {
        
        VStack {
            Text("What's So Funny 'Bout")
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.purple)
            Spacer()
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
            
        }
    }
}

#Preview {
    ContentView()
}
