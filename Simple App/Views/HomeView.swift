//
//  HomeView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 06/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var appNavStore: AppNavigationStore
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack(path: $appNavStore.path) {
            ZStack {
                if !viewModel.isLoading {
                    List {
                        ForEach(viewModel.places) { place in
                            ItemPlaceView(place: place, onItemSelected: {
                                appNavStore.path.append(AppRoute.detail(place: place))
                            })
                            .listRowInsets(EdgeInsets())
                        }
                    }
                    .listStyle(.plain)
                }
                // show progress
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(2)
                }
            }
            .navigationBarTitle(Text("List Place"), displayMode: .inline)
            .navigationDestination(for: AppRoute.self, destination: { dest in
                dest.view
            })
            .onAppear {
                viewModel.fetchPlaces()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
