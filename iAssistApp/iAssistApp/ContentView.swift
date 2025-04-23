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
            let messagesImage = UIImage(named: "messageIcon")?.pngData()?.base64EncodedString(),
            let phoneImage = UIImage(named: "phoneIcon")?.pngData()?.base64EncodedString(),
            let tiktokImage = UIImage(named: "tiktokIcon")?.pngData()?.base64EncodedString(),
            let mailImage = UIImage(named: "mailIcon")?.pngData()?.base64EncodedString(),
            let netflixImage = UIImage(named: "netflixIcon")?.pngData()?.base64EncodedString(),
            let musicImage = UIImage(named: "musicIcon")?.pngData()?.base64EncodedString(),
            let youtubeImage = UIImage(named: "youtubeIcon")?.pngData()?.base64EncodedString(),
            let instagramImage = UIImage(named: "instagramIcon")?.pngData()?.base64EncodedString(),
            let photosImage = UIImage(named: "photosIcon")?.pngData()?.base64EncodedString(),
            let spotifyImage = UIImage(named: "spotifyIcon")?.pngData()?.base64EncodedString(),
            let snapchatImage = UIImage(named: "snapchatIcon")?.pngData()?.base64EncodedString(),
            let cameraImage = UIImage(named: "cameraIcon")?.pngData()?.base64EncodedString(),
            let facebookImage = UIImage(named: "facebookIcon")?.pngData()?.base64EncodedString(),
            let facetimeImage = UIImage(named: "facetimeIcon")?.pngData()?.base64EncodedString(),
            let remindersImage = UIImage(named: "remindersIcon")?.pngData()?.base64EncodedString(),
            let twitterImage = UIImage(named: "twitterIcon")?.pngData()?.base64EncodedString(),
//            let calendarImage = UIImage(named: "calendarIcon")?.pngData()?.base64EncodedString(),
            let notesImage = UIImage(named: "notesIcon")?.pngData()?.base64EncodedString(),
            let pinterestImage = UIImage(named: "pinterestIcon")?.pngData()?.base64EncodedString(),
            let doordashImage = UIImage(named: "doordashIcon")?.pngData()?.base64EncodedString(),
            let calculatorImage = UIImage(named: "calculatorIcon")?.pngData()?.base64EncodedString(),
            let amazonImage = UIImage(named: "amazonIcon")?.pngData()?.base64EncodedString(),
            let whatsappImage = UIImage(named: "whatsappIcon")?.pngData()?.base64EncodedString(),
            let discordImage = UIImage(named: "discordIcon")?.pngData()?.base64EncodedString(),
            let uberImage = UIImage(named: "uberIcon")?.pngData()?.base64EncodedString(),
            let safariImage = UIImage(named: "safariIcon")?.pngData()?.base64EncodedString(),
            let bofaImage = UIImage(named: "bofaIcon")?.pngData()?.base64EncodedString(),
            let googleImage = UIImage(named: "googleIcon")?.pngData()?.base64EncodedString(),
            let podcastsImage = UIImage(named: "podcastsIcon")?.pngData()?.base64EncodedString(),
            let fbmessengerImage = UIImage(named: "fbmessengerIcon")?.pngData()?.base64EncodedString(),
