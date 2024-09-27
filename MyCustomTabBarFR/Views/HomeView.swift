//
//  HomeView.swift
//  MyCustomTabBarFR
//
//  Created by Jonathan Gusse on 27/09/2024.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        
        
        
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
        
        
        
    } // End body
    
} // End Struc HommeView

#Preview {
    HomeView()
}
