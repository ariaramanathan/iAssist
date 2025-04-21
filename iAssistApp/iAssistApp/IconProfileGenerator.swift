//
//  IconProfileGenerator.swift
//  iAssistApp
//
//  Created by Aria Ramanathan on 4/14/25.
//


import Foundation

class IconProfileGenerator {
    static func generateProfile(icons: [IconData]) -> URL? {
        let payloadUUIDRoot = UUID().uuidString

        let iconPayloads = icons.map { icon in
            """
            <dict>
              <key>FullScreen</key><true/>
              <key>Icon</key><data>\(icon.iconBase64)</data>
              <key>IsRemovable</key><true/>
              <key>Label</key><string>\(icon.label)</string>
              <key>PayloadDescription</key><string>Custom Icon</string>
              <key>PayloadDisplayName</key><string>\(icon.label)</string>
              <key>PayloadIdentifier</key><string>com.yourdomain.\(icon.label.lowercased())</string>
              <key>PayloadType</key><string>com.apple.webClip.managed</string>
              <key>PayloadUUID</key><string>\(UUID().uuidString)</string>
              <key>PayloadVersion</key><integer>1</integer>
              <key>Precomposed</key><true/>
              <key>URL</key><string>\(icon.url)</string>
            </dict>
            """
        }.joined(separator: "\n")

        let profile = """
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
          <key>PayloadContent</key>
          <array>
            \(iconPayloads)
          </array>
          <key>PayloadDisplayName</key><string>Custom Icons</string>
          <key>PayloadIdentifier</key><string>com.yourdomain.customicons</string>
          <key>PayloadType</key><string>Configuration</string>
          <key>PayloadUUID</key><string>\(payloadUUIDRoot)</string>
          <key>PayloadVersion</key><integer>1</integer>
        </dict>
        </plist>
        """

        let tempURL = FileManager.default.temporaryDirectory.appendingPathComponent("CustomIcons.mobileconfig")

        do {
            try profile.write(to: tempURL, atomically: true, encoding: .utf8)
            return tempURL
        } catch {
            print("Failed to write profile: \(error)")
            return nil
        }
    }
}
