//
//  XConsolView.swift
//  MyCustomTabBarFR
//
//  Created by Jonathan Gusse on 27/09/2024.
//

import SwiftUI

struct XConsolView: View {
    var body: some View {
        ZStack{
            
            
            Image("Xbox-Logo")
                .resizable(resizingMode: .stretch)
                .edgesIgnoringSafeArea(.all)
                
            
            VStack{
                
                
                Text("No matter which one you choose, \n we are all players !")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 44))
                    .foregroundColor(Color.white)
                    .padding(.top, 10)
                
                Spacer()
            }
            .padding(.top, 70)
            
            
        }
    }
}

#Preview {
    XConsolView()
}
