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
        GeometryReader { geo in
            VStack (alignment: .leading) {
                KFImage.url(URL(string: place?.gambar ?? ""))
                    .placeholder{
                        placeHolderImage
                            .scaledToFill()
                            .frame(width: geo.size.width, height: imageHeight)
                            .clipped()
                    }
                    .cancelOnDisappear(true)
                    .fade(duration: 0.25)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: imageHeight)
                    .clipped()
                Text("\(place?.nama ?? "")")
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(paddingText)
                Text("\(place?.deskripsi ?? "")")
                    .font(.callout)
                    .padding(paddingText)
            }
            .frame(maxHeight: geo.size.height, alignment: .topLeading)
            .navigationBarTitle(Text("Detail Place"), displayMode: .inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: nil)
    }
}
