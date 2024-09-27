//
//  MyCustomTabBarFRApp.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import SwiftUI

@main
struct MyCustomTabBarFRApp: App {
    
    @StateObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            ContentView(router: Router())
        }
    }
}
