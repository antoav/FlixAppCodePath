//
//  MovieDetailsViewController.swift
//  FlixAppCP
//
//  Created by Antonella on 3/3/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie.name
        descriptionLabel.text = movie.description
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie.moviePosterSubPath;
        let posterURL = URL(string: baseURL + posterPath)
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + movie.backdropPath)
        //moviePoster.text = movie.posterURL
        backdropImageView.af_setImage(withURL: backdropURL!)
        posterImageView.af_setImage(withURL: posterURL!)
        
        // Do any additional setup after loading the view.
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
