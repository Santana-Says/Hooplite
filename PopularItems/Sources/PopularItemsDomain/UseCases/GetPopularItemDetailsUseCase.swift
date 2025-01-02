import Foundation

public protocol GetPopularItemDetailsUseCase {
    func invoke(itemId: Int) async throws -> PopularItemDetailsResponse
}
