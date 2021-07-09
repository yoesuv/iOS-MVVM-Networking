//
//  HomeView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        Text("Places count # \(networkManager.places.count)")
            .onAppear {
                networkManager.fetchPlaces()
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
