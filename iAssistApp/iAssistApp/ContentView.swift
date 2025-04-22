//
//  ContentView.swift
//  iAssistApp
//
//  Created by Priya Dalal-Whelan on 3/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var configURL: URL?

    var body: some View {
        VStack(spacing: 20) {
            Button("Install All Icons") {
                generateIconProfile()
            }

            if let configURL = configURL {
                ShareLink(item: configURL) {
                    Label("Install Profile", systemImage: "square.and.arrow.up")
                }
                .padding()
            }
        }
        .padding()
    }

    func generateIconProfile() {
        guard
            let phoneImage = UIImage(named: "phoneIcon")?.pngData()?.base64EncodedString(),
            let messagesImage = UIImage(named: "messageIcon")?.pngData()?.base64EncodedString(),
            let facetimeImage = UIImage(named: "facetimeIcon")?.pngData()?.base64EncodedString(),
            let googleMapsImage = UIImage(named: "googleMapsIcon")?.pngData()?.base64EncodedString()
                
        else {
            print("Missing icon image(s)")
            return
        }

        let icons: [IconData] = [
            IconData(label: "Phone", url: "tel://", iconBase64: phoneImage),
            IconData(label: "Messages", url: "sms://", iconBase64: messagesImage),
            IconData(label: "FaceTime", url: "facetime://", iconBase64: facetimeImage),
            IconData(label: "GoogleMaps", url: "comgooglemaps://", iconBase64: googleMapsImage) // 
        ]

        if let url = IconProfileGenerator.generateProfile(icons: icons) {
            configURL = url
        } else {
            print("Failed to generate profile")
        }
    }
}

//
//#Preview {
//    ContentView()
//}
