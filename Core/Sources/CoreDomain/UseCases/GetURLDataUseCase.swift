import Foundation

public protocol GetURLDataUseCase {
    func invoke<T: Decodable>(urlString: String) async throws -> T
}
