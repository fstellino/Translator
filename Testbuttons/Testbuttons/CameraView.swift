//
//  CameraView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

struct CameraView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.black
                VStack{
                    Image("camerasimulation")
                    .resizable()
                    
                }
                
                
     }//zstack
            .ignoresSafeArea()
            
    }//navigationview
            
  }
 }//end of struct

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
