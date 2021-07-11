//
//  NetworkManager.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 09/07/21.
//

import Foundation
import Alamofire

class NetworkManager: ObservableObject {
    
    @Published var places = [Place]()
    
    func fetchPlaces() {
        AF.request("https://info-malang-batu.firebaseapp.com/List_place_malang_batu.json", method: .get)
            .responseDecodable(of: [Place].self) { (response) in
                if (response.error == nil) {
                    DispatchQueue.main.async {
                        self.places = response.value ?? []
                    }
                } else {
                    print("NetworkManager # error \(response.error!)")
                }
        }
    }
    
}
