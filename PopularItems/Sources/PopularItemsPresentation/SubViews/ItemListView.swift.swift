//
//  SwiftUIView.swift
//  PopularItems
//
//  Created by Jeffrey Santana on 1/1/25.
//

import PopularItemsDomain
import SwiftUI

struct ItemListView: View {
    let item: PopularItem
    
    init(item: PopularItem) {
        self.item = item
    }
    
    var body: some View {
        VStack {
            Image(systemName: "movieclapper.fill")
                .resizable()
                .scaledToFit()
            
            HStack {
                Image(systemName: "video.fill")
                Text(item.contentType.capitalized)
            }
            
            Text(item.title.capitalized)
                .font(.title2)
                .bold()
                .lineLimit(2, reservesSpace: true)
            Text(item.author)
        }
    }
}

#Preview {
    ItemListView(item: PopularItem(author: "Mark Twain", contentType: "audiobook", id: 1, imageUrl: "", title: "The grinch"))
}
