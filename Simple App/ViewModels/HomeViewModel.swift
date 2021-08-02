//
//  HomeViewModel.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 03/08/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var places = [Place]()
    
    private let networkService = NetworkService()
    
    func fetchPlaces() {
        networkService.fetchPlaces { response in
            if (response.error == nil) {
                self.places = response.value ?? []
            } else {
                print("NetworkManager # error \(response.error!)")
            }
        }
    }
    
}
