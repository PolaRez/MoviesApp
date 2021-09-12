//
//  MoviesModel.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import Foundation

struct Movies:Decodable {
    let movies: [MovieData]
}

struct MovieData: Decodable {
    let group: String
    let title: String
}
