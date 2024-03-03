import UIKit
import Alamofire

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    static func getCollectionsFilms(completion: @escaping (Result<MovieRandom, Error>) -> Void) {
        let url = "https://api.kinopoisk.dev/v1.4/movie/random?id=string"
        let headers: HTTPHeaders = ["X-API-KEY" : APIConstans.myAPI]
        AF.request(url, method: .get, encoding: JSONEncoding.default, headers: headers).response { response in
            switch response.result {
            case .success(let data):
                if let data = data, let jsonString = String(data: data, encoding: .utf8) {
                    print("Полученные данные: \(jsonString)")
                    do {
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(MovieRandom.self, from: data)
                        print("Успешно декодированные данные: \(result)")
                        completion(.success(result))
                    } catch {
                        print("Ошибка декодирования: \(error)")
                        completion(.failure(error))
                    }
                    
                    
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
