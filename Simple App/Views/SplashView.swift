//
//  SplashView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject private var appNavStore: AppNavigationStore
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Simple App")
                .font(.title)
                .fontWeight(.bold)
        }
        .onAppear(perform: goToHome)
    }
    
    func goToHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation {
                appNavStore.finishSplash()
            }
        }
    }
    
}

struct SplashView_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashView()
    }
    
}
