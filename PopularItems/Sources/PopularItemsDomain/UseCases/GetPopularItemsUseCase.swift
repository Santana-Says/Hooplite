import Foundation

public protocol GetPopularItemsUseCase {
    func invoke() -> Result<[PopularItem], Error>
}
