//
//  HomeView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.places) { place in
                    ZStack {
                        ItemPlaceView(place: place)
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
            viewModel.fetchPlaces()
        })
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
