import UIKit

struct MovieRandom: Codable {
    let id: Int?
    let externalId: ExternalId?
    let name: String?
    let alternativeName: String?
    let enName: String?
    let names: [Name]?
    let type: String?
    let typeNumber: Int?
    let year: Double?
    let description: String?
    let shortDescription: String?
    let slogan: String?
    let status: String?
    let facts: [Facts]?
    let rating: Rating?
    let movieLength: Int?
    let ratingMpaa: String?
    let ageRating: Int?
    let logo: Logo?
    let poster: Poster?
    let backdrop: Backdrop?
    let videos: Videos?
    let genres: [Genres]?
    let countries: [Countries]?
    let persons: [Persons]?
    let reviewInfo: ReviewInfo?
    let seasonsInfo: [SeasonsInfo]?
    let budget: Budget?
    let fees: Fees?
    let similarMovies: [SimilarMovies]?
}

//{
//  "id": 666,
//  "externalId": {
//    "kpHD": "48e8d0acb0f62d8585101798eaeceec5",
//    "imdb": "tt0232500",
//    "tmdb": 9799
//  },
//  "name": "Человек паук",
//  "alternativeName": "Spider man",
//  "enName": "Spider man",
//  "names": [
//    {
//      "name": "string",
//      "language": "string",
//      "type": "string"
//    }
//  ],
//  "type": "movie",
//  "typeNumber": 1,
//  "year": 2023,
//  "description": "string",
//  "shortDescription": "string",
//  "slogan": "string",
//  "status": "completed",
//  "facts": [
//    {
//      "value": "string",
//      "type": "string",
//      "spoiler": true
//    }
//  ],
//  "rating": {
//    "kp": 6.2,
//    "imdb": 8.4,
//    "tmdb": 3.2,
//    "filmCritics": 10,
//    "russianFilmCritics": 5.1,
//    "await": 6.1
//  },
//  "votes": {
//    "kp": "60000",
//    "imdb": 50000,
//    "tmdb": 10000,
//    "filmCritics": 10000,
//    "russianFilmCritics": 4000,
//    "await": 34000
//  },
//  "movieLength": 120,
//  "ratingMpaa": "pg13",
//  "ageRating": 16,
//  "logo": {
//    "url": "string"
//  },
//  "poster": {
//    "url": "string",
//    "previewUrl": "string"
//  },
//  "backdrop": {
//    "url": "string",
//    "previewUrl": "string"
//  },
//  "videos": {
//    "trailers": [
//      {
//        "url": "https://www.youtube.com/embed/ZsJz2TJAPjw",
//        "name": "Official Trailer",
//        "site": "youtube",
//        "size": 0,
//        "type": "TRAILER"
//      }
//    ]
//  },
//  "genres": [
//    {
//      "name": "string"
//    }
//  ],
//  "countries": [
//    {
//      "name": "string"
//    }
//  ],
//  "persons": [
//    {
//      "id": 6317,
//      "photo": "https://st.kp.yandex.net/images/actor_iphone/iphone360_6317.jpg",
//      "name": "Пол Уокер",
//      "enName": "Paul Walker",
//      "description": "string",
//      "profession": "string",
//      "enProfession": "string"
//    }
//  ],
//  "reviewInfo": {
//    "count": 0,
//    "positiveCount": 0,
//    "percentage": "string"
//  },
//  "seasonsInfo": [
//    {
//      "number": 0,
//      "episodesCount": 0
//    }
//  ],
//  "budget": {
//    "value": 207283,
//    "currency": "€"
//  },
//  "fees": {
//    "world": {
//      "value": 207283,
//      "currency": "€"
//    },
//    "russia": {
//      "value": 207283,
//      "currency": "€"
//    },
//    "usa": {
//      "value": 207283,
//      "currency": "€"
//    }
//  },
//  "premiere": {
//    "country": "США",
//    "world": "2023-02-25T02:44:39.359Z",
//    "russia": "2023-02-25T02:44:39.359Z",
//    "digital": "string",
//    "cinema": "2023-02-25T02:44:39.359Z",
//    "bluray": "string",
//    "dvd": "string"
//  },
//  "similarMovies": [
//    {
//      "id": 0,
//      "name": "string",
//      "enName": "string",
//      "alternativeName": "string",
//      "type": "string",
//      "poster": {
//        "url": "string",
//        "previewUrl": "string"
//      },
//      "rating": {
//        "kp": 6.2,
//        "imdb": 8.4,
//        "tmdb": 3.2,
//        "filmCritics": 10,
//        "russianFilmCritics": 5.1,
//        "await": 6.1
//      },
//      "year": 2021
//    }
//  ],
//  "sequelsAndPrequels": [
//    {
//      "id": 0,
//      "name": "string",
//      "enName": "string",
//      "alternativeName": "string",
//      "type": "string",
//      "poster": {
//        "url": "string",
//        "previewUrl": "string"
//      },
//      "rating": {
//        "kp": 6.2,
//        "imdb": 8.4,
//        "tmdb": 3.2,
//        "filmCritics": 10,
//        "russianFilmCritics": 5.1,
//        "await": 6.1
//      },
//      "year": 2021
//    }
//  ],
//  "watchability": {
//    "items": [
//      {
//        "name": "string",
//        "logo": {
//          "url": "string"
//        },
//        "url": "string"
//      }
//    ]
//  },
//  "releaseYears": [
//    {
//      "start": 2022,
//      "end": 2023
//    }
//  ],
//  "top10": 1,
//  "top250": 200,
//  "ticketsOnSale": true,
//  "totalSeriesLength": 155,
//  "seriesLength": 20,
//  "isSeries": true,
//  "audience": [
//    {
//      "count": 1000,
//      "country": "Россия"
//    }
//  ],
//  "lists": [
//    "250 лучших сериалов"
//  ],
//  "networks": {
//    "items": [
//      {
//        "name": "Netflix",
//        "logo": {
//          "url": "string"
//        }
//      }
//    ]
//  },
//  "updatedAt": "2024-03-03T10:04:54.776Z",
//  "createdAt": "2024-03-03T10:04:54.776Z"
//}

