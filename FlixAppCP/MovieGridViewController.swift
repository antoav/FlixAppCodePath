//
//  MovieGridViewController.swift
//  FlixAppCP
//
//  Created by Antonella on 3/4/22.
//

import UIKit

class MovieGridViewController: UIViewController {

    private var movies = [[String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://api.themoviedb.org/3/movie/297762/similar?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             // This will run when the network request returns
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
                    let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                 self.movies = dataDictionary["results"] as! [[String: Any]]
//                 var movies = [Movie]()
//                 for rawData in moviesRawData {
//                     let movie = Movie(name: rawData["original_title"] as! String,
//                                       description: rawData["overview"] as! String,
//                                       moviePosterSubPath: rawData["poster_path"] as! String,
//                                       backdropPath: rawData["backdrop_path"] as! String)
                     
//                     movies.append(movie)
//                 }
                 print(self.movies)
             }
        }
        task.resume()
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
