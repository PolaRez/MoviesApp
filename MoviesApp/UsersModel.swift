//
//  UsersModel.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import Foundation

struct Users: Decodable {
    let users: [UserData]
}

struct UserData: Decodable {
    let email: String
    let password: String
}
