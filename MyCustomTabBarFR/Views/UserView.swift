//
//  UserView.swift
//  MyCustomTabBarFR
//
//  Created by Jonathan Gusse on 27/09/2024.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack /* VStack 2 */ {
            
            Image(systemName: "person.badge.key.fill")
                .symbolRenderingMode(.palette)
                .resizable(capInsets: EdgeInsets())
                .foregroundStyle(.red, .blue)
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("Hi you! Unlock please.")
                .font(.title)
                .fontWeight(.semibold)
            
            
        } // End VStack 2
        .padding()
        
    }//End body
}// End StructView

#Preview {
    UserView()
}
