import CoreDomain
import Foundation

struct GetJSONDataUseCaseImpl: GetJSONDataUseCase {
    func invoke<T: Decodable>(from fileName: String) -> Result<T, Error> {
        DataService().getJSONData(from: fileName)
    }
}
