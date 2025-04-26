//
//  iAssistAppApp.swift
//  iAssistApp
//
//  Created by Priya Dalal-Whelan on 3/10/25.
//

import SwiftUI

@main
struct iAssistAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL{url in
                    print(url)
                }
        }
    }
}
