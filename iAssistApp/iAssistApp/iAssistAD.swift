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
            Text("Set Up Part 2")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("After Downloading")
                    .font(.title2)
                    .fontWeight(.semibold)
                Group {
                    Text("3. Open the **Settings** app.")
                    Text("4. Go to **General**, scroll down, and click on  **VPN & Device Management**.")
                    Text("5. Tap on **Custom Icons**, then tap **Install**, and **install** again.")
                }
            }
            .padding(.leading)
            ZStack {
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
        }
        .padding()

        }
    }

#Preview {
    iAssistAD()
}
