//
//  ContentView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            //NavigationLink(destination: HomeView()) {
                Text("Simple App")
            
        }
        .onAppear(perform: {
            delay()
        })
    }
    
    func delay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            print("Go to home after 2 seconds")
            NavigationLink(destination: HomeView()) {}
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
