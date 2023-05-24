//
//  ContentView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI


struct ContentView: View {
   // @StateObject private var model = FrameHandler()
    @ObservedObject var network: Network
 var contenitore: TranslationResponse = TranslationResponse(translations: [TranslationResponse.Translation(detected_source_language: "EN", text: "")])
    var body: some View {
        

        TabView{
            
            TranslationView(network: Network(users: contenitore))
                .tabItem{
                    Image(systemName: "character.book.closed.fill")
                    Text("Translation")
                }
            
            CameraView()
                .tabItem{
                    Image(systemName: "camera.fill")
                    Text("Camera")
                }
            
            ConversationView()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("Conversation")
                }
            
            FavouritesView()
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Favourites")
                }
            
        }//end of tabbar
    }
}
    
   
