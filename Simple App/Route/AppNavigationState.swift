//
//  AppNavigationState.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 18/04/25.
//

import SwiftUI

class AppNavigationState: ObservableObject {
    
    @Published var currentScreen: Screen = .splash
    
    func navigateToHome() {
        currentScreen = .home
    }
    
    enum Screen {
        case splash
        case home
    }
    
}
