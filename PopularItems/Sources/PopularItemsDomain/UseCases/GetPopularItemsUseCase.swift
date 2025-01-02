import Foundation

public protocol GetPopularItemsUseCase {
    func invoke() async throws -> PopularItemsResponse
}
