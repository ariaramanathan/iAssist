//
//  IconData.swift
//  iAssistApp
//
//  Created by Aria Ramanathan on 4/14/25.

import Foundation

struct IconData {
    let label: String       // Display name under the icon
    let url: String         // URL scheme (e.g. "tel://", "sms://")
    let iconBase64: String  // PNG image encoded as base64 string
}
