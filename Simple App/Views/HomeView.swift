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
        NavigationView {
            List(networkManager.places) { place in
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text(place.nama!)
                    Text(place.lokasi!)
                })
            }
        }
        .onAppear(perform: {
            networkManager.fetchPlaces()
        })
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
