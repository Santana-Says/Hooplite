//
//  SwiftUIView.swift
//  PopularItems
//
//  Created by Jeffrey Santana on 1/2/25.
//

import SwiftUI

struct PopularItemDetailsView: View {
    @StateObject private var viewModel = PopularItemDetailsViewModel()
    
    var body: some View {
        if let itemDetails = viewModel.itemDetails {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    VStack {
                        Text(itemDetails.title.capitalized)
                            .font(.title)
                            .bold()
                            .lineLimit(2, reservesSpace: true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        AsyncImage(url: URL(string: itemDetails.imageUrl)) { image in
                            image.resizable()
                        } placeholder: {
                            createImagePlaceholder()
                        }
                        
                        HStack {
                            Image(systemName: "video.fill")
                            Text(itemDetails.contentType.capitalized)
                        }
                    }
                    
                    HStack {
                        Text("Author:")
                            .bold()
                        Text(itemDetails.author)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Synopsis:")
                            .bold()
                        Text(itemDetails.synopsis)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    func createImagePlaceholder() -> some View {
        Image(systemName: "movieclapper.fill")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    PopularItemDetailsView()
}
