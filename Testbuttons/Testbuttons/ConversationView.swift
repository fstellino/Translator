//
//  ConversationView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

struct ConversationView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                Image("conversationsimulation")
                    .resizable()
     }//zstack
            .ignoresSafeArea()
    }//navigationview
            
  }
 }//end of struct

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
