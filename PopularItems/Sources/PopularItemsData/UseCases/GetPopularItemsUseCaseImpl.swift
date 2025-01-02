import CoreDomain
import Foundation
import PopularItemsDomain

struct GetPopularItemsUseCaseImpl: GetPopularItemsUseCase {
    let getURLDataUseCase: GetURLDataUseCase
    
    init(getURLDataUseCase: GetURLDataUseCase) {
        self.getURLDataUseCase = getURLDataUseCase
    }
    
    func invoke() async throws -> PopularItemsResponse {
        try await getURLDataUseCase.invoke(urlString: "https://midwest-tape.github.io/iOS-coding-challenge/popular.json")
    }
}
