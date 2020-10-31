//
//  MovieGridViewController.swift
//  flixster-app
//
//  Created by Arman Kabir on 10/30/20.
//

import UIKit
import AlamofireImage

class MovieGridViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate   {

    
    @IBOutlet weak var collectionView: UICollectionView!
    var movies = [[String:Any]]()
    override func viewDidLoad() {
        super.viewDidLoad()
         
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        //Layout setup for Collection View
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 0          //this line does not work
        layout.minimumInteritemSpacing = 0    //this line does not work
        let width = view.frame.size.width/2
        layout.itemSize = CGSize(width: width, height: width*1.5)
        
        
        //Network Request
        let url = URL(string: "https://api.themoviedb.org/3/movie/297762/similar?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
 
              // TODO: Get the array of movies
              // TODO: Store the movies in a property to use elsewhere
              // TODO: Reload your table view data
            self.movies = dataDictionary["results"] as! [[String:Any]]
            self.collectionView.reloadData()    
            //print("Movie count is: \(self.movies.count)")\
            print(self.movies)
           }
        }
        task.resume()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //print("Movie count is: \(movies.count)")
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        
        let movie = movies[indexPath.item]
        
        let baseURL = "https://image.tmdb.org/t/p/w154"
        let posterPath = movie["poster_path"] as! String
        let imgURL = URL(string: baseURL+posterPath)
        print(imgURL!)
        cell.posterView.af.setImage(withURL: imgURL!)
        return cell
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
