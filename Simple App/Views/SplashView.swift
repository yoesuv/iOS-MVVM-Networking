//
//  ContentView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject private var appNavStore: AppNavigationStore
    
    var body: some View {
        NavigationStack(path: $appNavStore.path) {
            VStack(alignment: .center) {
                Text("Simple App")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .navigationDestination(for: AppRoute.self, destination: { dest in
                dest.view
            })
        }
        
        .onAppear(perform: {
            goToHome()
        })
    }
    
    func goToHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            appNavStore.path.append(AppRoute.home)
        })
    }
    
}

struct SplashView_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashView()
    }
    
}