struct ExternalId: Codable {
    let kpHD: String?
    let imdb: String?
    let tmdb: Double?
}

struct Name: Codable {
    let name: String?
    let language: String?
    let type: String?
}

struct Facts: Codable {
    let value: String?
    let type: String?
    let spoiler: Bool
}

struct Rating: Codable {
    let kp: Double?
    let imdb: Double?
    let tmdb: Double?
    let filmCritics: Int?
    let russianFilmCritics: Double?
    let await: Double?
}

struct Logo: Codable {
    let url: String?
}

struct Poster: Codable {
    let url: String?
    let previewUrl: String?
}

struct Backdrop: Codable  {
    let url: String?
    let previewUrl: String?
}

struct Videos: Codable  {
    let trailers: [Trailers]
}

struct Trailers: Codable  {
    let url: String?
    let name: String?
    let site: String?
    let size: Int?
    let type: String?
}

struct Genres: Codable  {
    let name: String?
}

struct Countries: Codable  {
    let name: String?
}

struct Persons: Codable  {
    let id: Int?
    let photo: String?
    let name: String?
    let enName: String?
    let description: String?
    let professions: String?
    let enProfession: String?
}

struct ReviewInfo: Codable  {
    let count: Int?
    let positiveCount: Int?
    let percentage: String?
}

struct SeasonsInfo: Codable  {
    let number: Int?
    let episodesCount: Int?
}

struct Budget: Codable  {
    let value: Double?
    let currency: String?
}

struct Fees: Codable  {
    let world: World?
}

struct World: Codable  {
    let value: Double?
    let currency: String?
}

struct SimilarMovies: Codable  {
    let id: Int?
    let name: String?
    let enName: String?
    let alternativeName: String?
    let type: String?
    let poster: Poster?
}

