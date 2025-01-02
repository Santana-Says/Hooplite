import PopularItemsDomain
import SwiftUI

@MainActor
class PopularItemDetailsViewModel: ObservableObject {
    @Published var itemDetails: PopularItemDetails?
    
    init() {
        
    }
    
    func getPopularItemDetails(itemId: Int) async {
        guard let getPopularItemDetailsUseCase = PopularItemsPresentationDependencies.sharedContainer.resolve(GetPopularItemDetailsUseCase.self) else {
            return
        }
        
        do {
            let response = try await getPopularItemDetailsUseCase.invoke(itemId: itemId)
            itemDetails = response.title
        } catch {
            print("Failed to load data: \(error.localizedDescription)")
        }
    }
}
