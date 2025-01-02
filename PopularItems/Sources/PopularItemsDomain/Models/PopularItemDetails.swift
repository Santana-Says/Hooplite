public struct PopularItemDetails: Decodable, Identifiable, Sendable {
    public let author: String
    public let contentType: String
    public let id: Int
    public let imageUrl: String
    public let synopsis: String
    public let title: String
    
    enum CodingKeys: String, CodingKey {
        case author, id, title, synopsis
        case contentType = "content_type"
        case imageUrl = "image_url"
    }
    
    public init(author: String, contentType: String, id: Int, imageUrl: String, synopsis: String, title: String) {
        self.author = author
        self.contentType = contentType
        self.id = id
        self.imageUrl = imageUrl
        self.synopsis = synopsis
        self.title = title
    }
}
