//
//  MovieTableViewCell.swift
//  FlixAppCP
//
//  Created by Antonella on 2/22/22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.name
        movieLabel.text = movie.description
        //moviePoster.text = movie.posterURL
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie.moviePosterSubPath;
        let posterURL = URL(string: baseURL + posterPath)
    }
}
