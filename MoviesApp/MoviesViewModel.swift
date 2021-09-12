//
//  MoviesViewModel.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import Foundation

class MoviesViewModel {
    private let dataManager = DataManager()
    private var moviesArray = [[MovieObject]]()
    
    func readFromFile(name:String) {
//        guard let dataFromMoviesJson = dataManager.readLocalJSON(name) else {
//            return
//        }
//        parseJson(data: dataFromMoviesJson)
    }
    
    private func parseJson(data: Data) {
        let decoder = JSONDecoder()
        do{
            let movies = try decoder.decode(Movies.self, from: data)
            movies.movies.forEach { movie in
            }
//            moviesArray.sort { $0.group < $1.group }
            print(moviesArray)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
