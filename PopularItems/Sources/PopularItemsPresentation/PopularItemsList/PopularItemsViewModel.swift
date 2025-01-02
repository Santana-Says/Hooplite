import PopularItemsDomain
import SwiftUI

@MainActor
class PopularItemsViewModel: ObservableObject {
    @Published var popularItems: [PopularItem] = []
    
    init() {
        
    }
    
    func getPopularItems() async {
        guard let getPopularItemsUseCase = PopularItemsPresentationDependencies.sharedContainer.resolve(GetPopularItemsUseCase.self) else {
            return
        }
        
        do {
            let response = try await getPopularItemsUseCase.invoke()
            popularItems = response.popular
        } catch {
            print("Failed to load data: \(error.localizedDescription)")
        }
    }
}
