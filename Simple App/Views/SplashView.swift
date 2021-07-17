//
//  ContentView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    let home = HomeView()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Simple App")
                    .font(.title)
                    .fontWeight(.bold)
                NavigationLink(
                    destination: home,
                    isActive: $isActive,
                    label: {
                        EmptyView()
                    })
            }
        }
        .onAppear(perform: {
            goToHome()
        })
    }
    
    func goToHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.isActive = true
        })
    }
    
}

struct SplashView_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashView()
    }
    
}