//            let twitchImage = UIImage(named: "twitchIcon")?.pngData()?.base64EncodedString(),
            let gmailImage = UIImage(named: "gmailIcon")?.pngData()?.base64EncodedString(),
            let googleMapsImage = UIImage(named: "googleMapsIcon")?.pngData()?.base64EncodedString(),
            let settingsImage = UIImage(named: "settingsIcon")?.pngData()?.base64EncodedString(),
            let linkedinImage = UIImage(named: "linkedinIcon")?.pngData()?.base64EncodedString(),
            let appstoreImage = UIImage(named: "appstoreIcon")?.pngData()?.base64EncodedString(),
            let filesImage = UIImage(named: "filesIcon")?.pngData()?.base64EncodedString(),
            let mapsImage = UIImage(named: "mapsIcon")?.pngData()?.base64EncodedString(),
            let contactsImage = UIImage(named: "contactsIcon")?.pngData()?.base64EncodedString(),
            let booksImage = UIImage(named: "booksIcon")?.pngData()?.base64EncodedString(),
            let newsImage = UIImage(named: "newsIcon")?.pngData()?.base64EncodedString(),
            let disneyplusImage = UIImage(named: "disneyplusIcon")?.pngData()?.base64EncodedString(),
            let weatherImage = UIImage(named: "weatherIcon")?.pngData()?.base64EncodedString(),
            let googledriveImage = UIImage(named: "googledriveIcon")?.pngData()?.base64EncodedString(),
            let primevideoImage = UIImage(named: "primevideoIcon")?.pngData()?.base64EncodedString(),
            let walletImage = UIImage(named: "walletIcon")?.pngData()?.base64EncodedString(),
            let stocksImage = UIImage(named: "stocksIcon")?.pngData()?.base64EncodedString(),
            let healthImage = UIImage(named: "healthIcon")?.pngData()?.base64EncodedString(),
            let slackImage = UIImage(named: "slackIcon")?.pngData()?.base64EncodedString(),
            let watchImage = UIImage(named: "watchIcon")?.pngData()?.base64EncodedString(),
            let itunesImage = UIImage(named: "itunesIcon")?.pngData()?.base64EncodedString(),
            let paypalImage = UIImage(named: "paypalIcon")?.pngData()?.base64EncodedString(),
            let passwordsImage = UIImage(named: "passwordsIcon")?.pngData()?.base64EncodedString(),
            let findmyImage = UIImage(named: "findmyIcon")?.pngData()?.base64EncodedString(),
            let homeImage = UIImage(named: "homeIcon")?.pngData()?.base64EncodedString(),
            let voicememosImage = UIImage(named: "voicememosIcon")?.pngData()?.base64EncodedString(),
            let shortcutsImage = UIImage(named: "shortcutsIcon")?.pngData()?.base64EncodedString(),
            let amazonmusicImage = UIImage(named: "amazonmusicIcon")?.pngData()?.base64EncodedString(),
            let journalImage = UIImage(named: "journalIcon")?.pngData()?.base64EncodedString(),
            let fitnessImage = UIImage(named: "fitnessIcon")?.pngData()?.base64EncodedString()
        else {
            print("Missing icon image(s)")
            return
        }

        let icons: [IconData] = [
            IconData(label: "Messages", url: "messages://", iconBase64: messagesImage),
            IconData(label: "Phone", url: "shortcuts://x-callback-url/run-shortcut?x-error=mobilephone://", iconBase64: phoneImage),
            IconData(label: "TikTok", url: "tiktok://", iconBase64: tiktokImage),
            IconData(label: "Mail", url: "message://", iconBase64: mailImage),
            IconData(label: "Netflix", url: "nflx://", iconBase64: netflixImage),
            IconData(label: "Music", url: "music://", iconBase64: musicImage),
            IconData(label: "YouTube", url: "youtube://", iconBase64: youtubeImage),
            IconData(label: "Instagram", url: "instagram://", iconBase64: instagramImage),
            IconData(label: "Photos", url: "photos-redirect://", iconBase64: photosImage),
            IconData(label: "Spotify", url: "spotify://", iconBase64: spotifyImage),
            IconData(label: "Snapchat", url: "snapchat://", iconBase64: snapchatImage),
            IconData(label: "Camera", url: "shortcuts://x-callback-url/run-shortcut?x-error=camera://", iconBase64: cameraImage),
            IconData(label: "Facebook", url: "fb://", iconBase64: facebookImage),
            IconData(label: "FaceTime", url: "shortcuts://x-callback-url/run-shortcut?x-error=contact://", iconBase64: facetimeImage),
            IconData(label: "Reminders", url: "x-apple-reminderkit://", iconBase64: remindersImage),
            IconData(label: "Twitter", url: "twitter://", iconBase64: twitterImage),
//            IconData(label: "Calendar", url: "calshow://", iconBase64: calendarImage),
            IconData(label: "Notes", url: "mobilenotes://", iconBase64: notesImage),
            IconData(label: "Pinterest", url: "pinterest://", iconBase64: pinterestImage),
            IconData(label: "DoorDash", url: "doordash://", iconBase64: doordashImage),
            IconData(label: "Calculator", url: "shortcuts://x-callback-url/run-shortcut?x-error=calc://", iconBase64: calculatorImage),
            IconData(label: "Amazon", url: "com.amazon.mobile.shopping://", iconBase64: amazonImage),
            IconData(label: "WhatsApp", url: "whatsapp://", iconBase64: whatsappImage),
            IconData(label: "Discord", url: "com.hammerandchisel.discord://", iconBase64: discordImage),
            IconData(label: "Uber", url: "uber://", iconBase64: uberImage),
            IconData(label: "Safari", url: "data:text/html,%3Cscript%3Eonload%3Dself.close%3C/script%3E", iconBase64: safariImage),
            IconData(label: "Bank of America", url: "bofa://", iconBase64: bofaImage),
            IconData(label: "Google", url: "google://", iconBase64: googleImage),
            IconData(label: "Podcasts", url: "podcasts://", iconBase64: podcastsImage),
            IconData(label: "FB Messenger", url: "fb-messenger://", iconBase64: fbmessengerImage),
//            IconData(label: "Twitch", url: "twitch://", iconBase64: twitchImage),
            IconData(label: "Gmail", url: "googlegmail://", iconBase64: gmailImage),
            IconData(label: "Google Maps", url: "googlemaps://", iconBase64: googleMapsImage),
            IconData(label: "Settings", url: "app-prefs://", iconBase64: settingsImage),
            IconData(label: "LinkedIn", url: "linkedin://", iconBase64: linkedinImage),
            IconData(label: "App Store", url: "itms-apps://itunes.apple.com://", iconBase64: appstoreImage),
            IconData(label: "Files", url: "shareddocuments://", iconBase64: filesImage),
            IconData(label: "Map", url: "map://", iconBase64: mapsImage),
            IconData(label: "Contacts", url: "shortcuts://x-callback-url/run-shortcut?x-error=contact://", iconBase64: contactsImage),
            IconData(label: "Books", url: "ibooks://", iconBase64: booksImage),
            IconData(label: "News", url: "applenews://", iconBase64: newsImage),
            IconData(label: "Disney+", url: "disneyplus://", iconBase64: disneyplusImage),
            IconData(label: "Weather", url: "shortcuts://x-callback-url/run-shortcut?x-error=weather://", iconBase64: weatherImage),
            IconData(label: "Google Drive", url: "googledrive://", iconBase64: googledriveImage),
            IconData(label: "Prime Video", url: "primevideo://", iconBase64: primevideoImage),
            IconData(label: "Wallet", url: "shoebox://", iconBase64: walletImage),
            IconData(label: "Stocks", url: "stocks://", iconBase64: stocksImage),
            IconData(label: "Health", url: "x-apple-health://", iconBase64: healthImage),
            IconData(label: "Slack", url: "slack://", iconBase64: slackImage),
            IconData(label: "Watch", url: "com.apple.bridge://x", iconBase64: watchImage),
            IconData(label: "iTunes Store", url: "itms://", iconBase64: itunesImage),
            IconData(label: "PayPal", url: "paypal://", iconBase64: paypalImage),
            IconData(label: "Passwords", url: "apple-otpauth-migration://", iconBase64: passwordsImage),
            IconData(label: "Find My", url: "findmy://", iconBase64: findmyImage),
            IconData(label: "Home", url: "com.apple.Home://", iconBase64: homeImage),
            IconData(label: "Voice Memos", url: "shortcuts://x-callback-url/run-shortcut?x-error=voicememos://", iconBase64: voicememosImage),
            IconData(label: "Shortcuts", url: "shortcuts://", iconBase64: shortcutsImage),
//            IconData(label: "Amazon Music", url: "amznmp3://", iconBase64: amazonmusicImage),
            IconData(label: "Journal", url: "moments://", iconBase64: journalImage),
            IconData(label: "Fitness", url: "fitnessapp://", iconBase64: fitnessImage)

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
