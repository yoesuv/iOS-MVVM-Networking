//
//  MyAppView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 18/04/25.
//

import SwiftUI

struct MyAppView: View {
    @EnvironmentObject private var appNavStore: AppNavigationStore
    
    var body: some View {
        Group {
            if appNavStore.isSplashFinished {
                NavigationStack(path: $appNavStore.path) {
                    AppRoute.home.view
                        .navigationDestination(for: AppRoute.self) { route in
                            route.view
                        }
                }
            } else {
                SplashView()
            }
        }
    }
}
