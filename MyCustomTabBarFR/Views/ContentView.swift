//
//  ContentView.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var router: Router //For the navigation tabBar / Pour la navigation de la tabBarre
    
    @State var showPopUp = false // For the + popup
    
    
    
    
    var body: some View {
        
        
        GeometryReader { geometry in // Pour adpater la taille en fonction de l'écran
            
            
            
            ZStack {
                
                switch router.currentPage {
                    
                case .home:
                    HomeView()
                        .transition(.identity)
                    
                case .liked:
                    LikedView()
                        .transition(.identity)
                    
                case .records:
                    RecordsView()
                        .transition(.identity)
                case .user:
                    UserView()
                        .transition(.identity)
                    
                    
                case .XB:
                    XConsolView()
                        .transition(.opacity)
                        
                    
                case .PS:
                    PConsolView()
                        .transition(.opacity)
                        
                    
                } //End Switch router.currentPage
//                    .animation(.easeInOut(duration: 0.5), value: router.currentPage)
                
                VStack /* VStack 1 */ {
                    
                    Spacer()
                    
                    ZStack {
                        
                        if showPopUp {
                            
                            PlusMenuView(router: router, closeMenu: {
                                withAnimation(.easeInOut) {
                                    showPopUp = false
                                }
                            },
                            widthAndHeight: geometry.size.width/7)
                            .offset(y: -geometry.size.height/20)
                            
                        }// End if showPopUp
                        
                    } // End ZStack showPopup
                    
                    //MARK: CustomTabBar
                    HStack /*(spacing: -10)*/ /* Hastack 1 */ {
                        
                        
                        TabBarIcon(router: router, assignedPage: .home  , width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "homekit", tabBar: "Home")
//
                        
                        TabBarIcon(router: router, assignedPage: .liked  , width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "heart", tabBar: "Liked")
//
                        
                        
                        //MARK: + Button
                        ZStack {
                            
                            Circle()
                                .foregroundColor(.white)
                                .frame( width: geometry.size.width/7, height: geometry.size.height/7)
                                .shadow(radius: 4)
                            
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width/7-6, height: geometry.size.height/7-6)
                                .foregroundColor(Color.darkRed)
                                .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                            
                        }// End ZStack + button
                        .offset(y: -geometry.size.height/8/2)
                        .onTapGesture {
                            withAnimation {
                                
                                showPopUp.toggle() // déploie le bouton +
                                
                            } // END withAnimation
                            
                        }//END onTapGesture + Button
                        
                        
                        
                        TabBarIcon(router: router, assignedPage: .records  , width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "waveform", tabBar: "Records")
                            
                        
                        TabBarIcon(router: router, assignedPage: .user, width: geometry.size.width/5, heigt: geometry.size.height/28, systemIconName: "person.crop.circle", tabBar: "Account")
                            
                        
                        
                        
                        
                        
                    } // End HStack 1
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
                    
                    
                    
                } // End Vstack 1
                .edgesIgnoringSafeArea(.all)
            } //END ZStack SwitchContent
            .animation(.easeIn(duration: 0.7), value: router.currentPage)
            .onChange(of: router.currentPage) { oldValue, newValue in
                        // Ferme le PlusMenu si la nouvelle page n'est pas XB ou PS
                        if newValue != .XB && newValue != .PS {
                            withAnimation {
                                showPopUp = false
                            }
                        }
                    }
            
        } // End of GeometryReader
        
    } // End var body: some View
    
} // End struct ContentView: View



#Preview {
    ContentView(router: Router())
}
