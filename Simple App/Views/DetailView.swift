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
    let imageHeight: CGFloat = 220
    let paddingText = EdgeInsets.init(top: 0, leading: 8, bottom: 0, trailing: 8)
    let placeHolderImage: Image = Image("PlaceHolderImage").resizable()
    
    var body: some View {
        VStack (alignment: .leading) {
            KFImage.url(URL(string: place?.gambar ?? ""))
                .placeholder{
                    placeHolderImage
                        .scaledToFill()
                        .frame(width: .infinity, height: imageHeight)
                        .clipped()
                }
                .cancelOnDisappear(true)
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: imageHeight)
                .clipped()
            Text("\(place?.nama ?? "")")
                .font(.body)
                .fontWeight(.semibold)
                .padding(paddingText)
            Text("\(place?.deskripsi ?? "")")
                .font(.callout)
                .padding(paddingText)
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
