//
//  NetworkService.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 02/08/21.
//

import Foundation
import Alamofire

class NetworkService {
    
    func fetchPlaces(result: @escaping (DataResponse<[Place], AFError>) -> Void) {
        AF.request("https://info-malang-batu.firebaseapp.com/List_place_malang_batu.json", method: .get)
            .responseDecodable(of: [Place].self) { response in
                result(response)
            }
    }
    
}
