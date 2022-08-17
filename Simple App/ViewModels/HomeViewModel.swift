//
//  HomeViewModel.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 03/08/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var places = [Place]()
    @Published var isLoading = true
    
    private let networkService = NetworkService()
    
    func fetchPlaces() {
        isLoading = true
        networkService.fetchPlaces { response in
            self.isLoading = false
            if (response.error == nil) {
                self.places = response.value ?? []
            } else {
                print("NetworkManager # error \(response.error!)")
            }
        }
    }
    
}
