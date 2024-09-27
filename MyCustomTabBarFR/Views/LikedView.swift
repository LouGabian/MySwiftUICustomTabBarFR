//
//  LikedView.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct LikedView: View {
    
    var body: some View {
        
        VStack /* VStack 2 */ {
            
            Image(systemName: "heart.fill")
                .renderingMode(.original)
                .resizable(capInsets: EdgeInsets())
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("Liked!")
                .font(.title)
                .fontWeight(.semibold)
            
            
        } // End VStack 2
        .padding()
    }//End body
    
} //End StructView




#Preview {
    LikedView()
}
