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
    let imageSize: CGFloat = 55
    let placeHolderImage: Image = Image("PlaceHolderImage").resizable()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(networkManager.places) { place in
                    ZStack {
                        HStack {
                            KFImage.url(URL(string: place.gambar!))
                                .placeholder{
                                    placeHolderImage
                                        .scaledToFill()
                                        .frame(width: imageSize, height: imageSize)
                                        .clipped()
                                }
                                .cancelOnDisappear(true)
                                .fade(duration: 0.25)
                                .resizable()
                                .scaledToFill()
                                .frame(width: imageSize, height: imageSize)
                                .clipped()
                            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                                Text(place.nama!)
                                    .font(.body)
                                    .fontWeight(.semibold)
                                Text(place.lokasi!)
                                    .font(.callout)
                            })
                        }
                        NavigationLink(destination: DetailView(place: place)) {
                            EmptyView()
                        }.frame(width: 0).opacity(0)
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationBarTitle(Text("List Place"), displayMode: .inline)
        }
        .navigationBarHidden(true)
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
