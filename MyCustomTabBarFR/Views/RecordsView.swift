//
//  RecordsView.swift
//  MyCustomTabBarFR
//
//  Created by Jonathan Gusse on 27/09/2024.
//

import SwiftUI

struct RecordsView: View {
    var body: some View {
        VStack /* VStack 2 */ {
            
            Image(systemName: "waveform.badge.plus")
                .renderingMode(.original)
                .resizable(capInsets: EdgeInsets())
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("Recorded !")
                .font(.title)
                .fontWeight(.semibold)
            
            
        } // End VStack 2
        .padding()
    }
}

#Preview {
    RecordsView()
}
