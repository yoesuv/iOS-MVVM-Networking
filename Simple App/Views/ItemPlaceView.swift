//
//  ItemPlaceView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 18/07/21.
//

import SwiftUI
import Kingfisher

struct ItemPlaceView: View {
    
    let place: Place?
    var onItemSelected: (() -> Void)? = nil
    let imageSize: CGFloat = 55
    let placeHolderImage: Image = Image("PlaceHolderImage").resizable()
    @State private var isTapped = false
    
    var body: some View {
        HStack {
            KFImage.url(URL(string: place?.gambar! ?? ""))	
                .placeholder{
                    placeHolderImage
                        .scaledToFill()
                        .frame(width: imageSize, height: imageSize)
                        .clipped()
                }
                .cancelOnDisappear(true)
                .fade(duration: 0.25)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipped()
            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text(place?.nama! ?? "")
                    .font(.body)
                    .fontWeight(.semibold)
                Text(place?.lokasi! ?? "")
                    .font(.callout)
            })
            Spacer()
        }
        .background(isTapped ? .gray.opacity(0.1) : .white)
        .onTapGesture {
            self.isTapped.toggle()
            if let onItemSelected = self.onItemSelected {
                onItemSelected()
            }
        }
    }
    
}

struct ItemPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        ItemPlaceView(place: nil)
    }
}
