//
//  PlusMenuView.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct PlusMenuView: View {
    
    let widthAndHeight: CGFloat
    
    var body: some View {
        
        
        HStack(spacing: 50) {
          ZStack /* Bouton */ {
            Circle()
              .foregroundColor(Color("DarkRed"))
              .frame(width: widthAndHeight, height: widthAndHeight)
            Image(systemName: "record.circle")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .padding(15)
              .frame(width: widthAndHeight, height: widthAndHeight)
              .foregroundColor(.white)
          }
          ZStack /* Bouton dossier */ {
            Circle()
              .foregroundColor(Color("DarkRed"))
              .frame(width: widthAndHeight, height: widthAndHeight)
            Image(systemName: "folder")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .padding(15)
              .frame(width: widthAndHeight, height: widthAndHeight)
              .foregroundColor(.white)
          }
        }
        .transition(.scale)
        
        
        
    } // End body
}// End structView
