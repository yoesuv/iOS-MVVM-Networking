//
//  PlaceModel.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 09/07/21.
//

import Foundation

struct Place: Codable, Identifiable {
    var id: String {
        return nama!
    }
    let nama: String?
    let lokasi: String?
    let deskripsi: String?
    let thumbnail: String?
    let gambar: String?
}
