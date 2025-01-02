import CoreDomain
import Foundation
import PopularItemsDomain

struct GetPopularItemDetailsUseCaseImpl: GetPopularItemDetailsUseCase {
    let getJSONDataUseCase: GetJSONDataUseCase
    
    
    init(getJSONDataUseCase: GetJSONDataUseCase) {
        self.getJSONDataUseCase = getJSONDataUseCase
    }
    
    func invoke() -> Result<PopularItemDetails, Error> {
        getJSONDataUseCase.invoke(from: "PopularItemDetailsJSON")
    }
}
