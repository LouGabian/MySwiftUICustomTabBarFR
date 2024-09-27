//
//  Router.swift
//  MyCustomTabBarFR
//
//  Created by Lou Gabian on 27/09/2024.
//

import Foundation
import SwiftUI


class Router: ObservableObject {
    
    @Published var currentPage: Page = .home
    
    
}

enum Page {
    case home
    case liked
    case records
    case user
    case XB
    case PS
}
