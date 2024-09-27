//
//  TabBarIcon.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct TabBarIcon: View {
    
    let width, heigt: CGFloat
    let systemIconName, tabBar: String
    
    var body: some View {
        
        GeometryReader { geometry in
            
            
            VStack /* VStack TabBarIcon */ {
                
                Image(systemName: systemIconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: heigt)
                    .padding(5)
                
                Text(tabBar)
                    .font(.footnote)
                
            }// End VStack TabBarIcon
            
        }//End Geometryreader
            
    }// End body
} // End Struct TabBarIconView


