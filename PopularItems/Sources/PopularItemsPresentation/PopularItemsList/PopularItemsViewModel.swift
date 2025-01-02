import PopularItemsDomain
import SwiftUI

class PopularItemsViewModel: ObservableObject {
    @Published var popularItems: [PopularItem] = []
    private var getPopularItemsUseCase: GetPopularItemsUseCase?
    
    init() {
        getPopularItems()
    }
    
    private func getPopularItems() {
        guard let getPopularItemsUseCase = PopularItemsPresentationDependencies.sharedContainer.resolve(GetPopularItemsUseCase.self) else {
            return
        }
        
        let result = getPopularItemsUseCase.invoke()
        
        switch result {
            case .success(let popularItems):
                self.popularItems = popularItems
            case .failure(let error):
                // TODO: create error message
                print(error)
                break
        }
    }
}
