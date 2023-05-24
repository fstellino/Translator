//
//  TranslationView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

struct TranslationView: View {
    @ObservedObject var network: Network
 var contenitore: TranslationResponse = TranslationResponse(translations: [TranslationResponse.Translation(detected_source_language: "EN", text: "")])
    @State private var date = Date()
    @State var inputText = ""
    @State var targetLanguage = 1
    @State var sourceLanguage = 1
    //@State var per salvare il tag
    
    //var engIta = ["Hello" : "Ciao", "Goodmorning" : "Buongiorno", "How are you?" : "Come stai?", "How old are you?" : "Quanti anni hai?"]
    
    var body: some View{
        NavigationView{
            
            VStack{
                Text("Choose language:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 23.0)
                
                HStack(alignment: .top){
                    Picker(selection: $sourceLanguage, label: Text("LanguagePicker")) {
                        Text("English").tag(1)
                        Text("Italian").tag(2)
                        Text("Rileva lingua").tag(3)
                        Text("Dutch").tag(4)
                        Text("French").tag(5)
                        Text("German").tag(6)
                        Text("Indonesian").tag(7)
                        Text("Russian").tag(8)
                        Text("Japanese").tag(9)
                        Text("Greek").tag(10)
                    }//end of 1st picker
                    .pickerStyle(WheelPickerStyle()) // Apply a default picker style
                    
                    Picker(selection: $targetLanguage, label: Text("LanguagePicker")) {
                        Text("English").tag(1)
                        Text("Italian").tag(2)
                        Text("Chinese").tag(3)
                        Text("Dutch").tag(4)
                        Text("French").tag(5)
                        Text("German").tag(6)
                        Text("Indonesian").tag(7)
                        Text("Russian").tag(8)
                        Text("Japanese").tag(9)
                        Text("Greek").tag(10)
                    }//end of 2nd picker
                    .pickerStyle(WheelPickerStyle())
                    
                    //end of HStack
                }
               
              
                TextField("Enter text", text: $inputText)
                    .onTapGesture {}
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .font(.title2)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                Divider()
                Text(network.users.resultText)
                Spacer()
                
                  //Text("tradotto in: \(engIta["\(inputText)"]!)")
                    
                Button(action:{network.input = inputText.replacingOccurrences(of: " ", with: "%20")
                    if targetLanguage == 1 {
                        network.language = "EN"
                    } else if targetLanguage == 2{
                        network.language = "IT"

                    } else if targetLanguage == 3{
                        network.language = "ZH"
                   
                    } else if targetLanguage == 4{
                        network.language = "NL"
                        
                    } else if targetLanguage == 5{
                        network.language = "FR"
                        
                    } else if targetLanguage == 6{
                        network.language = "DE"
                        
                    } else if targetLanguage == 7{
                        network.language = "ID"
                        
                    } else if targetLanguage == 8{
                        network.language = "RU"
                        
                    } else if targetLanguage == 9{
                        network.language = "JA"
                        
                    } else if targetLanguage == 10{
                        network.language = "EL"
                        
                    }
                    
                    network.getUsers()

                }){Text("Translate")
                        .fontWeight(.bold)
                    
                }.font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
            Spacer()

            } 
            
    }//navigationview
           
  }
   
    
 }//end of struct



struct TranslationView_Previews: PreviewProvider {
    static var previews: some View {
        TranslationView(network: Network(users: TranslationResponse(translations: [])))
    }
}
//struct DropDown : View {
    //var body: some View {
       // VStack {
            
            //HStack {
               // Text("Expand").frontweight(.heavy)
               // Image(systemName: "chevron.down")}
       // }
        
    //}
    




