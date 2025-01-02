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
    
    func getData<T: Decodable>(urlString: String) async throws -> T {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        print("Fetching data from \(urlString)...")
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
