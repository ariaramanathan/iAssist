//
//  iAssistBC.swift
//  iAssistApp
// BC = Before Config (file)
//
//  Created by Aria Ramanathan on 4/28/25.
//

import SwiftUI

struct iAssistBC: View {
    var body: some View {
        VStack{
            Text("Welcome to iAssist")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            VStack(alignment: .leading, spacing: 12) {
                Text("How to set up")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Group {
                    Text("1. Tap **Start** below to begin. This will open a new window.")
                    Text("2. When given two choices, tap **Allow**. Then click close. ")
                }
            }
            .padding(.leading)
            ZStack{
                Link("START", destination: URL(string: "https://ariaramanathan.github.io/iAssist/")!)
                    .font(.title)
                        .fontWeight(.semibold)
                    .frame(width: 150, height: 50)
                    .background(Color.orange)
                        .cornerRadius(30)
                .foregroundColor(.white)
            }
        }
        .padding()
    }
}

#Preview {
    iAssistBC()
}
