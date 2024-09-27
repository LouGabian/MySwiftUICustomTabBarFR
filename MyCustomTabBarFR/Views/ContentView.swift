//
//  ContentView.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        
        GeometryReader { geometry in // Pour adpater la taille en fonction de l'écran
            
            
            VStack /* VStack 1 */ {
                
                Spacer()
                
                VStack /* VStack 2 */ {
                    
                    Image(systemName: "house.fill")
                        .renderingMode(.original)
                        .resizable(capInsets: EdgeInsets())
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Text("Home!")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    
                } // End VStack 2
                .padding()
                
                Spacer()
                
                
                //MARK: CustomTabBar
                HStack (spacing: -10) /* Hastack 1 */ {
                    
//                    VStack /* VStack TabBarIcon */ {
//                        
//                        Image(systemName: "homekit")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: geometry.size.width/5, height: geometry.size.height/28)
//                            .padding(5)
//                        
//                        Text("Home")
//                            .font(.footnote)
//                        
//                    }// End VStack TabBarIcon
                    
                    
                    TabBarIcon(width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "homekit", tabBar: "Home")
                    
                    TabBarIcon(width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "heart", tabBar: "Liked")
                        
                    TabBarIcon(width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "plus", tabBar: "Add")
                        
                    TabBarIcon(width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "waveform", tabBar: "Records")
                        
                    TabBarIcon(width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "person.crop.circle", tabBar: "Account")
                        
                    
                    
                    
                    
                    
                    
                } // End HStack 1
                .frame(width: geometry.size.width, height: geometry.size.height/8)
                .background(Color("TabBarBackground").shadow(radius: 2))
                
                
                
            } // End Vstack 1
            
        } // End of GeometryReader
    } // End var body: some View
} // End struct ContentView: View

#Preview {
    ContentView()
}
