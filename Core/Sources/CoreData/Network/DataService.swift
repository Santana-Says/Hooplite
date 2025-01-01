import Foundation

class DataService {
    func getJSONData<T: Decodable>(from fileName: String) -> Result<T, Error> {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return .failure(URLError(.fileDoesNotExist))
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return .success(decodedData)
        } catch {
            return .failure(error)
        }
    }
}
