//
//  TestbuttonsApp.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

@main
struct Translateapp: App {
    var contenitore: TranslationResponse = TranslationResponse(translations: [TranslationResponse.Translation(detected_source_language: "EN", text: "")])

    var body: some Scene {
        WindowGroup {
            ContentView(network: Network(users: contenitore))
                
        }
    }
}
