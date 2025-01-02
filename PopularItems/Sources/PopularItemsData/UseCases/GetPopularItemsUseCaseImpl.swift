import CoreDomain
import Foundation
import PopularItemsDomain

struct GetPopularItemsUseCaseImpl: GetPopularItemsUseCase {
    let getJSONDataUseCase: GetJSONDataUseCase
    
    
    init(getJSONDataUseCase: GetJSONDataUseCase) {
        self.getJSONDataUseCase = getJSONDataUseCase
    }
    
    func invoke() -> Result<[PopularItem], Error> {
        getJSONDataUseCase.invoke(from: "PopularItemsJSON")
    }
}
