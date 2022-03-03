//
//  ViewController.swift
//  FlixAppCP
//
//  Created by Antonella on 2/20/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var movieTableView: UITableView!
    private var movies = [Movie]() {
        didSet {
            movieTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
        movieTableView.delegate = self
        MovieService.shared.fetchMovies{ movies in
            self.movies = movies
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as? MovieTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(with: movies[indexPath.row])
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // find the selcted movie
        let cell = sender as! UITableViewCell
        let indexPath = movieTableView.indexPath(for: cell)!
        let movie = movies[indexPath.row]
        
        //pass selected movie to the details view controller
//        let detailsViewController = segue.destination as! MovieDetailsViewController
//        detailsViewController.movie = movie
        
    }
}

