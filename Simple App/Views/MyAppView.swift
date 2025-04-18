//
//  MyAppView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 18/04/25.
//

import SwiftUI

struct MyAppView: View {
    @EnvironmentObject private var appNavState: AppNavigationState
    
    var body: some View {
        Group {
            switch appNavState.currentScreen {
            case .splash:
                SplashView()
                
            case .home:
                HomeView()
            }
        }
    }
    
}
