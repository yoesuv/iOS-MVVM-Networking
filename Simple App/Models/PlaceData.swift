//
//  PlaceModel.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 09/07/21.
//

import Foundation

struct Results: Codable {
    let places: [Place]
}

struct Place: Codable {
    let nama, lokasi, deskripsi: String?
    let thumbnail, gambar: String?
}
