//
//  AppNavigationStore.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 15/04/25.
//

import SwiftUI

public class AppNavigationStore: ObservableObject {
    @Published public var path = NavigationPath()
    public init(){}
}
