//
//  iAssistVid.swift
//  iAssistApp
//
//  Created by Aria Ramanathan on 4/28/25.
//

import SwiftUI

struct iAssistVid: View {
    var body: some View {
        VStack(){
            Text("Welcome to iAssist")
                .font(.system(size: 40, weight: .heavy, design: .default))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            
            VStack(spacing: 20) {
                Text("Video Tutorial")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                
               
    
                .frame(maxWidth: .infinity, alignment: .leading) // <-- Force left alignment
                .padding(.horizontal)
            }
            .padding(.horizontal)
        Spacer()
        }
        .padding()
    }
}

#Preview {
    iAssistVid()
}
