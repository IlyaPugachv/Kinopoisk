import UIKit

class MovieTableViewCell: UITableViewCell {
    
    let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill // Чтобы изображение красиво заполняло свою область
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let movieTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0 // Для многострочного текста
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(movieImageView)
        addSubview(movieTitleLabel)
        
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        movieTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Настройка автолейаута
        NSLayoutConstraint.activate([
            // Констрейнты для imageView
            movieImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            movieImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            movieImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            movieImageView.widthAnchor.constraint(equalTo: movieImageView.heightAnchor),
            
            // Констрейнты для titleLabel
            movieTitleLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 10),
            movieTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            movieTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            movieTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        movieImageView.image = nil
        movieTitleLabel.text = ""
    }
}

