//
//  DetailView.swift
//  Simple App
//
//  Created by Yusuf Saifudin on 14/07/21.
//

import SwiftUI

struct DetailView: View {
    
    let place: Place?
    
    var body: some View {
        Text("Detail View")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: nil)
    }
}
