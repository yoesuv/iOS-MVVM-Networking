//
//  AppNavigationStore.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 15/04/25.
//

import SwiftUI

@MainActor
final class AppNavigationStore: ObservableObject {
    
    @Published var path: [AppRoute] = []
    @Published var isSplashFinished = false
    
    var currentRoute: AppRoute? {
        path.last
    }
    
    func finishSplash() {
        isSplashFinished = true
    }
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func pop(to route: AppRoute) {
        guard let index = path.firstIndex(of: route) else { return }
        path.removeLast(path.count - index - 1)
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
    func replace(with route: AppRoute) {
        popToRoot()
        push(route)
    }
}
