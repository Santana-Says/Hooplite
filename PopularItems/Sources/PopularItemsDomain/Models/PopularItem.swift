public struct PopularItem: Decodable {
    public let author: String
    public let contentType: String
    public let id: Int
    public let imageUrl: String
    public let title: String
    
    public init(author: String, contentType: String, id: Int, imageUrl: String, title: String) {
        self.author = author
        self.contentType = contentType
        self.id = id
        self.imageUrl = imageUrl
        self.title = title
    }
}
