//
//  FavouritesView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

struct FavouritesView: View {
    var def = UserDefaults.standard
    
    var body: some View{
        NavigationView{
            
            VStack{
        Image(systemName: "star.fill")
            .resizable()
             .frame(width: 50, height: 50)
             .foregroundColor(.gray)
             .padding()
                
                Text("No Favourites")
                    .bold()
                //inserisci kerning
                    
                
                Text("Your favourite translations will appear here.")
                    .foregroundColor(.gray)
                    
               // Button(action: {
                    //littleTip[num.id-1].starred = !littleTip[num.id-1].starred
               // })

                
        }//Vstack
            
            .navigationTitle("Favourites")
            .ignoresSafeArea()
            .padding()
            
            
      }//navigation
            
    }
    
  }//end of struct

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
