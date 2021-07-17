//
//  DetailView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 14/07/21.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    
    let place: Place?
    
    var body: some View {
        VStack (alignment: .leading) {
            KFImage.url(URL(string: place?.gambar ?? ""))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: .infinity, height: 220)
            Text("\(place?.nama ?? "")")
            Text("\(place?.deskripsi ?? "")")
        }
        .frame(minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .navigationBarTitle(Text("Detail Place"), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: nil)
    }
}
