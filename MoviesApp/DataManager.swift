//
//  DataManager.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import Foundation

class DataManager {
    private let usersFileName = "users"
    private var usersDictionary = [String: String]()
    private var isUserLogedIn = false //userdefaults
    
    static let shared = DataManager()
    
    private func readLocalJSON(_ fileName: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: fileName, ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
    private func parseUsersToObjects(from data: Data) {
        let decoder = JSONDecoder()
        do{
            let users = try decoder.decode(Users.self, from: data)
            users.users.forEach { user in
                usersDictionary[user.email] = user.password
            }
            print(usersDictionary)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getUsersFromJson() {
        guard let dataFromUsersJson = readLocalJSON(usersFileName) else {
            return
        }
        parseUsersToObjects(from: dataFromUsersJson)
    }
}

extension DataManager {
    func checkUser(_ name: String, and password: String) -> Bool {
        if let _ = usersDictionary[name] {
            if usersDictionary[name] == password {
                updateUserStatus(true)
                return true
            }
        }
        updateUserStatus(false)
        return false
    }
    
    private func updateUserStatus(_ isLogedIn: Bool) {
        isUserLogedIn = isLogedIn
    }
    
    func IsUserLogedIn() -> Bool {
        return isUserLogedIn
    }
}
