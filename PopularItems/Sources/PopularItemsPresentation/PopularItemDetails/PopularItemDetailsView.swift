import SwiftUI

struct PopularItemDetailsView: View {
    @StateObject private var viewModel = PopularItemDetailsViewModel()
    
    let itemId: Int
    
    init(itemId: Int) {
        self.itemId = itemId
    }
    
    var body: some View {
        ScrollView {
            if let itemDetails = viewModel.itemDetails {
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
        .task {
            await viewModel.getPopularItemDetails(itemId: itemId)
        }
    }
    
    func createImagePlaceholder() -> some View {
        Image(systemName: "movieclapper.fill")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    PopularItemDetailsView(itemId: 0)
}
