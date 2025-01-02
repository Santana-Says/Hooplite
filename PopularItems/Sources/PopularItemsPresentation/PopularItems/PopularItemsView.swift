import SwiftUI

public struct PopularItemsView: View {
    @StateObject private var viewModel = PopularItemsViewModel()
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    public init() {
        
    }
    
    public var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.popularItems) { item in
                    ItemListView(item: item)
                }
            }
            .padding()
        }
    }
}

#Preview {
    PopularItemsView()
}
