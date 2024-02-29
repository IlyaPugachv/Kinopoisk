import UIKit

struct MovieRandom: Codable {
    let id: String?
    let externalId: [ExternalId]?
    let name: String?
    let alternativeName: String?
    let enName: String?
    let names: [Name]?
    let type: String?
    let typeNumber: String?
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
