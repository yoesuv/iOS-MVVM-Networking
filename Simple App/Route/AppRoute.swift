//
//  AppRoute.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 15/04/25.
//

import SwiftUI

enum AppRoute: Hashable {
    
    case home
    case detail(place: Place)
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home:
            HomeView()
        case .detail(let place):
            DetailView(place: place)
        }
    }
    
}
