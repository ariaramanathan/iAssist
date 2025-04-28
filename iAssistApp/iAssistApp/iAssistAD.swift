//
//  iAssistAD.swift
//  iAssistApp
// AD = After Download
//
//  Created by Aria Ramanathan on 4/28/25.
//

import SwiftUI

struct iAssistAD: View {
    var body: some View {
        VStack{
            Text("Welcome to iAssist")
                .font(.system(size: 40, weight: .heavy, design: .default))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            VStack(spacing: 20) {
                Text("Set Up Part 3 \n (After Downloading)")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                
               
                VStack(alignment: .leading, spacing: 12) {
                    Text("**1**. Tap orange **SETTINGS** button to open your phone's settings.")
                        .font(.system(size: 25, weight: .regular, design: .default))
                    Text("**2**. Tap **Profile Downloaded** directly below Apple ID")
                        .font(.system(size: 25, weight: .regular, design: .default))
                    Text("**3**. Tap blue **Install**, in top right corner")
                        .font(.system(size: 25, weight: .regular, design: .default))
                    Text("**4**. If warning screen appears, tap blue **Install**, in top right corner again")
                        .font(.system(size: 25, weight: .regular, design: .default))
                    Text("**5**. Tap red **Install** at the bottom")
                        .font(.system(size: 25, weight: .regular, design: .default))
                    

                }
                .frame(maxWidth: .infinity, alignment: .leading) // <-- Force left alignment
                .padding(.horizontal)
            }
            .padding(.horizontal)
           
            ZStack{
                Button(action: {
                    if let url = URL(string: "App-Prefs:") {
                                        if UIApplication.shared.canOpenURL(url) {
                                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                                        }
                                    }
                    })
                {
                    Text("SETTINGS")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 150, height: 50)
                        .background(Color.orange)
                        .cornerRadius(30)
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
        .padding()

        }
    }

#Preview {
    iAssistAD()
}
