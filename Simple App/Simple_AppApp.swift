//
//  Simple_AppApp.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

@main
struct Simple_AppApp: App {
    @StateObject private var appNavStore = AppNavigationStore()
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(appNavStore)
        }
    }
}
