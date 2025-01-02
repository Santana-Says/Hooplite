import Foundation

public protocol GetPopularItemDetailsUseCase {
    func invoke() -> Result<PopularItemDetails, Error>
}
