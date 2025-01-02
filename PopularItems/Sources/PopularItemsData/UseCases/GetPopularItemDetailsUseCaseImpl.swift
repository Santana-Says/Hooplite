import CoreDomain
import Foundation
import PopularItemsDomain

struct GetPopularItemDetailsUseCaseImpl: GetPopularItemDetailsUseCase {
    let getURLDataUseCase: GetURLDataUseCase
    
    
    init(getURLDataUseCase: GetURLDataUseCase) {
        self.getURLDataUseCase = getURLDataUseCase
    }
    
    func invoke(itemId: Int) async throws -> PopularItemDetailsResponse {
        try await getURLDataUseCase.invoke(urlString: "https://midwest-tape.github.io/iOS-coding-challenge/title/\(itemId).json")
    }
}
