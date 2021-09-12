//
//  UsersViewModel.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import Foundation

class UsersViewModel: NSObject {
    private var isUserLogedIn = false //userdefaults
    
    func readFromFile() {
        DataManager.shared.getUsersFromJson()
    }
    
    func checkUser(_ name: String, and password: String) -> Bool {
        return DataManager.shared.checkUser(name, and: password)
    }
    
    func checkIfUserLogedIn() -> Bool {
        return DataManager.shared.IsUserLogedIn()
    }
}
