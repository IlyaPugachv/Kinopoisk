import UIKit

struct SearchCollectionsFilms {
    let docs: [Docs]?
}

struct Docs {
    let category: String?
    let slug: String?
    let moviesCount: Int?
    let cover: [Cover]?
    let name: String?
    let updatedAt: String?
    let createdAt: String?
}

struct Cover {
    let url: String?
    let previewUrl: String?
}
