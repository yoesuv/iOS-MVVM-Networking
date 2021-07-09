//
//  NetworkManager.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 09/07/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var places = [Place]()
    
    func fetchPlaces() {
        if let url = URL(string: "https://info-malang-batu.firebaseapp.com/List_place_malang_batu.json") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if (error == nil) {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([Place].self, from: safeData)
                            DispatchQueue.main.async {
                                self.places = results
                            }
                        } catch {
                            print("NetworkManager # error \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
