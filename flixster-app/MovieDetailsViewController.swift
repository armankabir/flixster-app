//
//  MovieDetailsViewController.swift
//  flixster-app
//
//  Created by Arman Kabir on 10/30/20.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    //Outlets for MovieDetailsViewController
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie : [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        let baseURL = "https://image.tmdb.org/t/p/w154"
        let posterPath = movie["poster_path"] as! String
        let imgURL = URL(string: baseURL+posterPath)
        posterImage.af.setImage(withURL: imgURL!)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780"+backdropPath)
        backdropImage.af.setImage(withURL: backdropURL!)
        
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
