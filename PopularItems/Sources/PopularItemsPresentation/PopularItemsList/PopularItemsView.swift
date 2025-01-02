import PopularItemsDomain
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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.popularItems) { item in
                        NavigationLink(value: item) {
                            ItemListView(item: item)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationDestination(for: PopularItem.self) { item in
                PopularItemDetailsView()
            }
            .navigationTitle("Popular Items")
            .task {
                await viewModel.getPopularItems()
            }
        }
    }
}

#Preview {
    PopularItemsView()
}
