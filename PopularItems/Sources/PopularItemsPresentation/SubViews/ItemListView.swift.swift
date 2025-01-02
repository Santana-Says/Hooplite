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
        VStack(alignment: .leading) {
            VStack {
                AsyncImage(url: URL(string: item.imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    Image(systemName: "movieclapper.fill")
                        .resizable()
                        .scaledToFit()
                }
            }
            
            Group {
                HStack {
                    Image(systemName: "video.fill")
                    Text(item.contentType.capitalized)
                }
                
                Text(item.title.capitalized)
                    .font(.title3)
                    .bold()
                    .lineLimit(2, reservesSpace: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(item.author)
            }.padding(.horizontal)
        }
        .frame(maxHeight: 200)
    }
}

#Preview {
    ItemListView(item: PopularItem(author: "Mark Twain", contentType: "audiobook", id: 1, imageUrl: "", title: "The grinch"))
}
