import Foundation

public protocol GetJSONDataUseCase {
    func invoke<T: Decodable>(from fileName: String) -> Result<T, Error>
}
