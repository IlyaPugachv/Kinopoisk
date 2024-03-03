import UIKit
import Alamofire

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    static func getCollectionsFilms(completion: @escaping (Result<MovieRandom, Error>) -> Void) {
        let url = "\(APIConstans.request)v1.4/movie/random?notNullFields=name&notNullFields=poster.url&type=movie"
        let headers: HTTPHeaders = ["X-API-KEY" : APIConstans.myAPI]
        AF.request(url, method: .get, encoding: JSONEncoding.default, headers: headers).response { response in
            switch response.result {
            case .success(let data):
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(MovieRandom.self, from: data)
                        completion(.success(result))
                    } catch {
                        print("Ошибка декодирования: \(error)")
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                print("Ошибка при выполнении запроса: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}

