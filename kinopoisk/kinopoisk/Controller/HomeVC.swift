import UIKit
import Kingfisher

final class HomeVC: UIViewController, UITableViewDataSource {

    var tableView: UITableView!
    var movies: [MovieRandom] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.dataSource = self
        tableView.register(MovieTableViewCell.self, forCellReuseIdentifier: "MovieTableViewCell")
        view.addSubview(tableView)
        
        loadRandomMovies()
    }

    // Функция загрузки случайных фильмов из API Кинопоиска
    func loadRandomMovies() {
        NetworkManager.getCollectionsFilms { result in
            switch result {
            case .success(let movieRandom):
                // Обновляем массив фильмов и перезагружаем таблицу для отображения новых данных
                self.movies.append(contentsOf: [movieRandom])
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                // Обрабатываем ошибку загрузки данных
                print("Ошибка при загрузке данных: \(error.localizedDescription)")
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell

        let movie = movies[indexPath.row]
        cell.movieTitleLabel.text = movie.name

        if let posterUrlString = movie.poster?.previewUrl, let url = URL(string: posterUrlString) {
            cell.movieImageView.kf.setImage(with: url)
        }
        return cell
    }
}

