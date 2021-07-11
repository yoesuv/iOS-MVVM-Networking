//
//  HomeView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    let imageSize: CGFloat = 50
    
    var body: some View {
        NavigationView {
            List(networkManager.places) { place in
                HStack {
                    KFImage.url(URL(string: place.thumbnail!))
                        .cancelOnDisappear(true)
                        .resizable()
                        .frame(width: imageSize, height: imageSize)
                    VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Text(place.nama!)
                        Text(place.lokasi!)
                    })
                }
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
