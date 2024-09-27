//
//  PlusMenuView.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct PlusMenuView: View {
    
    @ObservedObject var router: Router
    var closeMenu: () -> Void
    
    let widthAndHeight: CGFloat //Give a value to the height of button in + menu
    
    
    var body: some View {
        
        
        HStack(spacing: 50) {
            ZStack /* Bouton XB*/ {
                Circle()
                    .foregroundColor(Color.xboxGreen )
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "xbox.logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight+16, height: widthAndHeight+16)
                    .foregroundColor(.white)
            }
            .onTapGesture {
                router.currentPage = .XB
                closeMenu()
            }
            
            
            ZStack /* Bouton PS */ {
                Circle()
                    .foregroundColor(Color.playStationBlue)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "playstation.logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight+16, height: widthAndHeight+16)
                    .foregroundColor(.white)
            }
            .onTapGesture {
                router.currentPage = .PS
                closeMenu()
            }
            
        }// END HStack
        .transition(.scale)
         
    } // End body
    
}// End structView
